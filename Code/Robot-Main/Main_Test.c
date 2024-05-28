/*
 * File:   Main_Test.c
 * Author: qinyu
 *
 * Created on May 11, 2024, 12:11 PM
 */
#include <stdio.h>
#include <stdlib.h>
#include <BOARD.h>
#include <serial.h>
#include <AD.h>
#include <pwm.h>
#include <IO_Ports.h>
#include <LED.h>

#include <IncludeHeaders.h>

// #define MOTORTEST
// #define IRTEST
// #define BEACONTEST
// #define IOTEST
// #define TRACKWIRETEST
#define MAINLOOP

/*
 *
 */

int main(int argc, char **argv)
{
    BOARD_Init();
    SERIAL_Init();
    AD_Init();
    PWM_Init();
    LED_Init();
    LED_AddBanks(0x7);

    IO_PortsSetPortInputs(PORTV, PIN3); // Front Left IR Tape Sensor
    IO_PortsSetPortInputs(PORTV, PIN5); // Front Right IR Tape Sensor
    IO_PortsSetPortInputs(PORTV, PIN7); // Rear Left IR Tape Sensor
    IO_PortsSetPortInputs(PORTV, PIN9); // Rear Right IR Tape Sensor


    IO_PortsSetPortInputs(PORTW, PIN3); // Front Left Wall Sensor
    IO_PortsSetPortInputs(PORTW, PIN5); // Front Right Wall Sensor
    IO_PortsSetPortInputs(PORTW, PIN7); // Rear Right Wall Sensor
    IO_PortsSetPortInputs(PORTW, PIN8); // Rear Left Wall Sensor (Really more like Left Left Wall Sensor)
    // AD_AddPins(AD_PORTV8);              // Rear Left Wall Sensor (Really more like Left Left Wall Sensor)

    AD_AddPins(AD_PORTV4); // Trackwire Sensor

    /* ------------------ MOTORS ------------------ */
    PWM_AddPins(PWM_PORTY10); // PWM out to control H Bridge
    PWM_AddPins(PWM_PORTY12); // PWM out to control H Bridge

    // Set as output for motor direction control
    IO_PortsSetPortOutputs(PORTY, PIN3);
    IO_PortsSetPortOutputs(PORTY, PIN4);
    IO_PortsSetPortOutputs(PORTZ, PIN7);
    IO_PortsSetPortOutputs(PORTZ, PIN8);

    IO_PortsSetPortOutputs(PORTY, PIN5); // Y5 and Y6 comboe pins are fried
    IO_PortsSetPortOutputs(PORTY, PIN6); // Y5 and Y6 comboe pins are fried

#ifdef MOTORTEST
    PWM_AddPins(PWM_PORTY10);            // PWM out to control H Bridge
    PWM_AddPins(PWM_PORTY12);            // PWM out to control H Bridge
    IO_PortsSetPortOutputs(PORTZ, PIN8); // Digital Outs to In1 and In2
    IO_PortsSetPortOutputs(PORTY, PIN3); // Digital Outs to In1 and In2

    unsigned short int duty = 1000;
    while (1)
    {
        printf("\r\nMotor Test");
        IO_PortsWritePort(PORTZ, PIN8);
        IO_PortsWritePort(PORTY, PIN3);

        PWM_SetDutyCycle(PWM_PORTY10, duty);
        PWM_SetDutyCycle(PWM_PORTY12, duty);
    }

#endif

#ifdef IRTEST

    while (1)
    {
        printf("\r\nTape Sensor: %d", AD_ReadADPin(AD_PORTV8));
    }

#endif

#ifdef BEACONTEST
    // AD_AddPins(AD_PORTV5);
    IO_PortsSetPortInputs(PORTV, PIN5);
    while (1)
    {
        // printf("\r\n%u", AD_PORTV5);
        printf("\r\n%u", (IO_PortsReadPort(PORTV) & PIN5) >> 5);
    }

#endif

#ifdef IOTEST

    IO_PortsSetPortOutputs(PORTV, PIN3);
    IO_PortsSetPortOutputs(PORTV, PIN4);
    IO_PortsSetPortOutputs(PORTV, PIN5);
    IO_PortsSetPortOutputs(PORTV, PIN6);
    IO_PortsSetPortOutputs(PORTV, PIN7);
    IO_PortsSetPortOutputs(PORTV, PIN8);

    IO_PortsWritePort(PORTV, PIN3);
    IO_PortsWritePort(PORTV, PIN4);
    IO_PortsWritePort(PORTV, PIN5);
    IO_PortsWritePort(PORTV, PIN6);
    IO_PortsWritePort(PORTV, PIN7);
    IO_PortsWritePort(PORTV, PIN8);

    printf("Succesfully Wrote to all Port V");

#endif

#ifdef TRACKWIRETEST
    AD_AddPins(AD_PORTV3);
    unsigned int count = 0;
    while (1)
    {
        if (count % 50000 == 0)
        {
            printf("\r\n%u", AD_ReadADPin(AD_PORTV3));
        }
        count++;
    }
#endif

#ifdef MAINLOOP // Cole's services test
    ES_Return_t ErrorType;

    printf("Starting IR Service/Events Test\r\n");
    printf("using the 2nd Generation Events & Services Framework\r\n");

    ES_Initialize();

    // while (1)
    // {
    //     ES_Run();
    // }
    ES_Run();

    // Your hardware initialization function calls go here

    // now initialize the Events and Services Framework and start it running
    ErrorType = ES_Initialize();
    if (ErrorType == Success)
    {
        ErrorType = ES_Run();
    }
    // if we got to here, there was an error
    switch (ErrorType)
    {
    case FailedPointer:
        printf("Failed on NULL pointer");
        break;
    case FailedInit:
        printf("Failed Initialization");
        break;
    default:
        printf("Other Failure: %d", ErrorType);
        break;
    }
    for (;;)
        ;

#endif // MAINLOOP
}