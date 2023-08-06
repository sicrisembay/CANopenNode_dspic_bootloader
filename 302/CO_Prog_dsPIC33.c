#include "CO_Prog_dsPIC33.h"
#include "OD.h"
#include "linker.h"


#define INTEL_HEX_COUNT_OFFSET      (0)
#define INTEL_HEX_ADDRESS_OFFSET    (1)
#define INTEL_HEX_TYPE_OFFSET       (3)
#define INTEL_HEX_DATA_OFFSET       (4)

#define INTEL_HEX_TYPE_DATA         (0)
#define INTEL_HEX_TYPE_EOL          (1)
#define INTEL_HEX_TYPE_EXT_ADDR     (4)


typedef struct {
    OD_extension_t OD_1F50_extensions;
    OD_extension_t OD_1F51_extensions;
    OD_extension_t OD_2000_extensions;
    CO_CANmodule_t * CANmodule;
} CO_Program_t;


static CO_Program_t program;
static uint32_t extendedLinearAddress = 0;


static bool appCrcIsOK(void)
{
    // TODO!
    return true;
}


static ODR_t OD_write_1F50_callback(OD_stream_t * stream,
        const void * buf,
        OD_size_t count,
        OD_size_t * countWritten)
{
    /*
     * Verify arguments
     */
    if((stream == NULL) || (stream->subIndex == 0) || (buf == NULL) ||
       (countWritten == NULL)) {
        return ODR_DEV_INCOMPAT;
    }

    uint8_t * pBuf8 = (uint8_t *)buf;
    /*
     * Calculate Checksum
     */
    uint32_t checksum = 0;
    for(uint16_t i = 0; i < count; i++) {
        checksum += pBuf8[i];
    }
    if((checksum & 0x00FF) != 0) {
        return ODR_HW;
    }
    /*
     * Parse Intel Hex Record
     */
    uint8_t recType = pBuf8[INTEL_HEX_TYPE_OFFSET] & 0x00FF;
    switch(recType) {
        case INTEL_HEX_TYPE_DATA: {
            DWORD_VAL programAddress;
            uint16_t byteLen = (uint16_t)pBuf8[INTEL_HEX_COUNT_OFFSET];
            uint16_t wordLen = byteLen / 2;
            uint32_t addressWordLow = ((((uint16_t)pBuf8[INTEL_HEX_ADDRESS_OFFSET]) << 8) & 0xFF00) +
                                       (((uint16_t)pBuf8[INTEL_HEX_ADDRESS_OFFSET + 1]) & 0x00FF);
            uint32_t address = extendedLinearAddress | addressWordLow;
            programAddress.Val = address / 2;
            if((byteLen == 0) || (wordLen == 0)) {
                break;
            }
            if((byteLen % 4) != 0) {
                /* Expected dword data */
                return ODR_GENERAL;
            }
            for(uint16_t i = 0; i < byteLen; i+=4, programAddress.Val += 2) {
                DWORD_VAL dWord;
                dWord.Val = 0xFFFFFFFF;
                /* Check for programAddress validity */
                if(programAddress.Val < 0x000004) {
                    /* Writing to reset vector not allowed */
                    continue;
                }
                if((programAddress.Val >= BOOT_START_ADDR) &&
                   (programAddress.Val <= FLASH_END_ADDR)){
                    /* Writing to self (bootloader) not allowed */
                    continue;
                }
                if((programAddress.Val >= 0xF80000) &&
                   (programAddress.Val <= 0xF80016)) {
                    /* Writing to configuration not allowed */
                    continue;
                }

                dWord.byte.byte0 = pBuf8[INTEL_HEX_DATA_OFFSET + i + 0];
                dWord.byte.byte1 = pBuf8[INTEL_HEX_DATA_OFFSET + i + 1];
                dWord.byte.byte2 = pBuf8[INTEL_HEX_DATA_OFFSET + i + 2];
                dWord.byte.byte3 = pBuf8[INTEL_HEX_DATA_OFFSET + i + 3];
                NVMCON = 0x4003;
                TBLPAG = programAddress.byte.byte2;
                __builtin_tblwtl(programAddress.word.word0, dWord.word.word0);
                __builtin_tblwth(programAddress.word.word0, dWord.word.word1);
                __builtin_write_NVM();
                while(NVMCONbits.WR);
                if(NVMCONbits.WRERR) {
                    return ODR_HW;
                }
            }
            break;
        }
        case INTEL_HEX_TYPE_EOL: {
            break;
        }
        case INTEL_HEX_TYPE_EXT_ADDR: {
            uint16_t addressWordHigh = ((((uint16_t)pBuf8[INTEL_HEX_DATA_OFFSET]) << 8) & 0xFF00) +
                                        (((uint16_t)pBuf8[INTEL_HEX_DATA_OFFSET + 1]) & 0x00FF);
            extendedLinearAddress = (((uint32_t)addressWordHigh) << 16) & 0xFFFF0000;
            break;
        }
        default: {
            return ODR_GENERAL;
        }
    }
    return ODR_OK;
}


