/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'lab7_soc'
 * SOPC Builder design path: ../../lab7_soc.sopcinfo
 *
 * Generated: Wed May 06 20:15:07 CDT 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00001020
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1d
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x10000020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x1d
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x10000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00001020
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1d
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x10000020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x1d
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x10000000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_GEN2
#define __ALTPLL
#define __ROOM


/*
 * Reset_s configuration
 *
 */

#define ALT_MODULE_CLASS_Reset_s altera_avalon_pio
#define RESET_S_BASE 0x20
#define RESET_S_BIT_CLEARING_EDGE_REGISTER 0
#define RESET_S_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RESET_S_CAPTURE 0
#define RESET_S_DATA_WIDTH 1
#define RESET_S_DO_TEST_BENCH_WIRING 0
#define RESET_S_DRIVEN_SIM_VALUE 0
#define RESET_S_EDGE_TYPE "NONE"
#define RESET_S_FREQ 50000000
#define RESET_S_HAS_IN 1
#define RESET_S_HAS_OUT 0
#define RESET_S_HAS_TRI 0
#define RESET_S_IRQ -1
#define RESET_S_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RESET_S_IRQ_TYPE "NONE"
#define RESET_S_NAME "/dev/Reset_s"
#define RESET_S_RESET_VALUE 0
#define RESET_S_SPAN 16
#define RESET_S_TYPE "altera_avalon_pio"


/*
 * Room0 configuration
 *
 */

#define ALT_MODULE_CLASS_Room0 altera_avalon_pio
#define ROOM0_BASE 0x200
#define ROOM0_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM0_CAPTURE 0
#define ROOM0_DATA_WIDTH 8
#define ROOM0_DO_TEST_BENCH_WIRING 0
#define ROOM0_DRIVEN_SIM_VALUE 0
#define ROOM0_EDGE_TYPE "NONE"
#define ROOM0_FREQ 50000000
#define ROOM0_HAS_IN 0
#define ROOM0_HAS_OUT 1
#define ROOM0_HAS_TRI 0
#define ROOM0_IRQ -1
#define ROOM0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM0_IRQ_TYPE "NONE"
#define ROOM0_NAME "/dev/Room0"
#define ROOM0_RESET_VALUE 0
#define ROOM0_SPAN 16
#define ROOM0_TYPE "altera_avalon_pio"


/*
 * Room1 configuration
 *
 */

#define ALT_MODULE_CLASS_Room1 altera_avalon_pio
#define ROOM1_BASE 0x210
#define ROOM1_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM1_CAPTURE 0
#define ROOM1_DATA_WIDTH 8
#define ROOM1_DO_TEST_BENCH_WIRING 0
#define ROOM1_DRIVEN_SIM_VALUE 0
#define ROOM1_EDGE_TYPE "NONE"
#define ROOM1_FREQ 50000000
#define ROOM1_HAS_IN 0
#define ROOM1_HAS_OUT 1
#define ROOM1_HAS_TRI 0
#define ROOM1_IRQ -1
#define ROOM1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM1_IRQ_TYPE "NONE"
#define ROOM1_NAME "/dev/Room1"
#define ROOM1_RESET_VALUE 0
#define ROOM1_SPAN 16
#define ROOM1_TYPE "altera_avalon_pio"


/*
 * Room10 configuration
 *
 */

#define ALT_MODULE_CLASS_Room10 altera_avalon_pio
#define ROOM10_BASE 0x2a0
#define ROOM10_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM10_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM10_CAPTURE 0
#define ROOM10_DATA_WIDTH 8
#define ROOM10_DO_TEST_BENCH_WIRING 0
#define ROOM10_DRIVEN_SIM_VALUE 0
#define ROOM10_EDGE_TYPE "NONE"
#define ROOM10_FREQ 50000000
#define ROOM10_HAS_IN 0
#define ROOM10_HAS_OUT 1
#define ROOM10_HAS_TRI 0
#define ROOM10_IRQ -1
#define ROOM10_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM10_IRQ_TYPE "NONE"
#define ROOM10_NAME "/dev/Room10"
#define ROOM10_RESET_VALUE 0
#define ROOM10_SPAN 16
#define ROOM10_TYPE "altera_avalon_pio"


/*
 * Room11 configuration
 *
 */

