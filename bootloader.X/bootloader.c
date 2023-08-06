#include "autoconf.h"
#include "p33FJ128MC706A.h"

/*
 * Configure oscillator
 * Fosc = Fin * M / (N1 * N2)
 * Fcy  = Fosc / 2
 */
#define PLL_PRE_VALUE   (CONFIG_CLK_SOURCE_MHZ * 1000000UL) / CONFIG_CLK_PLL_PRE
#if (PLL_PRE_VALUE < 800000UL) || (PLL_PRE_VALUE > 8000000UL)
    #error "Invalid PLLPRE value (0.8 - 8.0MHz)"
#endif

#define VCO_VALUE       (PLL_PRE_VALUE * CONFIG_CLK_PLL_MULTIPLIER)
#if (VCO_VALUE < 100000000UL) || (VCO_VALUE > 200000000UL)
    #error "Invalid PLL Multiplier value.  F_VCO valid range is 100 - 200MHz"
#endif

#if CONFIG_CLK_PLL_POST_DIV2
    #define FOSC_VALUE      (VCO_VALUE / 2)
#elif CONFIG_CLK_PLL_POST_DIV4
    #define FOSC_VALUE      (VCO_VALUE / 4)
#elif CONFIG_CLK_PLL_POST_DIV8
    #define FOSC_VALUE      (VCO_VALUE / 8)
#endif
#if (FOSC_VALUE < 12500000UL) || (FOSC_VALUE > 80000000UL)
    #error "Invalid PLLPOST value. Fosc is outside 12.5MHz - 80MHz"
#endif
#define FCY_VALUE       (FOSC_VALUE / 2)

#define CO_FCY          (FCY_VALUE / 1000UL)  // Unit is kHz

#include "CANopen.h"
#include "OD.h"
#include "../302/CO_Prog_dsPIC33.h"

//=================================================================================================
// DSPIC33FJ128MC706A Configuration Bit Settings
// 'C' source line config statements
//=================================================================================================
// FBS
#pragma config BWRP = WRPROTECT_OFF     // Boot Segment Write Protect (Boot Segment may be written)
#pragma config BSS = NO_FLASH           // Boot Segment Program Flash Code Protection (No Boot program Flash segment)
#pragma config RBS = NO_RAM             // Boot Segment RAM Protection (No Boot RAM)
// FSS
#pragma config SWRP = WRPROTECT_OFF     // Secure Segment Program Write Protect (Secure Segment may be written)
#pragma config SSS = NO_FLASH           // Secure Segment Program Flash Code Protection (No Secure Segment)
#pragma config RSS = NO_RAM             // Secure Segment Data RAM Protection (No Secure RAM)
// FGS
#pragma config GWRP = OFF               // General Code Segment Write Protect (User program memory is not write-protected)
#pragma config GSS = OFF                // General Segment Code Protection (User program memory is not code-protected)
// FOSCSEL
#pragma config FNOSC = PRIPLL           // Oscillator Mode (Primary Oscillator (XT, HS, EC) w/ PLL)
#pragma config IESO = OFF               // Two-speed Oscillator Start-Up Enable (Start up with user-selected oscillator)
// FOSC
#pragma config POSCMD = XT              // Primary Oscillator Source (XT Oscillator Mode)
#pragma config OSCIOFNC = OFF           // OSC2 Pin Function (OSC2 pin has clock out function)
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-Safe Clock Monitor are disabled)
// FWDT
#pragma config WDTPOST = PS32768        // Watchdog Timer Postscaler (1:32,768)
#pragma config WDTPRE = PR128           // WDT Prescaler (1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Watchdog Timer in Non-Window mode)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog timer enabled/disabled by user software)
// FPOR
#pragma config FPWRT = PWR128           // POR Timer Value (128ms)
#pragma config LPOL = ON                // Low-side PWM Output Polarity (Active High)
#pragma config HPOL = ON                // Motor Control PWM High Side Polarity bit (PWM module high side output pins have active-high output polarity)
#pragma config PWMPIN = ON              // Motor Control PWM Module Pin Mode bit (PWM module pins controlled by PORT register at device Reset)
// FICD
#pragma config ICS = PGD1               // Comm Channel Select (Communicate on PGC1/EMUC1 and PGD1/EMUD1)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG is Disabled)

