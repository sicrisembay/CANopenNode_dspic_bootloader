#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../CANopenNode/301/CO_Emergency.c ../CANopenNode/301/CO_fifo.c ../CANopenNode/301/CO_HBconsumer.c ../CANopenNode/301/CO_NMT_Heartbeat.c ../CANopenNode/301/CO_ODinterface.c ../CANopenNode/301/CO_PDO.c ../CANopenNode/301/CO_SDOclient.c ../CANopenNode/301/CO_SDOserver.c ../CANopenNode/301/CO_SYNC.c ../CANopenNode/301/CO_TIME.c ../CANopenNode/301/crc16-ccitt.c ../302/CO_Prog_dsPIC33.c ../CANopenNode/305/CO_LSSmaster.c ../CANopenNode/305/CO_LSSslave.c ../CANopenNode/CANopen.c ../port/dsPIC33/CO_driver.c bootloader.c OD.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o ${OBJECTDIR}/_ext/398055091/CANopen.o ${OBJECTDIR}/_ext/285522308/CO_driver.o ${OBJECTDIR}/bootloader.o ${OBJECTDIR}/OD.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o.d ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d ${OBJECTDIR}/_ext/398055091/CANopen.o.d ${OBJECTDIR}/_ext/285522308/CO_driver.o.d ${OBJECTDIR}/bootloader.o.d ${OBJECTDIR}/OD.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o ${OBJECTDIR}/_ext/398055091/CANopen.o ${OBJECTDIR}/_ext/285522308/CO_driver.o ${OBJECTDIR}/bootloader.o ${OBJECTDIR}/OD.o

