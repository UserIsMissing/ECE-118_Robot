/*
 * File: TemplateSubHSM.c
 * Author: J. Edward Carryer
 * Modified: Gabriel Elkaim and Soja-Marie Morgens
 *
 * Template file to set up a Heirarchical State Machine to work with the Events and
 * Services Framework (ES_Framework) on the Uno32 for the CMPE-118/L class. Note that
 * this file will need to be modified to fit your exact needs, and most of the names
 * will have to be changed to match your code.
 *
 * There is another template file for the SubHSM's that is slightly differet, and
 * should be used for all of the subordinate state machines (flat or heirarchical)
 *
 * This is provided as an example and a good place to start.
 *
 * History
 * When           Who     What/Why
 * -------------- ---     --------
 * 09/13/13 15:17 ghe      added tattletail functionality and recursive calls
 * 01/15/12 11:12 jec      revisions for Gen2 framework
 * 11/07/11 11:26 jec      made the queue static
 * 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 * 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
 */

/*******************************************************************************
 * MODULE #INCLUDE                                                             *
 ******************************************************************************/

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "BOARD.h"
#include "TemplateHSM.h"
#include "TemplateSubHSM.h" //#include all sub state machines called

#include "IncludeHeaders.h"
/*******************************************************************************
 * PRIVATE #DEFINES                                                            *
 ******************************************************************************/
// Include any defines you need to do

/*******************************************************************************
 * MODULE #DEFINES                                                             *
 ******************************************************************************/

typedef enum
{
    InitPState,
    FirstState,
    Random,
    WallRide,
    WallRidePT2,
    Snake1,  // Wall Follow
    Snake2,  // Snake pass #2 (Travels Left)
    Snake25, // Snake 2.5 is used for the 180 reverse
    Snake3,  // Snake pass #3 (Travels Right before reverse along tape)
    Snake35, // Snake 3.5 is used for the 180 reverse
    Reverse, // Reverse along tape into the gate
    Reverse2,// 90 degree turn for Reverse state
    BUMPERTEST,
} TemplateHSMState_t;

static const char *StateNames[] = {
    "InitPState",
    "FirstState",
    "Random",
    "WallRide",
    "WallRidePT2",
    "Snake1",
    "Snake2",
    "Snake25",
    "Snake3",
    "Snake35",
    "Reverse",
    "Reverse2",
    "BUMPERTEST",
};

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/

void INIT_ALL(void)
{
    // BOARD_Init();
    // SERIAL_Init();
    // AD_Init();
    // PWM_Init();
    // LED_Init();

    // LED_AddBanks(0x7);

    // AD_AddPins(AD_PORTV5);                  // Front Right IR Tape Sensor

    // IO_PortsSetPortOutputs(PORTZ, PIN3);    // output high to provide 3.3v VCC for IR sensor
    // IO_PortsWritePort(PORTZ, PIN3);         // output high to provide 3.3v VCC for IR sensor
}
/*******************************************************************************
 * PRIVATE MODULE VARIABLES                                                            *
 ******************************************************************************/
/* You will need MyPriority and the state variable; you may need others as well.
 * The type of state variable should match that of enum in header file. */

static TemplateHSMState_t CurrentState = InitPState; // <- change enum name to match ENUM
static uint8_t MyPriority;

/*******************************************************************************
 * PUBLIC FUNCTIONS                                                            *
 ******************************************************************************/

/**
 * @Function InitTemplateHSM(uint8_t Priority)
 * @param Priority - internal variable to track which event queue to use
 * @return TRUE or FALSE
 * @brief This will get called by the framework at the beginning of the code
 *        execution. It will post an ES_INIT event to the appropriate event
 *        queue, which will be handled inside RunTemplateFSM function. Remember
 *        to rename this to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t InitTemplateHSM(uint8_t Priority)
{
    MyPriority = Priority;
    // put us into the Initial PseudoState
    CurrentState = InitPState;
    // post the initial transition event
    if (ES_PostToService(MyPriority, INIT_EVENT) == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

/**
 * @Function PostTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be posted to queue
 * @return TRUE or FALSE
 * @brief This function is a wrapper to the queue posting function, and its name
 *        will be used inside ES_Configure to point to which queue events should
 *        be posted to. Remember to rename to something appropriate.
 *        Returns TRUE if successful, FALSE otherwise
 * @author J. Edward Carryer, 2011.10.23 19:25 */
