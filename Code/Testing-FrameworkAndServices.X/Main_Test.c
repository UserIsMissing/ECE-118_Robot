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

    AD_AddPins(AD_PORTV8); // Front Right IR Tape Sensor

    /* ------------------ MOTORS ------------------ */
    PWM_AddPins(PWM_PORTZ06); // PWM out to control H Bridge
    PWM_AddPins(PWM_PORTY12); // PWM out to control H Bridge
    
    // PORTV05_TRIS = 0; // Set as output
    // PORTV06_TRIS = 0; // Set as output
    IO_PortsSetPortOutputs(PORTV, PIN5); // Set as output
    IO_PortsSetPortOutputs(PORTV, PIN6); // Set as output

// #define LEFT_WHEEL PWM_PORTZ06
// #define LEFT_FORWARD PORTV05_BIT
// #define LEFT_BACKWARD PORTV06_BIT
// #define RIGHT_FORWARD PORTV07_BIT
// #define RIGHT_BACKWARD PORTV08_BIT
// #define LEFT_PIN1 PORTV05_LAT
// #define LEFT_PIN2 PORTV06_LAT
// #define RIGHT_PIN1 PORTV05_LAT
// #define RIGHT_PIN2 PORTV06_LAT
// #define LEFT_PWM PWM_PORTZ06
// #define RIGHT_PWM PWM_PORTY12





#ifdef MOTORTEST
    IO_PortsSetPortInputs(PORTV, PIN7);         // In from Limit Switch
    PWM_AddPins(PWM_PORTZ06);                   // PWM out to control H Bridge
    IO_PortsSetPortOutputs(PORTV, PIN5 | PIN6); // Digital Outs to In1 and In2

    int counter = 0;
    unsigned short int voltage;
    unsigned short int duty = 800;
    unsigned short int count = 0;
    while (1)
    {
        unsigned short int Switch = (IO_PortsReadPort(PORTV) & PIN7) >> 7;
        IO_PortsWritePort(PORTV, PIN6);
        if (Switch == 1)
        {
            PWM_SetDutyCycle(PWM_PORTZ06, duty);
            // IO_PortsWritePort(PORTV, PIN5);
        }
        else
        {
            PWM_SetDutyCycle(PWM_PORTZ06, 0);
            // IO_PortsWritePort(PORTV, PIN6);
        }
        if (count % 5000 == 0)
        {
            printf("\r\n%x", (IO_PortsReadPort(PORTV) & PIN5) >> 7);
        }
        count++;
        printf("asdf");
    }
#endif
#ifdef IRTEST

    unsigned int count = 0;
    IO_PortsSetPortInputs(PORTV, PIN5);
    // AD_AddPins(AD_PORTV5);
    while (1)
    {
        if (count % 50000 == 0)
        {
            //         printf("\r\n%u", AD_ReadADPin(AD_PORTV5));
            printf("\r\n%u", (IO_PortsReadPort(PORTV) & PIN5) >> 5);
        }
        count++;
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