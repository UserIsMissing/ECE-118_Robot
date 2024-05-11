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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/523623261/AD.o ${OBJECTDIR}/_ext/523623261/BOARD.o ${OBJECTDIR}/_ext/523623261/IO_Ports.o ${OBJECTDIR}/_ext/523623261/pwm.o ${OBJECTDIR}/_ext/523623261/serial.o ${OBJECTDIR}/_ext/523623261/Main_Test.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/523623261/AD.o.d ${OBJECTDIR}/_ext/523623261/BOARD.o.d ${OBJECTDIR}/_ext/523623261/IO_Ports.o.d ${OBJECTDIR}/_ext/523623261/pwm.o.d ${OBJECTDIR}/_ext/523623261/serial.o.d ${OBJECTDIR}/_ext/523623261/Main_Test.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/523623261/AD.o ${OBJECTDIR}/_ext/523623261/BOARD.o ${OBJECTDIR}/_ext/523623261/IO_Ports.o ${OBJECTDIR}/_ext/523623261/pwm.o ${OBJECTDIR}/_ext/523623261/serial.o ${OBJECTDIR}/_ext/523623261/Main_Test.o

# Source Files
SOURCEFILES=C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\Users\qinyu\OneDrive\Desktop\ECE-118_Robot\Code\H-Bridge-Testing.X\bootloader320.ld"
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
${OBJECTDIR}/_ext/523623261/AD.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c  .generated_files/flags/default/80c15892b2e0de4abdf32877e26dcfe4a831d102 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/AD.o.d" -o ${OBJECTDIR}/_ext/523623261/AD.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/BOARD.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c  .generated_files/flags/default/4395919f91a5eccf88a1acd7aec50ef19fd38ee8 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/BOARD.o.d" -o ${OBJECTDIR}/_ext/523623261/BOARD.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/IO_Ports.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c  .generated_files/flags/default/a0fcef47825969f04e5fb5d5740e45dfb468d1b4 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/523623261/IO_Ports.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/pwm.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c  .generated_files/flags/default/972605369fd24e13e34fe7648a7a7587ec8709b0 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/pwm.o.d" -o ${OBJECTDIR}/_ext/523623261/pwm.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/serial.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c  .generated_files/flags/default/aa714e4c59982574fce53195c3bed466cfbd02da .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/serial.o.d" -o ${OBJECTDIR}/_ext/523623261/serial.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/Main_Test.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c  .generated_files/flags/default/20589b79d7f089d584110e59995478e61374015b .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/Main_Test.o.d" -o ${OBJECTDIR}/_ext/523623261/Main_Test.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/523623261/AD.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c  .generated_files/flags/default/50050f736b1f17eb3e81bde2810dd742c4f09bc3 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/AD.o.d" -o ${OBJECTDIR}/_ext/523623261/AD.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/AD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/BOARD.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c  .generated_files/flags/default/b82dac94a373244bfe5c06756474fff9494f4c56 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/BOARD.o.d" -o ${OBJECTDIR}/_ext/523623261/BOARD.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/BOARD.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/IO_Ports.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c  .generated_files/flags/default/2438a9acac83eab057630fac4cd2721bcf3745a2 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/523623261/IO_Ports.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/IO_Ports.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/pwm.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c  .generated_files/flags/default/7b56d632d0db68a307a3f8ab86550e29850d3bf5 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/pwm.o.d" -o ${OBJECTDIR}/_ext/523623261/pwm.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/pwm.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/serial.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c  .generated_files/flags/default/e64bff9a0dd5ceaaf884ac2b65a745176de95627 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/serial.o.d" -o ${OBJECTDIR}/_ext/523623261/serial.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/serial.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/523623261/Main_Test.o: C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c  .generated_files/flags/default/fa06046d5203217ed7d386376f94272eb573e3e9 .generated_files/flags/default/7bbc18c9c1b59fb3416eeccc3e8acd231fd6e936
	@${MKDIR} "${OBJECTDIR}/_ext/523623261" 
	@${RM} ${OBJECTDIR}/_ext/523623261/Main_Test.o.d 
	@${RM} ${OBJECTDIR}/_ext/523623261/Main_Test.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../../0-ECE118/ECE118/include/." -MP -MMD -MF "${OBJECTDIR}/_ext/523623261/Main_Test.o.d" -o ${OBJECTDIR}/_ext/523623261/Main_Test.o C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/Main_Test.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/Users/qinyu/OneDrive/Desktop/ECE-118_Robot/Code/H-Bridge-Testing.X/bootloader320.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/H-Bridge-Testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