uint8_t PostTemplateHSM(ES_Event ThisEvent)
{
    return ES_PostToService(MyPriority, ThisEvent);
}

/**
 * @Function RunTemplateHSM(ES_Event ThisEvent)
 * @param ThisEvent - the event (type and param) to be responded.
 * @return Event - return event (type and param), in general should be ES_NO_EVENT
 * @brief This function is where you implement the whole of the heirarchical state
 *        machine, as this is called any time a new event is passed to the event
 *        queue. This function will be called recursively to implement the correct
 *        order for a state transition to be: exit current state -> enter next state
 *        using the ES_EXIT and ES_ENTRY events.
 * @note Remember to rename to something appropriate.
 *       The lower level state machines are run first, to see if the event is dealt
 *       with there rather than at the current level. ES_EXIT and ES_ENTRY events are
 *       not consumed as these need to pass pack to the higher level state machine.
 * @author J. Edward Carryer, 2011.10.23 19:25
 * @author Gabriel H Elkaim, 2011.10.23 19:25 */
ES_Event RunTemplateHSM(ES_Event ThisEvent)
{
    uint8_t makeTransition = FALSE; // use to flag transition
    TemplateHSMState_t nextState;   // <- change type to correct enum

    ES_Tattle(); // trace call stack

    switch (CurrentState)
    {
    case InitPState:                        // If current state is initial Pseudo State
        if (ThisEvent.EventType == ES_INIT) // only respond to ES_Init
        {
            // this is where you would put any actions associated with the
            // transition from the initial pseudo-state into the actual
            // initial state
            // Initialize all sub-state machines
            InitTemplateSubHSM();
            // ES_Timer_InitTimer(TIMER_TURN, TIMER_TURN_CLICKS);
            // now put the machine into the actual initial state

            // INIT_ALL();
            Motors_Forward(MOTOR_MAXIMUM);
            nextState = BUMPERTEST;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case FirstState: // in the first state, replace this with correct names
        // run sub-state machine for this state
        // NOTE: the SubState Machine runs and responds to events before anything in the this
        // state machine does
        ThisEvent = RunTemplateSubHSM(ThisEvent);
        switch (ThisEvent.EventType)
        {
        case ES_TAPESENSORS:
            if (ThisEvent.EventParam != 0)
            //            if (ThisEvent.EventType == ES_TAPE_FR)
            {
                printf("Main HSM: \r\n");
                printf("Tape Sensor Triggered\r\n");
            }
            nextState = FirstState;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
            break;

        case ES_NO_EVENT:
        default:
            break;
        }
        break;

    case BUMPERTEST:
        if (ThisEvent.EventType == ES_BUMPER)
        {
            if (ThisEvent.EventParam == 1)
            {
                printf("\r\nBumper Front Left");
            }
            if (ThisEvent.EventParam == 2)
            {
                printf("\r\nBumper Front Right");
            }
        }
        break;

    case Random:
        // Motors_Forward(MOTOR_MAXIMUM);
        if (ThisEvent.EventType == ES_WALLSENSORS) // Found wall, Transition
        {
            printf("\r\nRandom: Wall Sensor");
            // Motors_Stop();
            // Reverse_Pivot_Right(850);

            // Reverse_Pivot_Right(850);
            Robot_LeftWheelSpeed(-850);
            Robot_RightWheelSpeed(-1);

            // Tank_Left(850);
            // Robot_LeftWheelSpeed(850);
            // Robot_RightWheelSpeed(-850);

            nextState = WallRide;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        if (ThisEvent.EventType == ES_TAPESENSORS) // Turning away from tape
        {
            printf("\r\nRandom: Tape Sensor");
            ES_Timer_InitTimer(TIMER_TURN, TIMER_TURN_CLICKS);
            Tank_Right(MOTOR_MAXIMUM);
            nextState = Random;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        if (ThisEvent.EventType == ES_TIMEOUT) // Turning away from tape TIMER
        {
            printf("\r\nES_TIMEOUT");
            if (ThisEvent.EventParam == TIMER_TURN)
            {
                Motors_Forward(MOTOR_MAXIMUM);
            }
        }
        break;

    case WallRide: // Wall ride untill you find tape, then 180 in PT 2
                   // see sensor, turn, timer up, forward, reppeat
        printf("\r\nEntered WallRide");
        if ((ThisEvent.EventType == ES_WALLSENSORS) /* && (ThisEvent.EventParam == (WALL_RR_MASK)) */) // Spin on wall untill you line up a little
        {
            printf("\r\nWallRide: Wall Sensor");
            // Motors_Stop();
            Tank_Left(1000);
        }
        if (ThisEvent.EventType == ES_NO_EVENT)
        {
            printf("\r\nWallRide: ES_NO_EVENT");
            Motors_Forward(1000);
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(900);
        }
        if (ThisEvent.EventType == ES_TAPESENSORS)
        {
            printf("\r\nWallRide: Tape Sensor");
            Motors_Stop();
            ES_Timer_InitTimer(TIMER_180, TIMER_180_CLICKS);
            Tank_Left(1000);
            nextState = WallRidePT2;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        // if (((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180)) || (ThisEvent.EventType == ES_TAPESENSORS && ThisEvent.EventParam == TAPE_RL_MASK))
        // {
        // Motors_Stop();
        // nextState = WallRidePT2;
        // makeTransition = TRUE;
        // ThisEvent.EventType = ES_NO_EVENT;
        // }
        break;

    case WallRidePT2: // 180 on the tape to setup for snake
        // if (((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180)) || (ThisEvent.EventType == ES_TAPESENSORS && ThisEvent.EventParam == TAPE_RL_MASK))
        // if (ThisEvent.EventType == ES_WALL_LEFT_ANALOG)
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == Wall_RL_MASK))
        {
            printf("\r\nWallRide2");
            Motors_Stop();
            nextState = Snake1;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Snake1: // Follow wall going right to tape, Path #1
        if (ThisEvent.EventType == ES_ENTRY)
        {
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(700);
        }
        // TOO CLOSE TOO WALL
        // if ((ThisEvent.EventType == ES_WALL_LEFT_ANALOG) && (ThisEvent.EventParam <= WALL_LEFT_TOO_CLOSE))
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == Wall_RL_MASK))
        {
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(700);
        }
        // TOO FAR FROM WALL
        // if ((ThisEvent.EventType == ES_WALL_LEFT_ANALOG) && (ThisEvent.EventParam >= WALL_LEFT_TOO_FAR))
        if (ThisEvent.EventType == ES_NO_EVENT)
        {
            Robot_LeftWheelSpeed(700);
            Robot_RightWheelSpeed(1000);
        }

        if (ThisEvent.EventType == ES_TAPESENSORS)
        {
            // ES_Timer_InitTimer(TIMER_180, TIMER_180_CLICKS);
            Reverse_Pivot_Right(800);
            nextState = Snake2;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Snake2: // Path #2, going left to tape
        // FIRST 180 to start gapped path. Check back left sensor
        if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
        {
            Motors_Stop();
            Robot_RightWheelSpeed(-700);
        }
        break;
        // Hit back right sensor and then start the 2nd snake path. Moving left along the wall (with a gap)
        if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 8))
        {
            Motors_Stop();
            Motors_Forward(MOTOR_MAXIMUM);
            nextState = Snake25;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Snake25:
        if (ThisEvent.EventType == ES_TAPESENSORS)
        {
            // ES_Timer_InitTimer(TIMER_180, TIMER_180_2_CLICKS);
            Reverse_Pivot_Left(800);
            nextState = Snake3;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Snake3: // Path #3, going right to tape. Before reverse into wall
        // SECOND 180. Check back right sensor
        if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
        {
            Motors_Stop();
            Robot_LeftWheelSpeed(-700);
        }
        break;
        // Hit back Left sensor and then start the 3rd snake path.
        if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 8))
        {
            Motors_Stop();
            Motors_Forward(MOTOR_MAXIMUM);
            nextState = Snake35;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;
        

    case Snake35:
        if (ThisEvent.EventType == ES_TAPESENSORS)
        {
            Motors_Stop();
            Tank_Right(800);
            ES_Timer_InitTimer(TIMER_180, TIMER_90_CLICKS);
            nextState = Reverse;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Reverse:
        // 90 degree reverse turn at the beginning
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180)) 
        {
            ES_Timer_InitTimer(TIMER_TURN, TIMER_RAM_GATE_CLICKS);
            Motors_Backward();
            nextState = Reverse2;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Reverse2:
/* 
        if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 1))
        {
            Robot_LeftWheelSpeed(-1000);
            Robot_RightWheelSpeed(-700);
        }
        if (ThisEvent.EventType == ES_NO_EVENT)
        {
            Robot_LeftWheelSpeed(-700);
            Robot_RightWheelSpeed(-1000);
        }
         */
        // Timer to slam into gate and then restart entire state machine loop over again
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_TURN))
        {
            Motors_Forward(900);
            nextState = Random;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    default: // all unhandled states fall into here
        break;

    } // end switch on Current State

    if (makeTransition == TRUE)
    { // making a state transition, send EXIT and ENTRY
        // recursively call the current state with an exit event
        RunTemplateHSM(EXIT_EVENT); // <- rename to your own Run function
        CurrentState = nextState;
        RunTemplateHSM(ENTRY_EVENT); // <- rename to your own Run function
    }

    ES_Tail(); // trace call stack end
    return ThisEvent;
}