static ODR_t OD_write_1F51_callback(OD_stream_t * stream,
        const void * buf,
        OD_size_t count,
        OD_size_t * countWritten)
{
    /*
     * Verify arguments
     */
    if((stream == NULL) || (stream->subIndex == 0) || (buf == NULL) ||
       (countWritten == NULL)) {
        return ODR_DEV_INCOMPAT;
    }

    switch(stream->subIndex) {
        case 1: {
            uint32_t val = CO_getUint32(buf);
            if(val == 1) {
                if(appCrcIsOK()) {
                    void (*fptr)(void);
                    fptr = (void (*)(void))(uint16_t)APP_START_ADDR;
                    fptr();
                }
            }
            break;
        }
        default: {
            return ODR_DEV_INCOMPAT;
        }
    }
    return ODR_OK;
}


static ODR_t OD_write_2000_callback(OD_stream_t * stream,
        const void * buf,
        OD_size_t count,
        OD_size_t * countWritten)
{
    /*
     * Verify arguments
     */
    if((stream == NULL) || (stream->subIndex == 0) || (buf == NULL) ||
       (countWritten == NULL)) {
        return ODR_DEV_INCOMPAT;
    }

    switch(stream->subIndex) {
        case 1: {
            /* Command */
            uint16_t command = CO_getUint16(buf);
            switch(command) {
                case 0x01: {
                    /* Calculate CRC */
                    if(!appCrcIsOK()) {
                        return ODR_HW;
                    }
                    break;
                }
                case 0x02: {
                    /* Jump to application */
                    if(appCrcIsOK()) {
                        void (*fptr)(void);
                        fptr = (void (*)(void))(uint16_t)APP_START_ADDR;
                        fptr();
                    }
                    break;
                }
                case 0x03: {
                    /* Erase Application Flash */
                    DWORD_VAL eraseAddr;
                    eraseAddr.Val = VECTOR_ADDR;
                    while((eraseAddr.Val + ERASE_BLOCK_SIZE) < BOOT_START_ADDR) {
                        TBLPAG = eraseAddr.byte.byte2;
                        __builtin_tblwtl(eraseAddr.word.word0, 0xFFFF);
                        NVMCON = 0x4042;
                        __builtin_write_NVM();
                        while(NVMCONbits.WR == 1);
                        if(NVMCONbits.WRERR) {
                            return ODR_HW;
                        }
                        eraseAddr.Val += ERASE_BLOCK_SIZE;
                    }
                    /* Write reset address to bootloader */
                    eraseAddr.Val = VECTOR_ADDR;
                    TBLPAG = eraseAddr.byte.byte2;
                    __builtin_tblwtl(eraseAddr.word.word0, (0x0000FFFF & BOOT_START_ADDR));
                    __builtin_tblwth(eraseAddr.word.word0, 0x0004);
                    NVMCON = 0x4003;
                    __builtin_write_NVM();
                    while(NVMCONbits.WR == 1);
                    if(NVMCONbits.WRERR) {
                        return ODR_HW;
                    }

                    eraseAddr.Val = VECTOR_ADDR + 2;
                    __builtin_tblwtl(eraseAddr.word.word0, ((uint32_t)BOOT_START_ADDR) >> 16);
                    __builtin_tblwth(eraseAddr.word.word0, 0);
                    NVMCON = 0x4003;
                    __builtin_write_NVM();
                    while(NVMCONbits.WR == 1);
                    if(NVMCONbits.WRERR) {
                        return ODR_HW;
                    }

                    break;
                }
                default: {
                    return ODR_HW;
                }
            }
            break;
        }
        case 2: {
            /* Sector Mask */
            break;
        }
        default: {
            return ODR_DEV_INCOMPAT;
        }
    }
    return ODR_OK;
}



CO_ReturnError_t CO_Prog_dsPIC33_init(CO_CANmodule_t * pCANmodule)
{
    CO_ReturnError_t ret = CO_ERROR_NO;

    memset(&program, 0, sizeof(program));

    if(pCANmodule == NULL) {
        return CO_ERROR_ILLEGAL_ARGUMENT;
    }

    program.CANmodule = pCANmodule;

    /* Configure 0x1F50 extension */
    program.OD_1F50_extensions.object = &program;
    program.OD_1F50_extensions.read = OD_readOriginal;
    program.OD_1F50_extensions.write = OD_write_1F50_callback;
    OD_extension_init(OD_ENTRY_H1F50_downloadProgramData,
                      &program.OD_1F50_extensions);

    /* Configure 0x1F50 extension */
    program.OD_1F51_extensions.object = &program;
    program.OD_1F51_extensions.read = OD_readOriginal;
    program.OD_1F51_extensions.write = OD_write_1F51_callback;
    OD_extension_init(OD_ENTRY_H1F51_programControl,
                      &program.OD_1F51_extensions);

    /* Configure 0x2000 extension */
    program.OD_2000_extensions.object = &program;
    program.OD_2000_extensions.read = OD_readOriginal;
    program.OD_2000_extensions.write = OD_write_2000_callback;
    OD_extension_init(OD_ENTRY_H2000_bootloader,
                      &program.OD_2000_extensions);

    return ret;
}