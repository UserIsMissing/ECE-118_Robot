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

#define MOTORTEST
//#define IRTEST
// #define BEACONTEST
// #define IOTEST
// #define TRACKWIRETEST

/*
 *
 */

int main(int argc, char **argv) {
    BOARD_Init();
    SERIAL_Init();
    AD_Init();
    PWM_Init();
    LED_Init();
    LED_AddBanks(0x7);

#ifdef MOTORTEST
    IO_PortsSetPortOutputs(PORTY, PIN4); //in3 
    IO_PortsSetPortOutputs(PORTZ, PIN7); //in1

    PWM_AddPins(PWM_PORTY12); // PWM out to control H Bridge
    PWM_AddPins(PWM_PORTY10);

    unsigned short int duty = 1000;
    while (1) {
        IO_PortsWritePort(PORTY, PIN4);
        IO_PortsWritePort(PORTZ, PIN7);

        PWM_SetDutyCycle(PWM_PORTY12, duty);
        PWM_SetDutyCycle(PWM_PORTY10, duty);
        printf("\r\n Testing Motor");
    }
#endif
#ifdef IRTEST

    unsigned int count = 0;
    IO_PortsSetPortInputs(PORTV, PIN5);
    while (1) {
        if (count % 50000 == 0) {
            printf("\r\n%u", (IO_PortsReadPort(PORTV) & PIN5) >> 5);
        }
        count++;
    }

#endif

#ifdef BEACONTEST
    // AD_AddPins(AD_PORTV5);
    IO_PortsSetPortInputs(PORTV, PIN5);
    while (1) {
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
    while (1) {
        if (count % 50000 == 0) {
            printf("\r\n%u", AD_ReadADPin(AD_PORTV3));
        }
        count++;
    }
#endif
}