/*******************************************************************************
 * PRIVATE FUNCTIONS FOR MOTOR MOVEMENT                                        *
 ******************************************************************************/
void Motors_Forward(signed short int speed)
{
    Robot_RightWheelSpeed(speed);
    Robot_LeftWheelSpeed(speed);
}

void Motors_Backward(void)
{
    Robot_RightWheelSpeed(-1000);
    Robot_LeftWheelSpeed(-1000);
}

void Tank_Left(signed short int speed)
{
    Robot_LeftWheelSpeed(speed);
    Robot_RightWheelSpeed(-speed);
}

void Tank_Right(signed short int speed)
{
    Robot_LeftWheelSpeed(-speed);
    Robot_RightWheelSpeed(speed);
}

void Pivot_Left(signed short int speed)
{
    Robot_LeftWheelSpeed(1);
    Robot_RightWheelSpeed(speed);
}

void Pivot_Right(signed short int speed)
{
    Robot_LeftWheelSpeed(speed);
    Robot_RightWheelSpeed(1);
}

void Reverse_Pivot_Left(signed short int speed)
{
    Robot_LeftWheelSpeed(-1);
    Robot_RightWheelSpeed(-speed);
}

void Reverse_Pivot_Right(signed short int speed)
{
    Robot_LeftWheelSpeed(-speed);
    Robot_RightWheelSpeed(-1);
}

