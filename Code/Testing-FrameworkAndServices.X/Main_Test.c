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

// #define MOTORTEST
// #define IRTEST
// #define BEACONTEST
// #define IOTEST
#define TRACKWIRETEST

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
    // IO_PortsSetPortInputs(PORTV, PIN5);
    AD_AddPins(AD_PORTV5);
    while (1)
    {
        // if (count % 50000000000000000 == 0)
        // {
        printf("\r\n%u", AD_ReadADPin(AD_PORTV5));
        // }
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
}