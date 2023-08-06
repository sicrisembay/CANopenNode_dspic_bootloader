#ifndef LINKER_H
#define LINKER_H

#include "autoconf.h"

#if CONFIG_dsPIC33FJ128MC706A
#define ERASE_BLOCK_SIZE    0x400
#define VECTOR_ADDR         0x000000
#define APP_START_ADDR      0x000200
#define BOOT_START_ADDR     0x00FC00
#define BOOT_LENGTH         0x5E00
#define FLASH_END_ADDR      0x0157FE
#if !defined(__dsPIC33FJ128MC706A__)
  #error "Expected dsPIC33FJ128MC706A"
#endif
#endif /* CONFIG_dsPIC33FJ128MC706A */

#endif /* LINKER_H */