#define ALT_MODULE_CLASS_Room11 altera_avalon_pio
#define ROOM11_BASE 0x2b0
#define ROOM11_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM11_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM11_CAPTURE 0
#define ROOM11_DATA_WIDTH 8
#define ROOM11_DO_TEST_BENCH_WIRING 0
#define ROOM11_DRIVEN_SIM_VALUE 0
#define ROOM11_EDGE_TYPE "NONE"
#define ROOM11_FREQ 50000000
#define ROOM11_HAS_IN 0
#define ROOM11_HAS_OUT 1
#define ROOM11_HAS_TRI 0
#define ROOM11_IRQ -1
#define ROOM11_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM11_IRQ_TYPE "NONE"
#define ROOM11_NAME "/dev/Room11"
#define ROOM11_RESET_VALUE 0
#define ROOM11_SPAN 16
#define ROOM11_TYPE "altera_avalon_pio"


/*
 * Room12 configuration
 *
 */

#define ALT_MODULE_CLASS_Room12 altera_avalon_pio
#define ROOM12_BASE 0x2c0
#define ROOM12_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM12_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM12_CAPTURE 0
#define ROOM12_DATA_WIDTH 8
#define ROOM12_DO_TEST_BENCH_WIRING 0
#define ROOM12_DRIVEN_SIM_VALUE 0
#define ROOM12_EDGE_TYPE "NONE"
#define ROOM12_FREQ 50000000
#define ROOM12_HAS_IN 0
#define ROOM12_HAS_OUT 1
#define ROOM12_HAS_TRI 0
#define ROOM12_IRQ -1
#define ROOM12_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM12_IRQ_TYPE "NONE"
#define ROOM12_NAME "/dev/Room12"
#define ROOM12_RESET_VALUE 0
#define ROOM12_SPAN 16
#define ROOM12_TYPE "altera_avalon_pio"


/*
 * Room13 configuration
 *
 */

#define ALT_MODULE_CLASS_Room13 altera_avalon_pio
#define ROOM13_BASE 0x2d0
#define ROOM13_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM13_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM13_CAPTURE 0
#define ROOM13_DATA_WIDTH 8
#define ROOM13_DO_TEST_BENCH_WIRING 0
#define ROOM13_DRIVEN_SIM_VALUE 0
#define ROOM13_EDGE_TYPE "NONE"
#define ROOM13_FREQ 50000000
#define ROOM13_HAS_IN 0
#define ROOM13_HAS_OUT 1
#define ROOM13_HAS_TRI 0
#define ROOM13_IRQ -1
#define ROOM13_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM13_IRQ_TYPE "NONE"
#define ROOM13_NAME "/dev/Room13"
#define ROOM13_RESET_VALUE 0
#define ROOM13_SPAN 16
#define ROOM13_TYPE "altera_avalon_pio"


/*
 * Room14 configuration
 *
 */

#define ALT_MODULE_CLASS_Room14 altera_avalon_pio
#define ROOM14_BASE 0x2e0
#define ROOM14_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM14_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM14_CAPTURE 0
#define ROOM14_DATA_WIDTH 8
#define ROOM14_DO_TEST_BENCH_WIRING 0
#define ROOM14_DRIVEN_SIM_VALUE 0
#define ROOM14_EDGE_TYPE "NONE"
#define ROOM14_FREQ 50000000
#define ROOM14_HAS_IN 0
#define ROOM14_HAS_OUT 1
#define ROOM14_HAS_TRI 0
#define ROOM14_IRQ -1
#define ROOM14_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM14_IRQ_TYPE "NONE"
#define ROOM14_NAME "/dev/Room14"
#define ROOM14_RESET_VALUE 0
#define ROOM14_SPAN 16
#define ROOM14_TYPE "altera_avalon_pio"


/*
 * Room15 configuration
 *
 */

#define ALT_MODULE_CLASS_Room15 altera_avalon_pio
#define ROOM15_BASE 0x2f0
#define ROOM15_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM15_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM15_CAPTURE 0
#define ROOM15_DATA_WIDTH 8
#define ROOM15_DO_TEST_BENCH_WIRING 0
#define ROOM15_DRIVEN_SIM_VALUE 0
#define ROOM15_EDGE_TYPE "NONE"
#define ROOM15_FREQ 50000000
#define ROOM15_HAS_IN 0
#define ROOM15_HAS_OUT 1
#define ROOM15_HAS_TRI 0
#define ROOM15_IRQ -1
#define ROOM15_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM15_IRQ_TYPE "NONE"
#define ROOM15_NAME "/dev/Room15"
#define ROOM15_RESET_VALUE 0
#define ROOM15_SPAN 16
#define ROOM15_TYPE "altera_avalon_pio"


/*
 * Room16 configuration
 *
 */

