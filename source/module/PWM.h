/******************************************************************************
 *       PWM.h ----- The header of PWM.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  PWM.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 18:43:26                                                       *
 ******************************************************************************/
#ifndef _PWM_H_
#define _PWM_H_

// LPLD library
#include "common.h"

// Symbol Definition
#define SIX_ROTOR_FTM_PORT  FTM0
#define ROTOR_PWM_FREQUENCY 250

#define ESC_MIN_PWM         2500
#define ESC_MAX_PWM         5000

#define ROTOR_0_CHANNEL     FTM_Ch0
#define ROTOR_0_PIN         PTC1

#define ROTOR_1_CHANNEL     FTM_Ch1
#define ROTOR_1_PIN         PTC2

#define ROTOR_2_CHANNEL     FTM_Ch2
#define ROTOR_2_PIN         PTC3

#define ROTOR_3_CHANNEL     FTM_Ch3
#define ROTOR_3_PIN         PTC4

#define ROTOR_4_CHANNEL     FTM_Ch4
#define ROTOR_4_PIN         PTD4

#define ROTOR_5_CHANNEL     FTM_Ch5
#define ROTOR_5_PIN         PTD5

#ifndef PWM_OUT_IN_1000_SCALE
#define PWM_OUT_IN_1000_SCALE
#endif

typedef struct
{
    uint32 real_PWM_duty[6];
    int ESC_PWM[6];
}PWMData;

void InitSixRotorPWM(void);
void PWMChangeDuty(uint8 channel, uint32 duty);
void InitPWMOutPut(void);
void InitPWMData(void);
void PWMOutOneRotor(uint8 rotor_num, int PWM);
void PWMOutOneESC(uint8 ESC_num, int PWM);
void ThrottleOutSixESC(float throttle[6]);
void PWMOutSixESC(int esc_pwm[6]);
void PWMOutSixRotor(int pwm[6]);
PWMData * GetPWMData(void);

void PWMOutOneESC_1000Scale(uint8 ESC_num, int PWM);
void PWMOutSixESC_1000Scale(int esc_pwm[6]);

#endif
