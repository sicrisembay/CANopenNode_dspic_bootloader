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
SOURCEFILES_QUOTED_IF_SPACED=../CANopenNode/301/CO_Emergency.c ../CANopenNode/301/CO_fifo.c ../CANopenNode/301/CO_HBconsumer.c ../CANopenNode/301/CO_NMT_Heartbeat.c ../CANopenNode/301/CO_ODinterface.c ../CANopenNode/301/CO_PDO.c ../CANopenNode/301/CO_SDOclient.c ../CANopenNode/301/CO_SDOserver.c ../CANopenNode/301/CO_SYNC.c ../CANopenNode/301/CO_TIME.c ../CANopenNode/301/crc16-ccitt.c ../CANopenNode/305/CO_LSSmaster.c ../CANopenNode/305/CO_LSSslave.c ../CANopenNode/CANopen.c ../port/dsPIC33/CO_driver.c bootloader.c OD.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o ${OBJECTDIR}/_ext/398055091/CANopen.o ${OBJECTDIR}/_ext/285522308/CO_driver.o ${OBJECTDIR}/bootloader.o ${OBJECTDIR}/OD.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d ${OBJECTDIR}/_ext/398055091/CANopen.o.d ${OBJECTDIR}/_ext/285522308/CO_driver.o.d ${OBJECTDIR}/bootloader.o.d ${OBJECTDIR}/OD.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1688412750/CO_Emergency.o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o ${OBJECTDIR}/_ext/398055091/CANopen.o ${OBJECTDIR}/_ext/285522308/CO_driver.o ${OBJECTDIR}/bootloader.o ${OBJECTDIR}/OD.o