#define ALT_MODULE_CLASS_Room16 altera_avalon_pio
#define ROOM16_BASE 0x300
#define ROOM16_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM16_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM16_CAPTURE 0
#define ROOM16_DATA_WIDTH 8
#define ROOM16_DO_TEST_BENCH_WIRING 0
#define ROOM16_DRIVEN_SIM_VALUE 0
#define ROOM16_EDGE_TYPE "NONE"
#define ROOM16_FREQ 50000000
#define ROOM16_HAS_IN 0
#define ROOM16_HAS_OUT 1
#define ROOM16_HAS_TRI 0
#define ROOM16_IRQ -1
#define ROOM16_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM16_IRQ_TYPE "NONE"
#define ROOM16_NAME "/dev/Room16"
#define ROOM16_RESET_VALUE 0
#define ROOM16_SPAN 16
#define ROOM16_TYPE "altera_avalon_pio"


/*
 * Room17 configuration
 *
 */

#define ALT_MODULE_CLASS_Room17 altera_avalon_pio
#define ROOM17_BASE 0x310
#define ROOM17_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM17_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM17_CAPTURE 0
#define ROOM17_DATA_WIDTH 8
#define ROOM17_DO_TEST_BENCH_WIRING 0
#define ROOM17_DRIVEN_SIM_VALUE 0
#define ROOM17_EDGE_TYPE "NONE"
#define ROOM17_FREQ 50000000
#define ROOM17_HAS_IN 0
#define ROOM17_HAS_OUT 1
#define ROOM17_HAS_TRI 0
#define ROOM17_IRQ -1
#define ROOM17_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM17_IRQ_TYPE "NONE"
#define ROOM17_NAME "/dev/Room17"
#define ROOM17_RESET_VALUE 0
#define ROOM17_SPAN 16
#define ROOM17_TYPE "altera_avalon_pio"


/*
 * Room18 configuration
 *
 */

#define ALT_MODULE_CLASS_Room18 altera_avalon_pio
#define ROOM18_BASE 0x320
#define ROOM18_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM18_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM18_CAPTURE 0
#define ROOM18_DATA_WIDTH 8
#define ROOM18_DO_TEST_BENCH_WIRING 0
#define ROOM18_DRIVEN_SIM_VALUE 0
#define ROOM18_EDGE_TYPE "NONE"
#define ROOM18_FREQ 50000000
#define ROOM18_HAS_IN 0
#define ROOM18_HAS_OUT 1
#define ROOM18_HAS_TRI 0
#define ROOM18_IRQ -1
#define ROOM18_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM18_IRQ_TYPE "NONE"
#define ROOM18_NAME "/dev/Room18"
#define ROOM18_RESET_VALUE 0
#define ROOM18_SPAN 16
#define ROOM18_TYPE "altera_avalon_pio"


/*
 * Room19 configuration
 *
 */

#define ALT_MODULE_CLASS_Room19 altera_avalon_pio
#define ROOM19_BASE 0x330
#define ROOM19_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM19_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM19_CAPTURE 0
#define ROOM19_DATA_WIDTH 8
#define ROOM19_DO_TEST_BENCH_WIRING 0
#define ROOM19_DRIVEN_SIM_VALUE 0
#define ROOM19_EDGE_TYPE "NONE"
#define ROOM19_FREQ 50000000
#define ROOM19_HAS_IN 0
#define ROOM19_HAS_OUT 1
#define ROOM19_HAS_TRI 0
#define ROOM19_IRQ -1
#define ROOM19_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM19_IRQ_TYPE "NONE"
#define ROOM19_NAME "/dev/Room19"
#define ROOM19_RESET_VALUE 0
#define ROOM19_SPAN 16
#define ROOM19_TYPE "altera_avalon_pio"


/*
 * Room2 configuration
 *
 */

#define ALT_MODULE_CLASS_Room2 altera_avalon_pio
#define ROOM2_BASE 0x220
#define ROOM2_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM2_CAPTURE 0
#define ROOM2_DATA_WIDTH 8
#define ROOM2_DO_TEST_BENCH_WIRING 0
#define ROOM2_DRIVEN_SIM_VALUE 0
#define ROOM2_EDGE_TYPE "NONE"
#define ROOM2_FREQ 50000000
#define ROOM2_HAS_IN 0
#define ROOM2_HAS_OUT 1
#define ROOM2_HAS_TRI 0
#define ROOM2_IRQ -1
#define ROOM2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM2_IRQ_TYPE "NONE"
#define ROOM2_NAME "/dev/Room2"
#define ROOM2_RESET_VALUE 0
#define ROOM2_SPAN 16
#define ROOM2_TYPE "altera_avalon_pio"


/*
 * Room20 configuration
 *
 */

