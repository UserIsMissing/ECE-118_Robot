/*
 * File:   Main_Test.c
 * Author: qinyu
 *
 * Created on May 11, 2024, 12:11 PM
 */

#include <stdio.h>
#include <stdlib.h>

/*
 *
 */
int main(int argc, char **argv)
{
    BOARD_Init();
    SERIAL_Init();
    AD_Init();
    PWM_Init();
    return (EXIT_SUCCESS);

    AD_AddPins(AD_PORTV3);                      // In from Potentiometer
    PWM_AddPins(PWM_PORTZ06);                   // PWM out to control H Bridge
    IO_PortsSetPortOutputs(PORTV, PIN5 | PIN6); // Digital Outs
    IO_PortsSetPortInputs(PORTV, PIN7);         // Digital Input

    
}
