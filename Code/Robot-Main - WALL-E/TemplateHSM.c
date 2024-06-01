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
    Random,
    WallRide_Left,
    WallRide_Left180,
    WallRide_Right, // Wall Follow
    WallRide_Right180,
    GateLineUp,
    GateLineUp2,
    GateLineUp3,
    Snake2,   // Snake pass #2 (Travels Left)
    Snake25,  // Snake 2.5 is used for the 180 reverse
    Snake3,   // Snake pass #3 (Travels Right before reverse along tape)
    Snake35,  // Snake 3.5 is used for the 180 reverse
    Reverse,  // Reverse along tape into the gate
    Reverse2, // 90 degree turn for Reverse state
    Reverse3,
    RAM,
    RAM2,
    RAM3,
} TemplateHSMState_t;

static const char *StateNames[] = {
    "InitPState",
    "Random",
    "WallRide_Left",
    "WallRide_Left180",
    "WallRide_Right",
    "WallRide_Right180",
    "GateLineUp",
    "GateLineUp2",
    "GateLineUp3",
    "Snake2",
    "Snake25",
    "Snake3",
    "Snake35",
    "Reverse",
    "Reverse2",
    "Reverse3",
    "RAM",
    "RAM2",
    "RAM3",
};

/*******************************************************************************
 * PRIVATE FUNCTION PROTOTYPES                                                 *
 ******************************************************************************/