#define ALT_MODULE_CLASS_Room20 altera_avalon_pio
#define ROOM20_BASE 0x340
#define ROOM20_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM20_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM20_CAPTURE 0
#define ROOM20_DATA_WIDTH 8
#define ROOM20_DO_TEST_BENCH_WIRING 0
#define ROOM20_DRIVEN_SIM_VALUE 0
#define ROOM20_EDGE_TYPE "NONE"
#define ROOM20_FREQ 50000000
#define ROOM20_HAS_IN 0
#define ROOM20_HAS_OUT 1
#define ROOM20_HAS_TRI 0
#define ROOM20_IRQ -1
#define ROOM20_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM20_IRQ_TYPE "NONE"
#define ROOM20_NAME "/dev/Room20"
#define ROOM20_RESET_VALUE 0
#define ROOM20_SPAN 16
#define ROOM20_TYPE "altera_avalon_pio"


/*
 * Room21 configuration
 *
 */

#define ALT_MODULE_CLASS_Room21 altera_avalon_pio
#define ROOM21_BASE 0x350
#define ROOM21_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM21_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM21_CAPTURE 0
#define ROOM21_DATA_WIDTH 8
#define ROOM21_DO_TEST_BENCH_WIRING 0
#define ROOM21_DRIVEN_SIM_VALUE 0
#define ROOM21_EDGE_TYPE "NONE"
#define ROOM21_FREQ 50000000
#define ROOM21_HAS_IN 0
#define ROOM21_HAS_OUT 1
#define ROOM21_HAS_TRI 0
#define ROOM21_IRQ -1
#define ROOM21_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM21_IRQ_TYPE "NONE"
#define ROOM21_NAME "/dev/Room21"
#define ROOM21_RESET_VALUE 0
#define ROOM21_SPAN 16
#define ROOM21_TYPE "altera_avalon_pio"


/*
 * Room22 configuration
 *
 */

#define ALT_MODULE_CLASS_Room22 altera_avalon_pio
#define ROOM22_BASE 0x360
#define ROOM22_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM22_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM22_CAPTURE 0
#define ROOM22_DATA_WIDTH 8
#define ROOM22_DO_TEST_BENCH_WIRING 0
#define ROOM22_DRIVEN_SIM_VALUE 0
#define ROOM22_EDGE_TYPE "NONE"
#define ROOM22_FREQ 50000000
#define ROOM22_HAS_IN 0
#define ROOM22_HAS_OUT 1
#define ROOM22_HAS_TRI 0
#define ROOM22_IRQ -1
#define ROOM22_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM22_IRQ_TYPE "NONE"
#define ROOM22_NAME "/dev/Room22"
#define ROOM22_RESET_VALUE 0
#define ROOM22_SPAN 16
#define ROOM22_TYPE "altera_avalon_pio"


/*
 * Room23 configuration
 *
 */

#define ALT_MODULE_CLASS_Room23 altera_avalon_pio
#define ROOM23_BASE 0x370
#define ROOM23_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM23_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM23_CAPTURE 0
#define ROOM23_DATA_WIDTH 8
#define ROOM23_DO_TEST_BENCH_WIRING 0
#define ROOM23_DRIVEN_SIM_VALUE 0
#define ROOM23_EDGE_TYPE "NONE"
#define ROOM23_FREQ 50000000
#define ROOM23_HAS_IN 0
#define ROOM23_HAS_OUT 1
#define ROOM23_HAS_TRI 0
#define ROOM23_IRQ -1
#define ROOM23_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM23_IRQ_TYPE "NONE"
#define ROOM23_NAME "/dev/Room23"
#define ROOM23_RESET_VALUE 0
#define ROOM23_SPAN 16
#define ROOM23_TYPE "altera_avalon_pio"


/*
 * Room24 configuration
 *
 */

#define ALT_MODULE_CLASS_Room24 altera_avalon_pio
#define ROOM24_BASE 0x380
#define ROOM24_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM24_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM24_CAPTURE 0
#define ROOM24_DATA_WIDTH 8
#define ROOM24_DO_TEST_BENCH_WIRING 0
#define ROOM24_DRIVEN_SIM_VALUE 0
#define ROOM24_EDGE_TYPE "NONE"
#define ROOM24_FREQ 50000000
#define ROOM24_HAS_IN 0
#define ROOM24_HAS_OUT 1
#define ROOM24_HAS_TRI 0
#define ROOM24_IRQ -1
#define ROOM24_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM24_IRQ_TYPE "NONE"
#define ROOM24_NAME "/dev/Room24"
#define ROOM24_RESET_VALUE 0
#define ROOM24_SPAN 16
#define ROOM24_TYPE "altera_avalon_pio"


/*
 * Room3 configuration
 *
 */