# Source Files
SOURCEFILES=../CANopenNode/301/CO_Emergency.c ../CANopenNode/301/CO_fifo.c ../CANopenNode/301/CO_HBconsumer.c ../CANopenNode/301/CO_NMT_Heartbeat.c ../CANopenNode/301/CO_ODinterface.c ../CANopenNode/301/CO_PDO.c ../CANopenNode/301/CO_SDOclient.c ../CANopenNode/301/CO_SDOserver.c ../CANopenNode/301/CO_SYNC.c ../CANopenNode/301/CO_TIME.c ../CANopenNode/301/crc16-ccitt.c ../302/CO_Prog_dsPIC33.c ../CANopenNode/305/CO_LSSmaster.c ../CANopenNode/305/CO_LSSslave.c ../CANopenNode/CANopen.c ../port/dsPIC33/CO_driver.c bootloader.c OD.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ128MC706A
MP_LINKER_FILE_OPTION=,--script="..\linker\p33FJ128MC706A_boot.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1688412750/CO_Emergency.o: ../CANopenNode/301/CO_Emergency.c  .generated_files/df8e9392a9484d57bb0a98373ad67fa65ad89749.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_Emergency.c  -o ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_fifo.o: ../CANopenNode/301/CO_fifo.c  .generated_files/4830d740adc08a6ec4bbb12d7b8f90611a986585.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_fifo.c  -o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o: ../CANopenNode/301/CO_HBconsumer.c  .generated_files/d8e53dae4d115a33d6a0576bff7a316935df31cb.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_HBconsumer.c  -o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o: ../CANopenNode/301/CO_NMT_Heartbeat.c  .generated_files/d723751eaa1afde1ad84cc77b71679c55490cf7b.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_NMT_Heartbeat.c  -o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o: ../CANopenNode/301/CO_ODinterface.c  .generated_files/5a28af8ca7424fa01e61dbdcfff3dd964436941d.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_ODinterface.c  -o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_PDO.o: ../CANopenNode/301/CO_PDO.c  .generated_files/dfb92f1627fca991ba168b1bfdcff2703652eed7.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_PDO.c  -o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o: ../CANopenNode/301/CO_SDOclient.c  .generated_files/641cb044e488042f284746d1dad9515750fa9789.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOclient.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o: ../CANopenNode/301/CO_SDOserver.c  .generated_files/616944e4a80bfacc75a81990f2bf8ef48f0a61af.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOserver.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SYNC.o: ../CANopenNode/301/CO_SYNC.c  .generated_files/911f46e936e7e0dd03e5a227b1372e4b94fa3776.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SYNC.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_TIME.o: ../CANopenNode/301/CO_TIME.c  .generated_files/30caf7dd12820ba9ec1f60b6d053fe72a2ab1bc8.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_TIME.c  -o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o: ../CANopenNode/301/crc16-ccitt.c  .generated_files/2f8db0731dad8f2c08007689a3240e26a3946018.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/crc16-ccitt.c  -o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o: ../302/CO_Prog_dsPIC33.c  .generated_files/fa4b2ae992530237022dcf45554457895342b86b.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360873638" 
	@${RM} ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../302/CO_Prog_dsPIC33.c  -o ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o: ../CANopenNode/305/CO_LSSmaster.c  .generated_files/d762847e42fb250552ef4a1b85dd1f659aaaccf5.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSmaster.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o: ../CANopenNode/305/CO_LSSslave.c  .generated_files/ae6683038dc9483b187ef5efcca50805fa0e93d7.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSslave.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/398055091/CANopen.o: ../CANopenNode/CANopen.c  .generated_files/7987f0e3c1cff3c1588f26d6d0296c701a401503.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/398055091" 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/CANopen.c  -o ${OBJECTDIR}/_ext/398055091/CANopen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/398055091/CANopen.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/285522308/CO_driver.o: ../port/dsPIC33/CO_driver.c  .generated_files/560d7db0ebb7be9991f911a4ee898cb51204460c.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/285522308" 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../port/dsPIC33/CO_driver.c  -o ${OBJECTDIR}/_ext/285522308/CO_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285522308/CO_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bootloader.o: bootloader.c  .generated_files/f56f3c67b260825d4e74d8aa3ccfbc0817ecbd79.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bootloader.o.d 
	@${RM} ${OBJECTDIR}/bootloader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bootloader.c  -o ${OBJECTDIR}/bootloader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bootloader.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/OD.o: OD.c  .generated_files/f0dadb322f87c46a5f5a3cc8ea62d51cf23f86e0.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OD.o.d 
	@${RM} ${OBJECTDIR}/OD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  OD.c  -o ${OBJECTDIR}/OD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/OD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1688412750/CO_Emergency.o: ../CANopenNode/301/CO_Emergency.c  .generated_files/9ab3cf16858898452ce09eec43ecf34631f7f75c.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_Emergency.c  -o ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_fifo.o: ../CANopenNode/301/CO_fifo.c  .generated_files/a829b9b3ff5b2b903242a45691b8a0431fb3c242.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_fifo.c  -o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o: ../CANopenNode/301/CO_HBconsumer.c  .generated_files/9e65876223a5cad1ea3995022574e6fbc939bf24.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_HBconsumer.c  -o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o: ../CANopenNode/301/CO_NMT_Heartbeat.c  .generated_files/6d8fda132ab71b310aeb741d8bf1b1811a9247.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_NMT_Heartbeat.c  -o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o: ../CANopenNode/301/CO_ODinterface.c  .generated_files/7950cae9afe60494539b4fa08476665afd0d7bb.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_ODinterface.c  -o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_PDO.o: ../CANopenNode/301/CO_PDO.c  .generated_files/c13059eea8e8ded89bc46dc2451b05114c85994.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_PDO.c  -o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o: ../CANopenNode/301/CO_SDOclient.c  .generated_files/10399bc16df0b50c80a093b13104ba97b17f6cbf.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOclient.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o: ../CANopenNode/301/CO_SDOserver.c  .generated_files/24010ff5ccd8489ce57cf1827859e17740b24868.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOserver.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SYNC.o: ../CANopenNode/301/CO_SYNC.c  .generated_files/a9d955cdbea2aff71cd05c79bec300c4600a1d73.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SYNC.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_TIME.o: ../CANopenNode/301/CO_TIME.c  .generated_files/f4871836134bd0c8a828bb4ef8fec187dfda3817.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_TIME.c  -o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o: ../CANopenNode/301/crc16-ccitt.c  .generated_files/70c5acea62fc57c42ecce73dcf6d3834254299b9.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/crc16-ccitt.c  -o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o: ../302/CO_Prog_dsPIC33.c  .generated_files/835fc01218f3d7ec34230fba53081f5997fa7282.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360873638" 
	@${RM} ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../302/CO_Prog_dsPIC33.c  -o ${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1360873638/CO_Prog_dsPIC33.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o: ../CANopenNode/305/CO_LSSmaster.c  .generated_files/c3639dcb422edb2de88f8b37138a46ea5152f4bf.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSmaster.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o: ../CANopenNode/305/CO_LSSslave.c  .generated_files/ae6e4494e53170e32391877ffadbaf6ae229b4d7.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSslave.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/398055091/CANopen.o: ../CANopenNode/CANopen.c  .generated_files/e34f4c7359121fa485c04d43a55e591fc65ccb30.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/398055091" 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/CANopen.c  -o ${OBJECTDIR}/_ext/398055091/CANopen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/398055091/CANopen.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/285522308/CO_driver.o: ../port/dsPIC33/CO_driver.c  .generated_files/24c766bf81d5a6568bcc9a98ae65fc7b18f5cc9e.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/285522308" 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../port/dsPIC33/CO_driver.c  -o ${OBJECTDIR}/_ext/285522308/CO_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285522308/CO_driver.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bootloader.o: bootloader.c  .generated_files/ec60a6752f6c92bdf4c6538d14b7d73d53b14643.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bootloader.o.d 
	@${RM} ${OBJECTDIR}/bootloader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bootloader.c  -o ${OBJECTDIR}/bootloader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bootloader.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/OD.o: OD.c  .generated_files/2964fe23e73cab90531918d20af37557d93b025e.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OD.o.d 
	@${RM} ${OBJECTDIR}/OD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  OD.c  -o ${OBJECTDIR}/OD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/OD.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -I"../linker" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../linker/p33FJ128MC706A_boot.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=5000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../linker/p33FJ128MC706A_boot.gld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--heap=5000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
