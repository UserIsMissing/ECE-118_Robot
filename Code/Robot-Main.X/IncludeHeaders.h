/*****************************************************************************************
This file is used to include all the necessary header files for the project.
*****************************************************************************************/

#ifndef INCLUDEHEADERS_H
#define INCLUDEHEADERS_H

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
#include <TemplateEventChecker.h>
#include <TemplateService.h>
#include <ES_CheckEvents.h>
// #include <TemplateFSM.h>
#include <TemplateHSM.h>
#include <TemplateSubHSM.h>
#include <ES_Timers.h>
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
#define WALL_SENSOR_BITMASK


/* ------------------   EVENTS DEFINES   ------------------ */
#define TRACK_WIRE_VALUE 900

#define TAPE_FL_MASK 0b001
#define TAPE_FR_MASK 0b010
#define TAPE_RL_MASK 0b100
#define TAPE_BOTH_FRONT_MASK 0b110


/* ------------------   MOTOR DEFINES   ------------------ */
#define MOTOR_MINIMUM -1000
#define MOTOR_MAXIMUM 1000 

// Setting the pins for the motors HIGH and LOW
#define LEFT_PIN1_HIGH IO_PortsWritePort(PORTY, PIN3)
#define LEFT_PIN2_HIGH IO_PortsWritePort(PORTY, PIN4)

#define LEFT_PIN1_LOW IO_PortsClearPortBits(PORTY, PIN3)
#define LEFT_PIN2_LOW IO_PortsClearPortBits(PORTY, PIN4)

#define RIGHT_PIN1_HIGH IO_PortsWritePort(PORTZ, PIN7)
#define RIGHT_PIN2_HIGH IO_PortsWritePort(PORTZ, PIN8)

#define RIGHT_PIN1_LOW IO_PortsClearPortBits(PORTZ, PIN7)
#define RIGHT_PIN2_LOW IO_PortsClearPortBits(PORTZ, PIN8)

#define LEFT_PWM PWM_PORTY10
#define RIGHT_PWM PWM_PORTY12


/* ------------------   LIST OF USED PINS   ------------------ 
AD_PORTV8 - Trackwire Sensor

PORTV, PIN3 - Front Left Tape Sensor
PORTV, PIN5 - Front Right Tape Sensor
PORTV, PIN7 - Rear Left Tape Sensor

PORTW, PIN3 - Front Left Wall Sensor
PORTW, PIN5 - Front Right Wall Sensor
PORTW, PIN7 - Rear Left Wall Sensor

PORTY, PIN3 - Motor Direction Control
PORTY, PIN4 - Motor Direction Control
PORTZ, PIN7 - Motor Direction Control
PORTZ, PIN8 - Motor Direction Control

PORTZ, PIN6 - PWM out to control H Bridge
PORTV, PIN5 | PIN6 - Digital Outs to In1 and In2
PORTV, PIN7 - In from Limit Switch
*/


#endif /* INCLUDEHEADERS_H */