#define NMT_CONTROL   CO_NMT_STARTUP_TO_OPERATIONAL   \
                      | CO_NMT_ERR_ON_ERR_REG         \
                      | CO_ERR_REG_GENERIC_ERR        \
                      | CO_ERR_REG_COMMUNICATION
#define FIRST_HB_TIME 500
#define SDO_SRV_TIMEOUT_TIME 1000
#define SDO_CLI_TIMEOUT_TIME 500
#define SDO_CLI_BLOCK false
#define OD_STATUS_BITS NULL

/* Global variables and objects */
const CO_CANbitRateData_t  CO_CANbitRateData[8] = {CO_CANbitRateDataInitializers};
static CO_t * CO = NULL;
#if CONFIG_CAN1
static void * CANptr = ADDR_CAN1;
#elif CONFIG_CAN2
static void * CANptr = ADDR_CAN2;
#else
#error "Invalid CAN peripheral"
#endif
uint32_t fcy = 0;

int main()
{
    CO_ReturnError_t err = CO_ERROR_NO;
    CO_NMT_reset_cmd_t reset = CO_RESET_NOT;
    uint32_t heapMemoryUsed = 0;
    uint8_t pendingNodeId = 10; /* read from dip switches or nonvolatile memory, configurable by LSS slave */
    uint8_t activeNodeId = 10; /* Copied from CO_pendingNodeId in the communication reset section */
    uint16_t pendingBitRate = 1000;  /* read from dip switches or nonvolatile memory, configurable by LSS slave */
    uint32_t errInfo = 0;
    uint32_t timeDifference_us;

    /*
     * Disable interrupt
     * Bootloader runs without using any interrupt.
     */
    asm volatile ("disi #0x3FFF");
    IEC2bits.C1IE = 0;
    IEC2bits.C1RXIE = 0;


    PLLFBD = CONFIG_CLK_PLL_MULTIPLIER - 2;
    CLKDIVbits.PLLPOST = CONFIG_CLK_PLL_POST;
    CLKDIVbits.PLLPRE = CONFIG_CLK_PLL_PRE - 2;
    OSCTUN = 0;             // Tune FRC oscillator, if FRC is used
    while(OSCCONbits.LOCK != 1);

    /*
     * Determine Bootloader Mode
     */
    /// TODO

    /*
     * Allocate CANopen object
     */
    CO = CO_new(NULL, &heapMemoryUsed);
    if(CO == NULL) {
        while(1);
    }

    while(reset != CO_RESET_APP) {
        /*
         * CANopen communication reset - initialize CANopen objects
         */
        err = CO_CANinit(CO, CANptr, pendingBitRate);
        if(err != CO_ERROR_NO) {
            while(1);
        }

        activeNodeId = pendingNodeId;
        err = CO_CANopenInit(CO,    // CANopen object
                             NULL,  // alternate NMT
                             NULL,  // alternate em
                             OD,    // object dictionary
                             NULL,  // Optional OD statusBits
                             NMT_CONTROL,
                             FIRST_HB_TIME,
                             SDO_SRV_TIMEOUT_TIME,
                             SDO_CLI_TIMEOUT_TIME,
                             SDO_CLI_BLOCK,
                             activeNodeId,
                             &errInfo);
        if(err != CO_ERROR_NO) {
            while(1);
        }

        /* Start CAN */
        CO_CANsetNormalMode(CO->CANmodule);
        reset = CO_RESET_NOT;

        err = CO_Prog_dsPIC33_init(CO->CANmodule);

        /* Configure Timer interrupt function for execution every 1 millisecond */
        T2CON = 0;
        TMR2 = 0;
        PR2 = CO_FCY - 1;       /* Period register */
        IFS0bits.T2IF = 0;
        T2CON = 0x8000;         /* start timer (TON=1) */

        while(reset == CO_RESET_NOT) {
            if(IFS2bits.C1IF == 1) {
                IFS2bits.C1IF = 0;
                CO_CANinterrupt(CO->CANmodule);
            }

            if(IFS0bits.T2IF == 1) {
                IFS0bits.T2IF = 0;

                if(!CO->nodeIdUnconfigured && CO->CANmodule->CANnormal) {
                    timeDifference_us = 1000;
                    reset = CO_process(CO, false, timeDifference_us, NULL);
                }
            }
        }
    }
    
    return 0;
}