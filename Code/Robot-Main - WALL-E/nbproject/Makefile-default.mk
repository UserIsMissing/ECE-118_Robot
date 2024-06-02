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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/d60371bb6fd68d6564389d9b41afa09501fd3ab4 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/91130bfba9a90282fba0306a80b644085c91c536 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/26f2a320a9df65e4552e9a39310390e17d1d68c .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/716194d58fad5a89ff315ac047fc295ec3db64e5 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/ea73633ab140b10f094fe6023cd2016febe6bd8a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/122acd9d2372061f4f9c91ea0fe963bc0ac5bf98 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/29074bd96686e4af7b4a6373f4f7ea2b483204b8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/30a1b57c9a302f670a86fa61b0cfa2b7acc4e520 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/b7c204d0aa6172f7ed3669eb179a247b7a688f44 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/ea1edc90dcd7fe485ca3ce6c044b62e1a1d1e18f .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/244e5d33f3d9eeb28b12113c03cb0f272fae9a3d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/e4a4a28b8d55fea0e3154727c56bc06860483629 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/d3c830832fb54e996efda1c0166e744d33fc5078 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/460c78094becc764c707553b583c1650ad244841 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/de2c2f5e9538747ccddd08ecb3aa1f14092fbfcb .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/32c4491efd43199fc5f7111a83537594599e16da .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/272dfb420cb5300d64703f5f306985be09e9354f .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/3440fd34c3008ff8cfa7f7ccc08ae06494762aa4 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/dda13b29231935d6b22c72e049a7878f24a53eab .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/9eefa4227555739d43da8d7aa5e892bb01e32a88 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/416b5536594b7e86764490b91e23858854e242d3 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/e6d3196679c4f45cefa808b26fdb157b56dbd7b8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/24f21641ce65b7e7e78c5833cce35b45bb821f84 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/303b9b6a7565d60259c2cad9121d92ed34352437 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/dba2808f660e76a11a871947e2046d5ed096e486 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/d67349e00cf89f2a3058cc58fd042e2f2758796f .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/41eb564690d4eb54bd0299ee99a64217f847a056 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/6f07588ec755ca754a4de1ae5f75169d2b22a9fe .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/8bbbfb935b27042810585e9e0eb2ecb9d144ea22 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/c9a345c6e6ea5f675bb833a9ac0a6e10ffc742f7 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/28da4d58a6cd39d44d6925aaabb2ffa99173c1bd .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/c0d48461de931ec0d02b05053b18e70eb03cce1a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/4389c3b3c276bb7af871d6e916993819cedad690 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/ed69865320d72f849f1f7834adae0ca3c9a0f471 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/979469c869a85435a63e5759384b22e85d203ab8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/95fe85a28e9aefb54b527cf331920818b048c7c .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/65daee6e0502c2d4b7f1b4bc6b9139dbb4f6b418 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/da12d568766d89c10554fb4ecdab1eb58e80d358 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/761286ac26f82bee927f6f3def1fbe070c3cc7d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/dd6dddfcc69fc69ed7ca4a23054b42f47260587e .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
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
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main_-_WALL-E.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
