/*
 * File:   TemplateEventChecker.c
 * Author: Gabriel Hugh Elkaim
 *
 * Template file to set up typical EventCheckers for the  Events and Services
 * Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the
 * names will have to be changed to match your code.
 *
 * This EventCheckers file will work with both FSM's and HSM's.
 *
 * Remember that EventCheckers should only return TRUE when an event has occured,
 * and that the event is a TRANSITION between two detectable differences. They
 * should also be atomic and run as fast as possible for good results.
 *
 * This file includes a test harness that will run the event detectors listed in the
 * ES_Configure file in the project, and will conditionally compile main if the macro
 * EVENTCHECKER_TEST is defined (either in the project or in the file). This will allow
 * you to check you event detectors in their own project, and then leave them untouched
 * for your project unless you need to alter their post functions.
 *
 * Created on September 27, 2013, 8:37 AM
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include <TemplateEventChecker.h>
#include "ES_Events.h"
#include "serial.h"
#include "AD.h"
#include "IncludeHeaders.h"

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/
#define BATTERY_DISCONNECT_THRESHOLD 175
// #define TRACK_WIRE_VALUE 500

/*******************************************************************************
 * EVENTCHECKER_TEST SPECIFIC CODE                                                             *
 ******************************************************************************/

// #define EVENTCHECKER_TEST
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
#define SaveEvent(x)          \
    do                        \
    {                         \
        eventName = __func__; \
        storedEvent = x;      \
    } while (0)

static const char *eventName;
static ES_Event storedEvent;
#endif

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this EventChecker. They should be functions
   relevant to the behavior of this particular event checker */

/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                    *
 ******************************************************************************/