#define ALT_MODULE_CLASS_Room3 altera_avalon_pio
#define ROOM3_BASE 0x230
#define ROOM3_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM3_CAPTURE 0
#define ROOM3_DATA_WIDTH 8
#define ROOM3_DO_TEST_BENCH_WIRING 0
#define ROOM3_DRIVEN_SIM_VALUE 0
#define ROOM3_EDGE_TYPE "NONE"
#define ROOM3_FREQ 50000000
#define ROOM3_HAS_IN 0
#define ROOM3_HAS_OUT 1
#define ROOM3_HAS_TRI 0
#define ROOM3_IRQ -1
#define ROOM3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM3_IRQ_TYPE "NONE"
#define ROOM3_NAME "/dev/Room3"
#define ROOM3_RESET_VALUE 0
#define ROOM3_SPAN 16
#define ROOM3_TYPE "altera_avalon_pio"


/*
 * Room4 configuration
 *
 */

#define ALT_MODULE_CLASS_Room4 altera_avalon_pio
#define ROOM4_BASE 0x240
#define ROOM4_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM4_CAPTURE 0
#define ROOM4_DATA_WIDTH 8
#define ROOM4_DO_TEST_BENCH_WIRING 0
#define ROOM4_DRIVEN_SIM_VALUE 0
#define ROOM4_EDGE_TYPE "NONE"
#define ROOM4_FREQ 50000000
#define ROOM4_HAS_IN 0
#define ROOM4_HAS_OUT 1
#define ROOM4_HAS_TRI 0
#define ROOM4_IRQ -1
#define ROOM4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM4_IRQ_TYPE "NONE"
#define ROOM4_NAME "/dev/Room4"
#define ROOM4_RESET_VALUE 0
#define ROOM4_SPAN 16
#define ROOM4_TYPE "altera_avalon_pio"


/*
 * Room5 configuration
 *
 */

#define ALT_MODULE_CLASS_Room5 altera_avalon_pio
#define ROOM5_BASE 0x250
#define ROOM5_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM5_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM5_CAPTURE 0
#define ROOM5_DATA_WIDTH 8
#define ROOM5_DO_TEST_BENCH_WIRING 0
#define ROOM5_DRIVEN_SIM_VALUE 0
#define ROOM5_EDGE_TYPE "NONE"
#define ROOM5_FREQ 50000000
#define ROOM5_HAS_IN 0
#define ROOM5_HAS_OUT 1
#define ROOM5_HAS_TRI 0
#define ROOM5_IRQ -1
#define ROOM5_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM5_IRQ_TYPE "NONE"
#define ROOM5_NAME "/dev/Room5"
#define ROOM5_RESET_VALUE 0
#define ROOM5_SPAN 16
#define ROOM5_TYPE "altera_avalon_pio"


/*
 * Room6 configuration
 *
 */

#define ALT_MODULE_CLASS_Room6 altera_avalon_pio
#define ROOM6_BASE 0x260
#define ROOM6_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM6_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM6_CAPTURE 0
#define ROOM6_DATA_WIDTH 8
#define ROOM6_DO_TEST_BENCH_WIRING 0
#define ROOM6_DRIVEN_SIM_VALUE 0
#define ROOM6_EDGE_TYPE "NONE"
#define ROOM6_FREQ 50000000
#define ROOM6_HAS_IN 0
#define ROOM6_HAS_OUT 1
#define ROOM6_HAS_TRI 0
#define ROOM6_IRQ -1
#define ROOM6_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM6_IRQ_TYPE "NONE"
#define ROOM6_NAME "/dev/Room6"
#define ROOM6_RESET_VALUE 0
#define ROOM6_SPAN 16
#define ROOM6_TYPE "altera_avalon_pio"


/*
 * Room7 configuration
 *
 */

#define ALT_MODULE_CLASS_Room7 altera_avalon_pio
#define ROOM7_BASE 0x270
#define ROOM7_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM7_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM7_CAPTURE 0
#define ROOM7_DATA_WIDTH 8
#define ROOM7_DO_TEST_BENCH_WIRING 0
#define ROOM7_DRIVEN_SIM_VALUE 0
#define ROOM7_EDGE_TYPE "NONE"
#define ROOM7_FREQ 50000000
#define ROOM7_HAS_IN 0
#define ROOM7_HAS_OUT 1
#define ROOM7_HAS_TRI 0
#define ROOM7_IRQ -1
#define ROOM7_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM7_IRQ_TYPE "NONE"
#define ROOM7_NAME "/dev/Room7"
#define ROOM7_RESET_VALUE 0
#define ROOM7_SPAN 16
#define ROOM7_TYPE "altera_avalon_pio"


/*
 * Room8 configuration
 *
 */

