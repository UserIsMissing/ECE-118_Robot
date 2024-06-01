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

#define ES_TAPESENSORS ((ThisEvent.EventType == ES_TAPESENSOR_FL) || (ThisEvent.EventType == ES_TAPESENSOR_FR) || (ThisEvent.EventType == ES_TAPESENSOR_RL) || (ThisEvent.EventType == ES_TAPESENSOR_RR))
#define ES_TAPESENSORS_FRONT ((ThisEvent.EventType == ES_TAPESENSOR_FL) || (ThisEvent.EventType == ES_TAPESENSOR_FR))
#define ES_TAPESENSORS_REAR ((ThisEvent.EventType == ES_TAPESENSOR_RL) || (ThisEvent.EventType == ES_TAPESENSOR_RR))

/* ------------------   EVENTS DEFINES   ------------------ */
#define TRACK_WIRE_VALUE 900

#define BUMP_FL_MASK 0b0001
#define BUMP_FR_MASK 0b0010
#define BUMP_BOTH_MASK 0b11
#define TAPE_FL_MASK 0b001
#define TAPE_FR_MASK 0b010
#define TAPE_RL_MASK 0b100
#define TAPE_BOTH_FRONT_MASK 0b011
// #define TAPE_BOTH_REAR_MASK 0b1100
#define TAPE_BOTH_LEFT_MASK 0b101

#define TAPE_RR_MASK 0b1

#define WALL_FL_MASK 0b0001
#define WALL_FR_MASK 0b0010
#define WALL_RR_MASK 0b0100
#define WALL_RL_MASK 0b1000
#define WALL_BOTH_FRONT_MASK 0b0110
#define WALL_BOTH_LEFT_MASK 0b0101

#define WALL_LEFT_TOO_CLOSE 40 // For snake, when bot is too close to the wall, it will turn right slightly (into the wall)
#define WALL_LEFT_TOO_FAR 1000 // For snake, when bot is too far from the wall, it will turn left slightly  (away from the wall)

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
AD_PORTV4 - Trackwire Sensor

PORTZ, PIN3 - Front Left Bumper Switch
PORTZ, PIN4 - Front Right Bumper Switch

PORTV, PIN3 - Front Left Tape Sensor
PORTV, PIN5 - Front Right Tape Sensor
PORTV, PIN7 - Rear Left Tape Sensor
PORTV, PIN8 - Rear Right Tape Sensor

PORTW, PIN3 - Front Left Wall Sensor
PORTW, PIN5 - Front Right Wall Sensor
PORTW, PIN7 - Rear Right Wall Sensor (Really more like Right Right Wall Sensor)
PORTW, PIN8 - Rear Right Wall Sensor (Really more like Right Right Wall Sensor)
// AD_PORTV8   - Rear Left Wall Sensor  (Really more like Left Left Wall Sensor)

PORTW, PIN4 - Wall sensor for the back gate

PORTY, PIN3 - Motor Direction Control
PORTY, PIN4 - Motor Direction Control
PORTZ, PIN7 - Motor Direction Control
PORTZ, PIN8 - Motor Direction Control

PORTZ, PIN6 - PWM out to control H Bridge
PORTV, PIN5 | PIN6 - Digital Outs to In1 and In2
PORTV, PIN7 - In from Limit Switch
*/

#endif /* INCLUDEHEADERS_H */