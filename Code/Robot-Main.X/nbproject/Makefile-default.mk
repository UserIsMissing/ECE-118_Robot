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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED="C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c" "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1578264496/AD.o ${OBJECTDIR}/_ext/1578264496/BOARD.o ${OBJECTDIR}/_ext/1578264496/IO_Ports.o ${OBJECTDIR}/_ext/1578264496/LED.o ${OBJECTDIR}/_ext/1578264496/pwm.o ${OBJECTDIR}/_ext/1578264496/serial.o ${OBJECTDIR}/_ext/1578264496/Main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1578264496/AD.o.d ${OBJECTDIR}/_ext/1578264496/BOARD.o.d ${OBJECTDIR}/_ext/1578264496/IO_Ports.o.d ${OBJECTDIR}/_ext/1578264496/LED.o.d ${OBJECTDIR}/_ext/1578264496/pwm.o.d ${OBJECTDIR}/_ext/1578264496/serial.o.d ${OBJECTDIR}/_ext/1578264496/Main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1578264496/AD.o ${OBJECTDIR}/_ext/1578264496/BOARD.o ${OBJECTDIR}/_ext/1578264496/IO_Ports.o ${OBJECTDIR}/_ext/1578264496/LED.o ${OBJECTDIR}/_ext/1578264496/pwm.o ${OBJECTDIR}/_ext/1578264496/serial.o ${OBJECTDIR}/_ext/1578264496/Main.o

# Source Files
SOURCEFILES=C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\qinyu\OneDrive\Desktop\Github Projects\ECE-118_Robot\Code\Robot-Main.X\bootloader320.ld"
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
${OBJECTDIR}/_ext/1578264496/AD.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c  .generated_files/flags/default/fe8f9f9fbe665081801d074023b87b4de2a639a8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/AD.o.d" -o ${OBJECTDIR}/_ext/1578264496/AD.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/BOARD.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c  .generated_files/flags/default/615f4e0c66074096ffd841c9199bc9971fe32ef5 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/BOARD.o.d" -o ${OBJECTDIR}/_ext/1578264496/BOARD.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/IO_Ports.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c  .generated_files/flags/default/d626b19c655fd39d060c58d3733fc930fb40cb41 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1578264496/IO_Ports.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/LED.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c  .generated_files/flags/default/4cac8a9deb53eb4704962391b69f13f0eb9b4a6a .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/LED.o.d" -o ${OBJECTDIR}/_ext/1578264496/LED.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/pwm.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c  .generated_files/flags/default/9f0467eab4ebcc52c88434b0cc718e6dc8fa4d04 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/pwm.o.d" -o ${OBJECTDIR}/_ext/1578264496/pwm.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/serial.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c  .generated_files/flags/default/717e8822ef684e87b313f9bcfcf2ad38e1905677 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/serial.o.d" -o ${OBJECTDIR}/_ext/1578264496/serial.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/Main.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c  .generated_files/flags/default/a316cfdcf2db7c9f45a7feb58e60d20ce4a259b7 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/Main.o.d" -o ${OBJECTDIR}/_ext/1578264496/Main.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1578264496/AD.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c  .generated_files/flags/default/450a8f9247d53b22a5c6f39880899bf86df1b1ce .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/AD.o.d" -o ${OBJECTDIR}/_ext/1578264496/AD.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/AD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/BOARD.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c  .generated_files/flags/default/b642e30324c2430e53e3389b314ad474e7953326 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/BOARD.o.d" -o ${OBJECTDIR}/_ext/1578264496/BOARD.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/BOARD.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/IO_Ports.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c  .generated_files/flags/default/2348804f5148b6462bf42bfd7b616f3bf17a1852 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1578264496/IO_Ports.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/IO_Ports.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/LED.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c  .generated_files/flags/default/67cc67fc03630c42d93c776c2b53e3d0788049e6 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/LED.o.d" -o ${OBJECTDIR}/_ext/1578264496/LED.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/LED.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/pwm.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c  .generated_files/flags/default/3d753435a1e62f4bb5b2d949a500894550e6b31 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/pwm.o.d" -o ${OBJECTDIR}/_ext/1578264496/pwm.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/pwm.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/serial.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c  .generated_files/flags/default/206ac3171990c764d9319954f82757d5e9f6403b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/serial.o.d" -o ${OBJECTDIR}/_ext/1578264496/serial.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/serial.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1578264496/Main.o: C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c  .generated_files/flags/default/c956880f5f679f2f498ddd2c8a3786647edaa7e8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/1578264496" 
	@${RM} ${OBJECTDIR}/_ext/1578264496/Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1578264496/Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"../../0-ECE118/ECE118/include/." -I"." -MP -MMD -MF "${OBJECTDIR}/_ext/1578264496/Main.o.d" -o ${OBJECTDIR}/_ext/1578264496/Main.o "C:/Users/qinyu/OneDrive/Desktop/Github Projects/ECE-118_Robot/Code/Robot-Main.X/Main.c"    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/qinyu/OneDrive/Desktop/Github\ Projects/ECE-118_Robot/Code/Robot-Main.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/Robot-Main.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