#define ALT_MODULE_CLASS_Room8 altera_avalon_pio
#define ROOM8_BASE 0x280
#define ROOM8_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM8_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM8_CAPTURE 0
#define ROOM8_DATA_WIDTH 8
#define ROOM8_DO_TEST_BENCH_WIRING 0
#define ROOM8_DRIVEN_SIM_VALUE 0
#define ROOM8_EDGE_TYPE "NONE"
#define ROOM8_FREQ 50000000
#define ROOM8_HAS_IN 0
#define ROOM8_HAS_OUT 1
#define ROOM8_HAS_TRI 0
#define ROOM8_IRQ -1
#define ROOM8_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM8_IRQ_TYPE "NONE"
#define ROOM8_NAME "/dev/Room8"
#define ROOM8_RESET_VALUE 0
#define ROOM8_SPAN 16
#define ROOM8_TYPE "altera_avalon_pio"


/*
 * Room9 configuration
 *
 */

#define ALT_MODULE_CLASS_Room9 altera_avalon_pio
#define ROOM9_BASE 0x290
#define ROOM9_BIT_CLEARING_EDGE_REGISTER 0
#define ROOM9_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOM9_CAPTURE 0
#define ROOM9_DATA_WIDTH 8
#define ROOM9_DO_TEST_BENCH_WIRING 0
#define ROOM9_DRIVEN_SIM_VALUE 0
#define ROOM9_EDGE_TYPE "NONE"
#define ROOM9_FREQ 50000000
#define ROOM9_HAS_IN 0
#define ROOM9_HAS_OUT 1
#define ROOM9_HAS_TRI 0
#define ROOM9_IRQ -1
#define ROOM9_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOM9_IRQ_TYPE "NONE"
#define ROOM9_NAME "/dev/Room9"
#define ROOM9_RESET_VALUE 0
#define ROOM9_SPAN 16
#define ROOM9_TYPE "altera_avalon_pio"


/*
 * RoomNumber configuration
 *
 */

#define ALT_MODULE_CLASS_RoomNumber altera_avalon_pio
#define ROOMNUMBER_BASE 0x120
#define ROOMNUMBER_BIT_CLEARING_EDGE_REGISTER 0
#define ROOMNUMBER_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ROOMNUMBER_CAPTURE 0
#define ROOMNUMBER_DATA_WIDTH 8
#define ROOMNUMBER_DO_TEST_BENCH_WIRING 0
#define ROOMNUMBER_DRIVEN_SIM_VALUE 0
#define ROOMNUMBER_EDGE_TYPE "NONE"
#define ROOMNUMBER_FREQ 50000000
#define ROOMNUMBER_HAS_IN 0
#define ROOMNUMBER_HAS_OUT 1
#define ROOMNUMBER_HAS_TRI 0
#define ROOMNUMBER_IRQ -1
#define ROOMNUMBER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOMNUMBER_IRQ_TYPE "NONE"
#define ROOMNUMBER_NAME "/dev/RoomNumber"
#define ROOMNUMBER_RESET_VALUE 0
#define ROOMNUMBER_SPAN 16
#define ROOMNUMBER_TYPE "altera_avalon_pio"


/*
 * Rooms configuration
 *
 */

#define ALT_MODULE_CLASS_Rooms Room
#define ROOMS_BASE 0x100
#define ROOMS_IRQ -1
#define ROOMS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ROOMS_NAME "/dev/Rooms"
#define ROOMS_SPAN 32
#define ROOMS_TYPE "Room"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0xc0
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0xc0
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0xc0
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "lab7_soc"


/*
 * TIMER configuration
 *
 */

#define ALT_MODULE_CLASS_TIMER altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0xe0
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 50000000
#define TIMER_IRQ 1
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 49999
#define TIMER_MULT 0.001
#define TIMER_NAME "/dev/TIMER"
#define TIMER_PERIOD 1
#define TIMER_PERIOD_UNITS "ms"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 1000
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK TIMER
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0xc0
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * keycode configuration
 *
 */

#define ALT_MODULE_CLASS_keycode altera_avalon_pio
#define KEYCODE_BASE 0x90
#define KEYCODE_BIT_CLEARING_EDGE_REGISTER 0
#define KEYCODE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEYCODE_CAPTURE 0
#define KEYCODE_DATA_WIDTH 8
#define KEYCODE_DO_TEST_BENCH_WIRING 0
#define KEYCODE_DRIVEN_SIM_VALUE 0
#define KEYCODE_EDGE_TYPE "NONE"
#define KEYCODE_FREQ 50000000
#define KEYCODE_HAS_IN 0
#define KEYCODE_HAS_OUT 1
#define KEYCODE_HAS_TRI 0
#define KEYCODE_IRQ -1
#define KEYCODE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEYCODE_IRQ_TYPE "NONE"
#define KEYCODE_NAME "/dev/keycode"
#define KEYCODE_RESET_VALUE 0
#define KEYCODE_SPAN 16
#define KEYCODE_TYPE "altera_avalon_pio"