# Source Files
SOURCEFILES=../CANopenNode/301/CO_Emergency.c ../CANopenNode/301/CO_fifo.c ../CANopenNode/301/CO_HBconsumer.c ../CANopenNode/301/CO_NMT_Heartbeat.c ../CANopenNode/301/CO_ODinterface.c ../CANopenNode/301/CO_PDO.c ../CANopenNode/301/CO_SDOclient.c ../CANopenNode/301/CO_SDOserver.c ../CANopenNode/301/CO_SYNC.c ../CANopenNode/301/CO_TIME.c ../CANopenNode/301/crc16-ccitt.c ../CANopenNode/305/CO_LSSmaster.c ../CANopenNode/305/CO_LSSslave.c ../CANopenNode/CANopen.c ../port/dsPIC33/CO_driver.c bootloader.c OD.c



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
MP_LINKER_FILE_OPTION=,--script=p33FJ128MC706A.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1688412750/CO_Emergency.o: ../CANopenNode/301/CO_Emergency.c  .generated_files/e390ac19b8e2c6338a0f092f67bae9755543a0d2.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_Emergency.c  -o ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_fifo.o: ../CANopenNode/301/CO_fifo.c  .generated_files/869bde7202d0f39ebb2600a70f49e0054a3df185.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_fifo.c  -o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o: ../CANopenNode/301/CO_HBconsumer.c  .generated_files/5541c4bdd29239c8d8d29dba66acaf7c290cc09.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_HBconsumer.c  -o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o: ../CANopenNode/301/CO_NMT_Heartbeat.c  .generated_files/29c03033959fd5b24e284efbfb76a9e74499c6d2.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_NMT_Heartbeat.c  -o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o: ../CANopenNode/301/CO_ODinterface.c  .generated_files/9ecd7736696e1fb32806146fb58e6f27724ef6c0.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_ODinterface.c  -o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_PDO.o: ../CANopenNode/301/CO_PDO.c  .generated_files/154c9a1d27ce0510a866d4f5559fad5d4bf011cb.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_PDO.c  -o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o: ../CANopenNode/301/CO_SDOclient.c  .generated_files/14750db6fb5a00769802f21973c9d773e5922be8.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOclient.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o: ../CANopenNode/301/CO_SDOserver.c  .generated_files/3d9b0794a3904297de26957dc28b2ea432710234.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOserver.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SYNC.o: ../CANopenNode/301/CO_SYNC.c  .generated_files/78787bc70350ad4c370825d209af6ecc840e7352.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SYNC.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_TIME.o: ../CANopenNode/301/CO_TIME.c  .generated_files/41a064a306d7f871d29dcc0a16b28056639360f8.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_TIME.c  -o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o: ../CANopenNode/301/crc16-ccitt.c  .generated_files/81086b8c6b0f7081c784c1c560414483f695bfb5.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/crc16-ccitt.c  -o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o: ../CANopenNode/305/CO_LSSmaster.c  .generated_files/e8aa52db9b036e40f341a7c7a53826d27de1874b.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSmaster.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o: ../CANopenNode/305/CO_LSSslave.c  .generated_files/5dcb9ab0f235160f67593716a26a9e0d5b542a40.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSslave.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/398055091/CANopen.o: ../CANopenNode/CANopen.c  .generated_files/8026b6441a33803c410342d04ae4417ecb36956d.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/398055091" 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/CANopen.c  -o ${OBJECTDIR}/_ext/398055091/CANopen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/398055091/CANopen.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/285522308/CO_driver.o: ../port/dsPIC33/CO_driver.c  .generated_files/fc4bc1f94b1344dded9264013bb959da20540b55.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/285522308" 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../port/dsPIC33/CO_driver.c  -o ${OBJECTDIR}/_ext/285522308/CO_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285522308/CO_driver.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bootloader.o: bootloader.c  .generated_files/74e6172814d7c586024bbd2fc87590d28c6cefee.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bootloader.o.d 
	@${RM} ${OBJECTDIR}/bootloader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bootloader.c  -o ${OBJECTDIR}/bootloader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bootloader.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/OD.o: OD.c  .generated_files/e0e70b69c0e31c1cf7cdacfea22cb27a83645454.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OD.o.d 
	@${RM} ${OBJECTDIR}/OD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  OD.c  -o ${OBJECTDIR}/OD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/OD.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1688412750/CO_Emergency.o: ../CANopenNode/301/CO_Emergency.c  .generated_files/a7ddb2522a86daaa522cb715b6ce0a97c13c3080.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_Emergency.c  -o ${OBJECTDIR}/_ext/1688412750/CO_Emergency.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_Emergency.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_fifo.o: ../CANopenNode/301/CO_fifo.c  .generated_files/b9b39ab160c7aaa1cef12b254276455052c22c66.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_fifo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_fifo.c  -o ${OBJECTDIR}/_ext/1688412750/CO_fifo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_fifo.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o: ../CANopenNode/301/CO_HBconsumer.c  .generated_files/4d30750cf87a6ee56c423ac760100ad37ea7873b.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_HBconsumer.c  -o ${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_HBconsumer.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o: ../CANopenNode/301/CO_NMT_Heartbeat.c  .generated_files/43dc9ecc9d92d7708780baa271ef8b0c9edfb17.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_NMT_Heartbeat.c  -o ${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_NMT_Heartbeat.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o: ../CANopenNode/301/CO_ODinterface.c  .generated_files/8de04e14bd038f9e5f8fdac831c74a9f0fa4a7ad.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_ODinterface.c  -o ${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_ODinterface.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_PDO.o: ../CANopenNode/301/CO_PDO.c  .generated_files/d1db667de2f73a9af4b071f90fb555aae881261d.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_PDO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_PDO.c  -o ${OBJECTDIR}/_ext/1688412750/CO_PDO.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_PDO.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o: ../CANopenNode/301/CO_SDOclient.c  .generated_files/59c45ae3c4b7d298241a25dce31377b09f658bea.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOclient.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOclient.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o: ../CANopenNode/301/CO_SDOserver.c  .generated_files/e0aa7d30ce2f350c10b87cb3f01b28110fffa97e.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SDOserver.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SDOserver.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_SYNC.o: ../CANopenNode/301/CO_SYNC.c  .generated_files/969424fd22ea32b95540ddb03f846cb724ec3d62.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_SYNC.c  -o ${OBJECTDIR}/_ext/1688412750/CO_SYNC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_SYNC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/CO_TIME.o: ../CANopenNode/301/CO_TIME.c  .generated_files/5928bb374ad56339240060032311a1d4d598c6b9.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/CO_TIME.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/CO_TIME.c  -o ${OBJECTDIR}/_ext/1688412750/CO_TIME.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/CO_TIME.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o: ../CANopenNode/301/crc16-ccitt.c  .generated_files/991eddcd7791cb82f10742452811a6930af94faf.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412750" 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/301/crc16-ccitt.c  -o ${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412750/crc16-ccitt.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o: ../CANopenNode/305/CO_LSSmaster.c  .generated_files/4149e94daf6203ed41f8814ec8e1e27fd34ec766.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSmaster.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSmaster.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o: ../CANopenNode/305/CO_LSSslave.c  .generated_files/70a2cfeda747652408596c212bfad0a64c498af8.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1688412746" 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/305/CO_LSSslave.c  -o ${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1688412746/CO_LSSslave.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/398055091/CANopen.o: ../CANopenNode/CANopen.c  .generated_files/17e70539d7214b1dcb37eda73b7c87068e178abf.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/398055091" 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o.d 
	@${RM} ${OBJECTDIR}/_ext/398055091/CANopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../CANopenNode/CANopen.c  -o ${OBJECTDIR}/_ext/398055091/CANopen.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/398055091/CANopen.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/285522308/CO_driver.o: ../port/dsPIC33/CO_driver.c  .generated_files/d40a86e5f27b3e1b6e7a877543dc801044176294.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}/_ext/285522308" 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/285522308/CO_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../port/dsPIC33/CO_driver.c  -o ${OBJECTDIR}/_ext/285522308/CO_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/285522308/CO_driver.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/bootloader.o: bootloader.c  .generated_files/e552cab2401f5bfbb5d134032e886f5ae77ea9d7.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bootloader.o.d 
	@${RM} ${OBJECTDIR}/bootloader.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  bootloader.c  -o ${OBJECTDIR}/bootloader.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/bootloader.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/OD.o: OD.c  .generated_files/3532ce94a8d490fa6a36381dc737eea3dc3de53c.flag .generated_files/b7541f3291fe7b63cd41edb6d34186dc81c6e08b.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OD.o.d 
	@${RM} ${OBJECTDIR}/OD.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  OD.c  -o ${OBJECTDIR}/OD.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/OD.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99 -O0 -I"../CANopenNode" -I"../port/dsPIC33" -I"../bootloader.X" -I"../configs/generated" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -std=gnu99  -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--heap=5000,--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
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
