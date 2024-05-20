/* 
This file is used to include all the necessary header files for the project.
*/


/* ------------------   HEADERS   ------------------ */
#include <stdio.h>
#include <stdlib.h>
#include <BOARD.h>
#include <serial.h>
#include <AD.h>
#include <pwm.h>
#include <IO_Ports.h>
#include <LED.h>
#include <ES_Configure.h>
#include <ES_Framework.h>
#include <TemplateService.h>
#include <ES_CheckEvents.h>  // not needed for this project?
#include <TemplateHSM.h>
#include <TemplateSubHSM.h>
#include <ES_Timers.h>
#include <TemplateEventChecker.h>
#include <ES_Events.h>
#include <ES_General.h>


/* ------------------   DEFINES  ----------------- */
// #define TRACKWIRE_PIN AD_PORTV8
// #define Tape_Pins_FL ((PORTV) & PIN3)
// #define Tape_Pins_FR ((PORTV) & PIN5)
// #define Tape_Pins_RL ((PORTV) & PIN7)


/* ------------------   TESTS   ------------------ */
// #define MOTORTEST
// #define IRTEST
// #define BEACONTEST
// #define IOTEST
// #define TRACKWIRETEST


/* ------------------   EVENTS TESTS   ------------------ */
// #define TAPE_SENSOR_WORKING
#define TAPE_SENSOR_BITMASK


/* ------------------   EVENTS DEFINES   ------------------ */
#define TAPE_FL_MASK 0b001
#define TAPE_FR_MASK 0b010
#define TAPE_RL_MASK 0b100