/*
 * keycode2 configuration
 *
 */

#define ALT_MODULE_CLASS_keycode2 altera_avalon_pio
#define KEYCODE2_BASE 0xd0
#define KEYCODE2_BIT_CLEARING_EDGE_REGISTER 0
#define KEYCODE2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEYCODE2_CAPTURE 0
#define KEYCODE2_DATA_WIDTH 8
#define KEYCODE2_DO_TEST_BENCH_WIRING 0
#define KEYCODE2_DRIVEN_SIM_VALUE 0
#define KEYCODE2_EDGE_TYPE "NONE"
#define KEYCODE2_FREQ 50000000
#define KEYCODE2_HAS_IN 0
#define KEYCODE2_HAS_OUT 1
#define KEYCODE2_HAS_TRI 0
#define KEYCODE2_IRQ -1
#define KEYCODE2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEYCODE2_IRQ_TYPE "NONE"
#define KEYCODE2_NAME "/dev/keycode2"
#define KEYCODE2_RESET_VALUE 0
#define KEYCODE2_SPAN 16
#define KEYCODE2_TYPE "altera_avalon_pio"


/*
 * onchip_memory2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2_0 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_BASE 0x0
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE "lab7_soc_onchip_memory2_0"
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_0_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_0_IRQ -1
#define ONCHIP_MEMORY2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_0_NAME "/dev/onchip_memory2_0"
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 16
#define ONCHIP_MEMORY2_0_SPAN 16
#define ONCHIP_MEMORY2_0_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_0_WRITABLE 1


/*
 * otg_hpi_address configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_address altera_avalon_pio
#define OTG_HPI_ADDRESS_BASE 0x80
#define OTG_HPI_ADDRESS_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_ADDRESS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_ADDRESS_CAPTURE 0
#define OTG_HPI_ADDRESS_DATA_WIDTH 2
#define OTG_HPI_ADDRESS_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_ADDRESS_DRIVEN_SIM_VALUE 0
#define OTG_HPI_ADDRESS_EDGE_TYPE "NONE"
#define OTG_HPI_ADDRESS_FREQ 50000000
#define OTG_HPI_ADDRESS_HAS_IN 0
#define OTG_HPI_ADDRESS_HAS_OUT 1
#define OTG_HPI_ADDRESS_HAS_TRI 0
#define OTG_HPI_ADDRESS_IRQ -1
#define OTG_HPI_ADDRESS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_ADDRESS_IRQ_TYPE "NONE"
#define OTG_HPI_ADDRESS_NAME "/dev/otg_hpi_address"
#define OTG_HPI_ADDRESS_RESET_VALUE 0
#define OTG_HPI_ADDRESS_SPAN 16
#define OTG_HPI_ADDRESS_TYPE "altera_avalon_pio"


/*
 * otg_hpi_cs configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_cs altera_avalon_pio
#define OTG_HPI_CS_BASE 0x40
#define OTG_HPI_CS_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_CS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_CS_CAPTURE 0
#define OTG_HPI_CS_DATA_WIDTH 1
#define OTG_HPI_CS_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_CS_DRIVEN_SIM_VALUE 0
#define OTG_HPI_CS_EDGE_TYPE "NONE"
#define OTG_HPI_CS_FREQ 50000000
#define OTG_HPI_CS_HAS_IN 0
#define OTG_HPI_CS_HAS_OUT 1
#define OTG_HPI_CS_HAS_TRI 0
#define OTG_HPI_CS_IRQ -1
#define OTG_HPI_CS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_CS_IRQ_TYPE "NONE"
#define OTG_HPI_CS_NAME "/dev/otg_hpi_cs"
#define OTG_HPI_CS_RESET_VALUE 0
#define OTG_HPI_CS_SPAN 16
#define OTG_HPI_CS_TYPE "altera_avalon_pio"


/*
 * otg_hpi_data configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_data altera_avalon_pio
#define OTG_HPI_DATA_BASE 0x70
#define OTG_HPI_DATA_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_DATA_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_DATA_CAPTURE 0
#define OTG_HPI_DATA_DATA_WIDTH 16
#define OTG_HPI_DATA_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_DATA_DRIVEN_SIM_VALUE 0
#define OTG_HPI_DATA_EDGE_TYPE "NONE"
#define OTG_HPI_DATA_FREQ 50000000
#define OTG_HPI_DATA_HAS_IN 1
#define OTG_HPI_DATA_HAS_OUT 1
#define OTG_HPI_DATA_HAS_TRI 0
#define OTG_HPI_DATA_IRQ -1
#define OTG_HPI_DATA_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_DATA_IRQ_TYPE "NONE"
#define OTG_HPI_DATA_NAME "/dev/otg_hpi_data"
#define OTG_HPI_DATA_RESET_VALUE 0
#define OTG_HPI_DATA_SPAN 16
#define OTG_HPI_DATA_TYPE "altera_avalon_pio"


/*
 * otg_hpi_r configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_r altera_avalon_pio
#define OTG_HPI_R_BASE 0x60
#define OTG_HPI_R_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_R_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_R_CAPTURE 0
#define OTG_HPI_R_DATA_WIDTH 1
#define OTG_HPI_R_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_R_DRIVEN_SIM_VALUE 0
#define OTG_HPI_R_EDGE_TYPE "NONE"
#define OTG_HPI_R_FREQ 50000000
#define OTG_HPI_R_HAS_IN 0
#define OTG_HPI_R_HAS_OUT 1
#define OTG_HPI_R_HAS_TRI 0
#define OTG_HPI_R_IRQ -1
#define OTG_HPI_R_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_R_IRQ_TYPE "NONE"
#define OTG_HPI_R_NAME "/dev/otg_hpi_r"
#define OTG_HPI_R_RESET_VALUE 0
#define OTG_HPI_R_SPAN 16
#define OTG_HPI_R_TYPE "altera_avalon_pio"


/*
 * otg_hpi_reset configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_reset altera_avalon_pio
#define OTG_HPI_RESET_BASE 0x30
#define OTG_HPI_RESET_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_RESET_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_RESET_CAPTURE 0
#define OTG_HPI_RESET_DATA_WIDTH 1
#define OTG_HPI_RESET_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_RESET_DRIVEN_SIM_VALUE 0
#define OTG_HPI_RESET_EDGE_TYPE "NONE"
#define OTG_HPI_RESET_FREQ 50000000
#define OTG_HPI_RESET_HAS_IN 0
#define OTG_HPI_RESET_HAS_OUT 1
#define OTG_HPI_RESET_HAS_TRI 0
#define OTG_HPI_RESET_IRQ -1
#define OTG_HPI_RESET_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_RESET_IRQ_TYPE "NONE"
#define OTG_HPI_RESET_NAME "/dev/otg_hpi_reset"
#define OTG_HPI_RESET_RESET_VALUE 0
#define OTG_HPI_RESET_SPAN 16
#define OTG_HPI_RESET_TYPE "altera_avalon_pio"


/*
 * otg_hpi_w configuration
 *
 */