/* Any private module level variable that you might need for keeping track of
   events would be placed here. Private variables should be STATIC so that they
   are limited in scope to this module. */

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function TemplateCheckBattery(void)
 * @param none
 * @return TRUE or FALSE
 * @brief This function is a prototype event checker that checks the battery voltage
 *        against a fixed threshold (#defined in the .c file). Note that you need to
 *        keep track of previous history, and that the actual battery voltage is checked
 *        only once at the beginning of the function. The function will post an event
 *        of either BATTERY_CONNECTED or BATTERY_DISCONNECTED if the power switch is turned
 *        on or off with the USB cord plugged into the Uno32. Returns TRUE if there was an
 *        event, FALSE otherwise.
 * @note Use this code as a template for your other event checkers, and modify as necessary.
 * @author Gabriel H Elkaim, 2013.09.27 09:18
 * @modified Gabriel H Elkaim/Max Dunne, 2016.09.12 20:08 */
uint8_t TemplateCheckBattery(void)
{
    static ES_EventTyp_t lastEvent = BATTERY_DISCONNECTED;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t batVoltage = AD_ReadADPin(BAT_VOLTAGE); // read the battery voltage

    if (batVoltage > BATTERY_DISCONNECT_THRESHOLD)
    { // is battery connected?
        curEvent = BATTERY_CONNECTED;
    }
    else
    {
        curEvent = BATTERY_DISCONNECTED;
    }
    if (curEvent != lastEvent)
    { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = batVoltage;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST     // keep this as is for test harness
        // PostGenericService(thisEvent);
        // PostTemplateService(thisEvent);
        PostTemplateHSM(thisEvent);
        // PostTemplateFSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);
}

/*******************************************************************************
 * BUMPERS                                                                     *
 ******************************************************************************/
uint8_t Bumper_FL(void)
{
    return ((IO_PortsReadPort(PORTZ) & PIN3) >> 3); // read the Front bumper
}
uint8_t Bumper_FR(void)
{
    return ((IO_PortsReadPort(PORTZ) & PIN4) >> 4); // read the Front bumper
}
uint8_t Bumper_AllBits(void)
{
    return (Bumper_FL() | (Bumper_FR() << 1));
}

uint8_t Read_Bumpers(void)
{
    static ES_EventTyp_t lastEvent = ES_BUMPERS;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t Bumpers = Bumper_AllBits();

    if (Bumpers == BUMP_FL_MASK || Bumpers == BUMP_FR_MASK)
    {
        // printf("Bumper %d \r\n", Bumpers);
        curEvent = ES_BUMPERS;
    }
    else
    {
        curEvent = ES_NO_EVENT;
    }

    if (curEvent != lastEvent)
    { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = Bumpers;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST     // keep this as is for test harness
        // PostGenericService(thisEvent);
        // PostTemplateService(thisEvent);
        PostTemplateHSM(thisEvent);
        // PostTemplateFSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);    
}

/*******************************************************************************
 * TRACK WIRE SENSOR                                                           *
 ******************************************************************************/
uint8_t Read_TrackWireSensor(void)
{
    static ES_EventTyp_t lastEvent = TRACKWIRE_NOT_DETECTED;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;
    uint16_t trackWireValue = AD_ReadADPin(AD_PORTV4); // read the track wire sensor

    // printf("Track Wire Detected: %d \r\n", trackWireValue);
    if (trackWireValue > TRACK_WIRE_VALUE)
    { // is track wire detected?
        // printf("Track Wire Detected: %d \r\n", trackWireValue);
        // printf("TRACKWIRE\r\n");
        curEvent = TRACKWIRE_DETECTED;
    }
    else
    {
        curEvent = TRACKWIRE_NOT_DETECTED;
    }
    if (curEvent != lastEvent)
    { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = trackWireValue;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST     // keep this as is for test harness
        // PostGenericService(thisEvent);
        // PostTemplateService(thisEvent);
        PostTemplateHSM(thisEvent);
        // PostTemplateFSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);
}

/*******************************************************************************
 * TAPE SENSOR WITH BITMASK                                                    *
 ******************************************************************************/
uint8_t TapeSensor_FL(void)
{
    return ((IO_PortsReadPort(PORTV) & PIN3) >> 3); // read the Front Left tape sensor
}

uint8_t TapeSensor_FR(void)
{
    return ((IO_PortsReadPort(PORTV) & PIN5) >> 5); // read the Front Right tape sensor
}

uint8_t TapeSensor_RL(void)
{
    return ((IO_PortsReadPort(PORTV) & PIN7) >> 7); // read the Rear Left tape sensor
}

uint8_t TapeSensor_RR(void)
{
    return ((IO_PortsReadPort(PORTV) & PIN8) >> 8); // read the Rear Right tape sensor
}

uint8_t TapeSensors_AllBits(void)
{
    return (TapeSensor_FL() | (TapeSensor_FR() << 1) | (TapeSensor_RL() << 2) | TapeSensor_RR() << 3);
}

uint8_t TapeSensors_ReadAll(void)
{
    static ES_EventTyp_t lastEvent = ES_TAPESENSORS;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    uint16_t TapeSensors = TapeSensors_AllBits();
    //printf("\r\nmask:%d",TapeSensors);

    // if (TapeSensors != 0)
    if ((TapeSensors == TAPE_FL_MASK) || (TapeSensors == TAPE_FR_MASK) || (TapeSensors == TAPE_RL_MASK) || (TapeSensors == TAPE_RR_MASK) || (TapeSensors == TAPE_BOTH_FRONT_MASK))
    {
        //printf("\r\nEVENT!!! Tape Sensor %d", TapeSensors);
        curEvent = ES_TAPESENSORS;
    }
    else
    {
        curEvent = ES_NO_EVENT;
    }

    if (curEvent != lastEvent)
    { // check for change from last time
        // printf("\r\nEVENT: %d", thisEvent.EventParam);

        thisEvent.EventType = curEvent;
        thisEvent.EventParam = TapeSensors;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST     // keep this as is for test harness
        // PostGenericService(thisEvent);
        // PostTemplateService(thisEvent);
        PostTemplateHSM(thisEvent);
        // PostTemplateFSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);
}

/*******************************************************************************
 * WALL SENSOR WITH BITMASK                                                    *
 ******************************************************************************/
uint8_t WallSensor_FL(void)
{
    return !((IO_PortsReadPort(PORTW) & PIN3) >> 3); // read the Front Left wall sensor
}

uint8_t WallSensor_FR(void)
{
    return !((IO_PortsReadPort(PORTW) & PIN5) >> 5); // read the Front Right wall sensor
}

uint8_t WallSensor_RR(void)
{
    return !((IO_PortsReadPort(PORTW) & PIN7) >> 7); // read the Rear Right wall sensor
}

uint8_t WallSensor_RL(void)
{
    return !((IO_PortsReadPort(PORTW) & PIN8) >> 8); // read the Rear Right wall sensor
}

uint8_t WallSensors_AllBits(void)
{
    return (WallSensor_FL() | (WallSensor_FR() << 1) | (WallSensor_RR() << 2) | (WallSensor_RL() << 3));
}

uint8_t WallSensors_ReadAll(void)
{
    static ES_EventTyp_t lastEvent = ES_WALLSENSORS;
    ES_EventTyp_t curEvent;
    ES_Event thisEvent;
    uint8_t returnVal = FALSE;

    uint16_t WallSensors = WallSensors_AllBits();

    if (WallSensors != 0)
    {
        //printf("Wall Sensor %d \r\n", WallSensors);
        curEvent = ES_WALLSENSORS;
    }
    else
    {
        curEvent = ES_NO_EVENT;
    }

    if (curEvent != lastEvent)
    { // check for change from last time
        thisEvent.EventType = curEvent;
        thisEvent.EventParam = WallSensors;
        returnVal = TRUE;
        lastEvent = curEvent; // update history
#ifndef EVENTCHECKER_TEST     // keep this as is for test harness
        // PostGenericService(thisEvent);
        // PostTemplateService(thisEvent);
        PostTemplateHSM(thisEvent);
        // PostTemplateFSM(thisEvent);
#else
        SaveEvent(thisEvent);
#endif
    }
    return (returnVal);
}

/*******************************************************************************
 * ANALOG WALL SENSOR                                                          *
 ******************************************************************************/
// Left side wall sensor is analog so i can maintain a certain distance from it
// uint8_t WallSensor_RL_Analog(void)
// {
//     static ES_EventTyp_t lastEvent = ES_WALL_LEFT_ANALOG;
//     ES_EventTyp_t curEvent;
//     ES_Event thisEvent;
//     uint8_t returnVal = FALSE;

//     uint16_t Wall_Left_Analog = AD_ReadADPin(AD_PORTV8);

//     if ((Wall_Left_Analog < WALL_LEFT_TOO_CLOSE) /* || (Wall_Left_Analog > WALL_LEFT_TOO_FAR) */)
//     {
//         // printf("Wall Sensor %d \r\n", Wall_Left_Analog);
//         curEvent = ES_WALL_LEFT_ANALOG;
//     }
//     else
//     {
//         curEvent = ES_NO_EVENT;
//     }

//     if (curEvent != lastEvent)
//     { // check for change from last time
//         thisEvent.EventType = curEvent;
//         thisEvent.EventParam = Wall_Left_Analog;
//         returnVal = TRUE;
//         lastEvent = curEvent; // update history
// #ifndef EVENTCHECKER_TEST     // keep this as is for test harness
//         // PostGenericService(thisEvent);
//         // PostTemplateService(thisEvent);
//         PostTemplateHSM(thisEvent);
//         // PostTemplateFSM(thisEvent);
// #else
//         SaveEvent(thisEvent);
// #endif
//     }
//     return (returnVal);
// }

/*
 * The Test Harness for the event checkers is conditionally compiled using
 * the EVENTCHECKER_TEST macro (defined either in the file or at the project level).
 * No other main() can exist within the project.
 *
 * It requires a valid ES_Configure.h file in the project with the correct events in
 * the enum, and the correct list of event checkers in the EVENT_CHECK_LIST.
 *
 * The test harness will run each of your event detectors identically to the way the
 * ES_Framework will call them, and if an event is detected it will print out the function
 * name, event, and event parameter. Use this to test your event checking code and
 * ensure that it is fully functional.
 *
 * If you are locking up the output, most likely you are generating too many events.
 * Remember that events are detectable changes, not a state in itself.
 *
 * Once you have fully tested your event checking code, you can leave it in its own
 * project and point to it from your other projects. If the EVENTCHECKER_TEST marco is
 * defined in the project, no changes are necessary for your event checkers to work
 * with your other projects.
 */
#ifdef EVENTCHECKER_TEST
#include <stdio.h>
static uint8_t (*EventList[])(void) = {EVENT_CHECK_LIST};

void PrintEvent(void);

void main(void)
{
    BOARD_Init();
    /* user initialization code goes here */

    // Do not alter anything below this line
    int i;

    printf("\r\nEvent checking test harness for %s", __FILE__);

    while (1)
    {
        if (IsTransmitEmpty())
        {
            for (i = 0; i < sizeof(EventList) >> 2; i++)
            {
                if (EventList[i]() == TRUE)
                {
                    PrintEvent();
                    break;
                }
            }
        }
    }
}

void PrintEvent(void)
{
    printf("\r\nFunc: %s\tEvent: %s\tParam: 0x%X", eventName,
           EventNames[storedEvent.EventType], storedEvent.EventParam);
}
#endif