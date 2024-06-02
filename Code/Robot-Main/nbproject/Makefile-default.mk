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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/ae9fcfe527bb28165e06727ae4022f11c022ff71 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/dd1d8bdad1f85ff7dcba38bb7957eb663eccd6ee .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/673880eb103dfcda1986ff084d5799ee301e015b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/73782a385c78f43e03fbef147ae01bed7c6c5ec0 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/90b1bbf2decbb20d6d7f0a5c82173587db5ca20d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/475a30f38fd9dd6064dcb548339664fd1e164e04 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/a9573b76ac57aeedd4e1a219e215725f65a7579b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/94ab144c548b35cb1fa80f9affa8128f912929c6 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/5ca9f269b32dbfec8d4871844e4c9ee2617c3e26 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/747d23c3c29b28036d9db0f1b813269e079ed5f8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/7ad3e30f62e8aed1d0148f92277da9709c9f3a29 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/ba3a0fd78d53c9a54e5a2cf5f79e1a604b82b3b0 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/bd8324aa9eddad82846c1b5596a6ed951900c818 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/3caa09b00a0a1f93eb8a2a6230509719c54119aa .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/936d40cebf66a4bfc9a0b19b48570010b2539a74 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/b9104c103e22ff702f78e6a09aeb7e2a89133bfb .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/b773fd825438fcf5966141f075ccfa7a3f3694af .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/c6412fac669c5e8a102dc9893272b47c59b361bd .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/cfdafcd73b276c2f601f1dcf4ef07ba97f28ad3b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/b739c10e6df0b53da5bfc3d38291d8fc0aefcedd .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/timers.o.d" -o ${OBJECTDIR}/timers.o timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/AD.o: AD.c  .generated_files/flags/default/a0021efd39254bab01c7aa93c83dffab5f13fbad .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AD.o.d 
	@${RM} ${OBJECTDIR}/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/AD.o.d" -o ${OBJECTDIR}/AD.o AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/3ba814dd975eea316c2a09ccf8d170a48f3744de .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/IO_Ports.o: IO_Ports.c  .generated_files/flags/default/e969c30ef30530d4fb268d2cea7a93602683aa0d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/IO_Ports.o.d" -o ${OBJECTDIR}/IO_Ports.o IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Main_Test.o: Main_Test.c  .generated_files/flags/default/bd63e21e4958eefc2ea42fc41018346c91d3b51b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/Main_Test.o.d" -o ${OBJECTDIR}/Main_Test.o Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/pwm.o: pwm.c  .generated_files/flags/default/5eb81bc0fc47517623d337233ece85e62263ce28 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pwm.o.d 
	@${RM} ${OBJECTDIR}/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/pwm.o.d" -o ${OBJECTDIR}/pwm.o pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/serial.o: serial.c  .generated_files/flags/default/4f7aaedf596d7b9e3197f005508190f19eb0bbd2 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/serial.o.d 
	@${RM} ${OBJECTDIR}/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/serial.o.d" -o ${OBJECTDIR}/serial.o serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/LED.o: LED.c  .generated_files/flags/default/12ca5bd579dc299f72728735d1ed0983bbdcabfe .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/LED.o.d 
	@${RM} ${OBJECTDIR}/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/LED.o.d" -o ${OBJECTDIR}/LED.o LED.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_CheckEvents.o: ES_CheckEvents.c  .generated_files/flags/default/fdd0042864a04917c00aeebd6d542cfabef308df .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_CheckEvents.o.d" -o ${OBJECTDIR}/ES_CheckEvents.o ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Framework.o: ES_Framework.c  .generated_files/flags/default/1765f6a7748b6a809bca590c39d67c6d063025a7 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Framework.o.d" -o ${OBJECTDIR}/ES_Framework.o ES_Framework.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateHSM.o: TemplateHSM.c  .generated_files/flags/default/556b05e8fc96f002c6b39032c999818c599d387e .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateHSM.o.d" -o ${OBJECTDIR}/TemplateHSM.o TemplateHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateService.o: TemplateService.c  .generated_files/flags/default/99c9f5141905e05be5542deaf0cc927ec9d3c118 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.o.d 
	@${RM} ${OBJECTDIR}/TemplateService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateService.o.d" -o ${OBJECTDIR}/TemplateService.o TemplateService.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateSubHSM.o: TemplateSubHSM.c  .generated_files/flags/default/8416f88e204aed964e7070ec312049ac7c11c70d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o.d 
	@${RM} ${OBJECTDIR}/TemplateSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateSubHSM.o.d" -o ${OBJECTDIR}/TemplateSubHSM.o TemplateSubHSM.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/TemplateEventChecker.o: TemplateEventChecker.c  .generated_files/flags/default/3e049aea57398554eb778cc4b71c31b881a14398 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o.d 
	@${RM} ${OBJECTDIR}/TemplateEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/TemplateEventChecker.o.d" -o ${OBJECTDIR}/TemplateEventChecker.o TemplateEventChecker.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_KeyboardInput.o: ES_KeyboardInput.c  .generated_files/flags/default/274cd0f9214c2612bc2f505b061c86016bba355d .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/ES_KeyboardInput.o ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_PostList.o: ES_PostList.c  .generated_files/flags/default/2d8c5bd88c163092cf4a12f84ede16e7bffabfbb .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_PostList.o.d" -o ${OBJECTDIR}/ES_PostList.o ES_PostList.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Queue.o: ES_Queue.c  .generated_files/flags/default/d2ba8f7a4135e4c859e9e18858f4e218bb102ee3 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Queue.o.d" -o ${OBJECTDIR}/ES_Queue.o ES_Queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_TattleTale.o: ES_TattleTale.c  .generated_files/flags/default/ca393590ff52c75640f045df356cd1fec98b8fda .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_TattleTale.o.d" -o ${OBJECTDIR}/ES_TattleTale.o ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ES_Timers.o: ES_Timers.c  .generated_files/flags/default/2f60aaf02f7ba7da8c0cf5686fa427591db50eaa .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/ES_Timers.o.d" -o ${OBJECTDIR}/ES_Timers.o ES_Timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/RC_Servo.o: RC_Servo.c  .generated_files/flags/default/7a9be0a44c7e73323a657683ec9b6c315b9697 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/RC_Servo.o.d" -o ${OBJECTDIR}/RC_Servo.o RC_Servo.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/flags/default/26ceec931ba52fa0afe1aeee8a6fe107f68ddce .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
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
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../0-ECE118/ECE118/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
