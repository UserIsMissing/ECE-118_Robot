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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=AD.c BOARD.c IO_Ports.c Main_Test.c pwm.c serial.c LED.c ES_CheckEvents.c ES_Framework.c TemplateHSM.c TemplateService.c TemplateSubHSM.c TemplateEventChecker.c ES_KeyboardInput.c ES_PostList.c ES_Queue.c ES_TattleTale.c ES_Timers.c RC_Servo.c timers.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/AD.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/IO_Ports.o ${OBJECTDIR}/Main_Test.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/LED.o ${OBJECTDIR}/ES_CheckEvents.o ${OBJECTDIR}/ES_Framework.o ${OBJECTDIR}/TemplateHSM.o ${OBJECTDIR}/TemplateService.o ${OBJECTDIR}/TemplateSubHSM.o ${OBJECTDIR}/TemplateEventChecker.o ${OBJECTDIR}/ES_KeyboardInput.o ${OBJECTDIR}/ES_PostList.o ${OBJECTDIR}/ES_Queue.o ${OBJECTDIR}/ES_TattleTale.o ${OBJECTDIR}/ES_Timers.o ${OBJECTDIR}/RC_Servo.o ${OBJECTDIR}/timers.o
POSSIBLE_DEPFILES=${OBJECTDIR}/AD.o.d ${OBJECTDIR}/BOARD.o.d ${OBJECTDIR}/IO_Ports.o.d ${OBJECTDIR}/Main_Test.o.d ${OBJECTDIR}/pwm.o.d ${OBJECTDIR}/serial.o.d ${OBJECTDIR}/LED.o.d ${OBJECTDIR}/ES_CheckEvents.o.d ${OBJECTDIR}/ES_Framework.o.d ${OBJECTDIR}/TemplateHSM.o.d ${OBJECTDIR}/TemplateService.o.d ${OBJECTDIR}/TemplateSubHSM.o.d ${OBJECTDIR}/TemplateEventChecker.o.d ${OBJECTDIR}/ES_KeyboardInput.o.d ${OBJECTDIR}/ES_PostList.o.d ${OBJECTDIR}/ES_Queue.o.d ${OBJECTDIR}/ES_TattleTale.o.d ${OBJECTDIR}/ES_Timers.o.d ${OBJECTDIR}/RC_Servo.o.d ${OBJECTDIR}/timers.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/AD.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/IO_Ports.o ${OBJECTDIR}/Main_Test.o ${OBJECTDIR}/pwm.o ${OBJECTDIR}/serial.o ${OBJECTDIR}/LED.o ${OBJECTDIR}/ES_CheckEvents.o ${OBJECTDIR}/ES_Framework.o ${OBJECTDIR}/TemplateHSM.o ${OBJECTDIR}/TemplateService.o ${OBJECTDIR}/TemplateSubHSM.o ${OBJECTDIR}/TemplateEventChecker.o ${OBJECTDIR}/ES_KeyboardInput.o ${OBJECTDIR}/ES_PostList.o ${OBJECTDIR}/ES_Queue.o ${OBJECTDIR}/ES_TattleTale.o ${OBJECTDIR}/ES_Timers.o ${OBJECTDIR}/RC_Servo.o ${OBJECTDIR}/timers.o

# Source Files
SOURCEFILES=AD.c BOARD.c IO_Ports.c Main_Test.c pwm.c serial.c LED.c ES_CheckEvents.c ES_Framework.c TemplateHSM.c TemplateService.c TemplateSubHSM.c TemplateEventChecker.c ES_KeyboardInput.c ES_PostList.c ES_Queue.c ES_TattleTale.c ES_Timers.c RC_Servo.c timers.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="..\..\0-ECE118\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/9ef92d71f8c8df36bfd091e3c8998e6c462a052c .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/596297ea24204228858ae3cf45e39089ae486743 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/e3b12428fc3e8f47b3d90a127343bc17588965bf .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/894359038b92db70497ff474f1cd85b758f983cc .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/39768a4b015b496bedaa61c8a2fc86e9470e2b36 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/1c8bd71c08efbeb62aa28b335526c791b81fcd .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/42b19e7d7ad223afd383ecca14d2f0e67bf3bfbb .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/6a99d1ec9867118e468df9e68d52ddfd0cdaae64 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/860ebb58f841f4ce11d507c8a93ee6ea2a2f5916 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/d515d5e4ef221e9b6b7ffd9ffc1efdd1f8bf1bfb .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/51ec087ac89bc395ec6ca2debd7f6e87011c8925 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/6ced51b09911bf1963c148b2c0086150e6bed802 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/604da85555d772c72476eeac5523e9789fa1d4b6 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/7ca5c4ae2450c41d21dafa376bae4970efe088b1 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/b1ce298b9a52bf112ac2e3c612aa5ab72a4cb048 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/5c96fdb60997eecb278a6c0f928134c30903b058 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/79f23d1abe199acffd1eefd5c541f84f63ec30db .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/8c25d6b7cca6fb02405160b40db12ef3ea4e1ab7 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/584bd267b1f29d0046d25b3f1eba42d12dde8442 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/eb0ebb1f7b277eff6574cd0224aa9a873f49a405 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/de0efc9deb62d877b78e641fd005c9cbae7e812c .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/727c0c110d3325cf40ab3ae4a6eecb15e1bb015 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/d9d62329f458f15be97251a0d588b5103214594 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/516deb9df12ded948439d0e597f3c3cead4b68dc .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/7da5302107dd845298f6256bfb518b376005480a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/cb68ba340d36ab3a82ad1985ca2dd0df36d56d1f .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/7cd465e15e8ffb35af7df87d24d8b4cfcce070a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/d51546deb2cb001b03d8aa1df357ab9dd60f4fc8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/5e4b0eac703bcb75fbdfd84745264d2590ef564 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/8ccf9c51466b4cc0f0c8afd20f3bb31d609a930f .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/f82db9fa33b421d7eb35a84ecc93301800aa5153 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/c560f1fb599b96337a41be584ade56e51e0fb153 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/2c19aaf8ccad07c66e3d60c4aa620e7e8017b93a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/7bae82d222d04e6614e20c59d8645c19699a1e62 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/95546c0a95f6b373a3fa6a8e4038bc76a91f5143 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/1f59f991f92210e790af745f32a9358328a955b2 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/d0952bbd88149fef8d1d35f35e27a04a434aebc8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/7e46fb67a9a80ad346e29c4e7247e51c771649cf .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/ba2cd0633a865558cc7e9d635a5b44e37f086ef .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/5daa22c95c21872371406623dc29ecfe6b3d1355 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E_2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