/* Prototypes for private functions for this machine. They should be functions
   relevant to the behavior of this state machine
   Example: char RunAway(uint_8 seconds);*/

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

    // Snake along the wall 3 times then do a pivot and find gate
    // Left, Right, Left, Left pivot (or just go right again) and find gate
    static uint8_t WallCounter = 0;
    static uint8_t RAMCounter = 0;

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
            nextState = Random;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case Random:
        if (ThisEvent.EventType == ES_TIMEOUT) // Turning away from tape TIMER
        {
            if (ThisEvent.EventParam == TIMER_TURN)
            {
                Motors_Forward(MOTOR_MAXIMUM);
            }
        }
        if (ES_TAPESENSORS) // Turning away from tape
        {
            printf("\r\nRandom: Tape Sensor");
            ES_Timer_InitTimer(TIMER_TURN, TIMER_TURN_CLICKS);
            Tank_Right(MOTOR_MAXIMUM);
            nextState = Random;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        if (ThisEvent.EventType == ES_WALLSENSORS) // Found wall, Transition
        {
            Robot_LeftWheelSpeed(-850);
            Robot_RightWheelSpeed(-1);

            nextState = WallRide_Left;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case WallRide_Left: // Wall ride untill you find tape, then 180 in PT 2
                        // see sensor, turn, timer up, forward, reppeat
        if (ThisEvent.EventType == ES_WALLSENSORS)
        {
            Tank_Left(1000);
        }
        if (ThisEvent.EventType == ES_NO_EVENT)
        {
            Motors_Forward(1000);
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(900);
        }
        if (ES_TAPESENSORS) // 180, then start heading right after transitioning
        {
            WallCounter++;

            Motors_Stop();
            Tank_Left(1000);
            nextState = WallRide_Left180;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case WallRide_Left180: // 180 on the tape to setup for snake
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == WALL_RL_MASK))
        {
            ES_Timer_InitTimer(TIMER_TURN, 200);
            Tank_Right(700);
            nextState = WallRide_Right;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case WallRide_Right: // Follow wall going right to tape, Path #1
        if (ThisEvent.EventType == ES_TIMEOUT)
        {
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(700);
        }
        // TOO CLOSE TOO WALL
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == WALL_RL_MASK))
        {
            Robot_LeftWheelSpeed(1000);
            Robot_RightWheelSpeed(700);
        }
        // TOO FAR FROM WALL
        if (ThisEvent.EventType == ES_NO_EVENT)
        {
            Robot_LeftWheelSpeed(700);
            Robot_RightWheelSpeed(1000);
        }

        if (ES_TAPESENSORS)
        {
            WallCounter++;
            if (WallCounter == 4)
            {
                Tank_Right(1000);
                nextState = GateLineUp;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }

            // ES_Timer_InitTimer(TIMER_180, TIMER_180_CLICKS);
            Tank_Right(1000);
            nextState = WallRide_Right180;
            makeTransition = TRUE;
            // ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case WallRide_Right180: // 180 on the tape to setup for snake
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == WALL_RR_MASK))
        {
            // printf("\r\nWallRide2");
            ES_Timer_InitTimer(TIMER_TURN, 200);
            Tank_Left(700);
            nextState = WallRide_Left;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case GateLineUp:
        if ((ThisEvent.EventType == ES_WALLSENSORS) && (ThisEvent.EventParam == WALL_RR_MASK))
        {
            Reverse_Pivot_Right(900);
            nextState = GateLineUp2;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case GateLineUp2:
        if (ThisEvent.EventType == ES_TAPESENSOR_RL)
        {
            Robot_RightWheelSpeed(700);
            Robot_LeftWheelSpeed(0);
        }
        if (ThisEvent.EventType == ES_TAPESENSOR_RR)
        {
            Motors_Stop();
            Pivot_Left(700);
        }
        if (ThisEvent.EventType == ES_TAPESENSOR_FL)
        {
            Motors_Stop();
            nextState = GateLineUp3;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case GateLineUp3:
        if (ThisEvent.EventType == ES_ENTRY)
        {
            Robot_LeftWheelSpeed(-1000);
            Robot_RightWheelSpeed(-1000);
            nextState = RAM;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

        /*
        case Snake2: // Path #2, going left to tape
            // FIRST 180 to start gapped path. Check back left sensor
            // if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
            if (ThisEvent.EventType == ES_TAPESENSOR_RL)
            {
                Motors_Stop();
                Robot_LeftWheelSpeed(-1);
                Robot_RightWheelSpeed(-900);
            }

            // Hit back right sensor and then start the 2nd snake path. Moving left along the wall (with a gap)
            if (ThisEvent.EventType == ES_TAPESENSOR_RR)
            {
                // printf("\r\ntransiting now please!!!");
                // Motors_Stop();
                Motors_Forward(MOTOR_MAXIMUM);
                // Robot_LeftWheelSpeed(MOTOR_MAXIMUM);
                // Robot_RightWheelSpeed(MOTOR_MAXIMUM);
                nextState = Snake25;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Snake25:
            if (ES_TAPESENSORS_FRONT)
            {
                // ES_Timer_InitTimer(TIMER_180, TIMER_180_2_CLICKS);
                Reverse_Pivot_Left(900);
                nextState = Snake3;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Snake3: // Path #3, going right to tape. Before reverse into wall
            // SECOND 180. Check back right sensor
            if (ThisEvent.EventType == ES_TAPESENSOR_RR)
            {
                Robot_RightWheelSpeed(-1);
                Robot_LeftWheelSpeed(-900);
            }
            // Hit back Left sensor and then start the 3rd snake path.
            // if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
            if (ThisEvent.EventType == ES_TAPESENSOR_RL)
            {
                // Motors_Stop();
                // Motors_Forward(MOTOR_MAXIMUM);
                Robot_RightWheelSpeed(1000);
                Robot_LeftWheelSpeed(990);
                nextState = Snake35;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Snake35:
            if (ES_TAPESENSORS_FRONT)
            {
                Reverse_Pivot_Left(900);
                ES_Timer_InitTimer(TIMER_180, TIMER_90_CLICKS);
                nextState = Reverse;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        case Reverse:
            // 90 degree reverse turn at the beginning
            if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180))
            // if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
            {
                // Tank_Left(800);
                Motors_Forward(800);
                nextState = Reverse2;
                makeTransition = TRUE;
                // ThisEvent.EventType = ES_NO_EVENT;
            }
            break;

        case Reverse2:
            if (ThisEvent.EventType == ES_TAPESENSOR_FL)
            {
                Motors_Stop();
                Robot_RightWheelSpeed(700);
            }
            if (ThisEvent.EventType == ES_TAPESENSOR_FR)
            {
                Motors_Stop();
                // Robot_LeftWheelSpeed(-950);
                Robot_LeftWheelSpeed(-750);
                Robot_RightWheelSpeed(-MOTOR_MAXIMUM);
            }
            if (ThisEvent.EventType == ES_TAPESENSORS_FRONT)
            {
                nextState = Reverse3;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
            break;

        case Reverse3: // Go forward until you hit the tape, then reverse to wall in Reverse3
            // if ((ThisEvent.EventType == ES_TAPESENSORS) && (ThisEvent.EventParam == 4))
            if (ThisEvent.EventType == ES_TAPESENSOR_RL)
            {
                Tank_Left(800);
            }
            if (ThisEvent.EventType == ES_TAPESENSOR_FL)
            {
                Motors_Backward();
                // Robot_LeftWheelSpeed(-800);
                // Robot_RightWheelSpeed(-MOTOR_MAXIMUM);
            }
            if (ThisEvent.EventType == ES_WALLSENSOR_BACKGATE)
            {
                nextState = RAM;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            break;
        */

    case RAM:
        WallCounter = 0;
        RAMCounter++;
        if (ThisEvent.EventType == ES_ENTRY)
        {
            Robot_LeftWheelSpeed(-1000);
            Robot_RightWheelSpeed(-1000);
            ES_Timer_InitTimer(TIMER_TURN, 200); // Go Forward
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_TURN))
        {
            ES_Timer_InitTimer(TIMER_180, 300); // Reverse
            Motors_Forward(800);
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180))
        {
            Robot_LeftWheelSpeed(-1000);
            Robot_RightWheelSpeed(-1000);
        }
        if (ThisEvent.EventType == ES_WALLSENSOR_BACKGATE)
        {
            if (RAMCounter < 2)
            {
                nextState = RAM2;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
            else
            {
                nextState = RAM;
                makeTransition = TRUE;
                ThisEvent.EventType = ES_NO_EVENT;
            }
        }
        break;
    case RAM2:
        if (ThisEvent.EventType == ES_ENTRY)
        {
            ES_Timer_InitTimer(TIMER_GATEWAIT, TIMER_GATEWAIT_CLICKS);
            ES_Timer_InitTimer(TIMER_TURN, 200); // Go Forward
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_TURN))
        {
            ES_Timer_InitTimer(TIMER_180, 300); // Reverse
            Motors_Forward(800);
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_180))
        {
            Robot_LeftWheelSpeed(-1000);
            Robot_RightWheelSpeed(-1000);
        }
        if (ThisEvent.EventType == ES_WALLSENSOR_BACKGATE)
        {
            Motors_Stop();
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_GATEWAIT))
        {
            nextState = RAM3;
            makeTransition = TRUE;
            ThisEvent.EventType = ES_NO_EVENT;
        }
        break;

    case RAM3:
        if (ThisEvent.EventType == ES_ENTRY)
        {
            WallCounter = 0;

            ES_Timer_InitTimer(TIMER_TURN, 500);
            Robot_LeftWheelSpeed(900);
            Robot_RightWheelSpeed(1);
        }
        if ((ThisEvent.EventType == ES_TIMEOUT) && (ThisEvent.EventParam == TIMER_TURN))
        {
            Motors_Forward(MOTOR_MAXIMUM);
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