void Motors_Stop(void)
{
    Robot_RightWheelSpeed(0);
    Robot_LeftWheelSpeed(0);
}

void Robot_LeftWheelSpeed(signed short int speed)
{
    if (speed > 0)
    {
        LEFT_PIN1_LOW;
        LEFT_PIN2_HIGH;
        PWM_SetDutyCycle(LEFT_PWM, speed);
    }
    else if (speed < 0)
    {
        LEFT_PIN1_HIGH;
        LEFT_PIN2_LOW;
        signed short int negative_speed = speed * (-1);
        PWM_SetDutyCycle(LEFT_PWM, negative_speed);
    }
    else if (speed == 0)
    {
        LEFT_PIN1_LOW;
        LEFT_PIN2_LOW;
        PWM_SetDutyCycle(LEFT_PWM, 0);
    }
}

void Robot_RightWheelSpeed(signed short int speed)
{
    if (speed > 0)
    {
        RIGHT_PIN1_LOW;
        RIGHT_PIN2_HIGH;
        PWM_SetDutyCycle(RIGHT_PWM, speed);
    }
    else if (speed < 0)
    {
        RIGHT_PIN1_HIGH;
        RIGHT_PIN2_LOW;
        signed short int negative_speed = speed * (-1);
        PWM_SetDutyCycle(RIGHT_PWM, negative_speed);
    }
    else if (speed == 0)
    {
        RIGHT_PIN1_LOW;
        RIGHT_PIN2_LOW;
        PWM_SetDutyCycle(RIGHT_PWM, 0);
    }
}