#define ALT_MODULE_CLASS_otg_hpi_w altera_avalon_pio
#define OTG_HPI_W_BASE 0x50
#define OTG_HPI_W_BIT_CLEARING_EDGE_REGISTER 0
#define OTG_HPI_W_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OTG_HPI_W_CAPTURE 0
#define OTG_HPI_W_DATA_WIDTH 1
#define OTG_HPI_W_DO_TEST_BENCH_WIRING 0
#define OTG_HPI_W_DRIVEN_SIM_VALUE 0
#define OTG_HPI_W_EDGE_TYPE "NONE"
#define OTG_HPI_W_FREQ 50000000
#define OTG_HPI_W_HAS_IN 0
#define OTG_HPI_W_HAS_OUT 1
#define OTG_HPI_W_HAS_TRI 0
#define OTG_HPI_W_IRQ -1
#define OTG_HPI_W_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OTG_HPI_W_IRQ_TYPE "NONE"
#define OTG_HPI_W_NAME "/dev/otg_hpi_w"
#define OTG_HPI_W_RESET_VALUE 0
#define OTG_HPI_W_SPAN 16
#define OTG_HPI_W_TYPE "altera_avalon_pio"


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x10000000
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 200.0
#define SDRAM_REFRESH_PERIOD 7.8125
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 32
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_SPAN 134217728
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.5
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 20.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 20.0
#define SDRAM_T_WR 14.0


/*
 * sdram_pll configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_pll altpll
#define SDRAM_PLL_BASE 0xa0
#define SDRAM_PLL_IRQ -1
#define SDRAM_PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_PLL_NAME "/dev/sdram_pll"
#define SDRAM_PLL_SPAN 16
#define SDRAM_PLL_TYPE "altpll"


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0xb8
#define SYSID_QSYS_0_ID 0
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1588722215
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
