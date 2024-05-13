
/*
 * File:   Robot.h
 * Author: Qingyuan Cao
 *
 * Created on May 5, 2024, 12:52 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include <BOARD.h>
#include <serial.h>
#include <AD.h>
#include <pwm.h>
#include <IO_Ports.h>
#include <LED.h>

char Robot_LeftMtrSpeed(char newSpeed);

char Robot_RightMtrSpeed(char newSpeed);

char Robot_ReadFrontLeftBumper(void);