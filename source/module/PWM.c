/****************************************************************************** 
 *       PWM.c ----- PWM related          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  PWM.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 18:43:02                                                       *
 ******************************************************************************/
#include "PWM.h"

static PWMData s_sPWMDataStruct;

void InitSixRotorPWM(void)
{
    /* Init FTM */
    FTM_InitTypeDef four_rotor_ftm_init_struct = {0};

    four_rotor_ftm_init_struct.FTM_Ftmx = SIX_ROTOR_FTM_PORT;
    four_rotor_ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
    four_rotor_ftm_init_struct.FTM_PwmFreq = ROTOR_PWM_FREQUENCY;

    LPLD_FTM_Init(four_rotor_ftm_init_struct);

    /* Init 4 PWM channel */
    // Rotor One
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_0_CHANNEL,
                        0,
                        ROTOR_0_PIN,
                        ALIGN_LEFT);
    // Rotor Two
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_1_CHANNEL,
                        0,
                        ROTOR_1_PIN,
                        ALIGN_LEFT);
    // Rotor Three
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_2_CHANNEL,
                        0,
                        ROTOR_2_PIN,
                        ALIGN_LEFT);
    // Rotor Four
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_3_CHANNEL,
                        0,
                        ROTOR_3_PIN,
                        ALIGN_LEFT);
    // Rotor Five
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_4_CHANNEL,
                        0,
                        ROTOR_4_PIN,
                        ALIGN_LEFT);
    // Rotor Six
    LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
                        ROTOR_5_CHANNEL,
                        0,
                        ROTOR_5_PIN,
                        ALIGN_LEFT);
    
    InitPWMData();
    InitPWMOutPut();
}

void PWMChangeDuty(uint8 channel, uint32 duty)
{
    if(channel >= 6)
    {
        return;
    }

    switch(channel)
    {
        case 0: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_0_CHANNEL,
                                        duty);
                break;
        case 1: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_1_CHANNEL,
                                        duty);
                break;
        case 2: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_2_CHANNEL,
                                        duty);
                break;
        case 3: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_3_CHANNEL,
                                        duty);
                break;
        case 4: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_4_CHANNEL,
                                        duty);
                break;
        case 5: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
                                        ROTOR_5_CHANNEL,
                                        duty);
                break;                
        default:
                break;
    }
}

void InitPWMOutPut(void)
{
    int pwm[6] = {0,0,0,0,0,0};

    PWMOutSixRotor(pwm);
}

void InitPWMData(void)
{
    int i = 0;
    for(i = 0; i < 6; i++)
    {
        s_sPWMDataStruct.real_PWM_duty[i] = 0;
        s_sPWMDataStruct.ESC_PWM[i] = 0;
    }
}

void PWMOutOneRotor(uint8 rotor_num, int PWM)
{
    uint32 duty_out = 0;
    int abs_PWM = PWM;

    if(rotor_num >= 6)
    {
        return;
    }

    if(PWM < 0)
    {
        PWM = 0;
    }
    if(PWM > 100)
    {
        PWM = 100;
    }

    if(abs_PWM >= 0)
    {
        abs_PWM = PWM;
    }
    else
    {
        abs_PWM = -PWM;
    }

    duty_out = abs_PWM * 100;

    s_sPWMDataStruct.real_PWM_duty[rotor_num] = duty_out;
    if(duty_out < ESC_MIN_PWM)
    {
        s_sPWMDataStruct.ESC_PWM[rotor_num] = 0;
    }
    else if(duty_out < ESC_MAX_PWM)
    {
        s_sPWMDataStruct.ESC_PWM[rotor_num] = ((duty_out - ESC_MIN_PWM) * 100) / (ESC_MAX_PWM - ESC_MIN_PWM);     
    }
    else
    {
        s_sPWMDataStruct.ESC_PWM[rotor_num] = 100;
    }

    PWMChangeDuty(rotor_num, duty_out);
}

void PWMOutOneESC(uint8 ESC_num, int PWM)
{
    uint32 duty_out = 0;
    int abs_PWM = PWM;

    if(ESC_num >= 6)
    {
        return ;
    }

    if(PWM < 0)
    {
        PWM = 0;
    }
    if(PWM > 100)
    {
        PWM = 100;
    }

    if(PWM >= 0)
    {
        abs_PWM = PWM;
    }
    else
    {
        abs_PWM = -PWM;
    }

    duty_out = ((ESC_MAX_PWM - ESC_MIN_PWM) * abs_PWM) / 100 + ESC_MIN_PWM;

    s_sPWMDataStruct.ESC_PWM[ESC_num] = abs_PWM;
    s_sPWMDataStruct.real_PWM_duty[ESC_num] = duty_out;

    PWMChangeDuty(ESC_num, duty_out);
}

void ThrottleOutSixESC(float throttle[6])
{
    int ESC_PWM_output[6];
    int i = 0;

    for(i = 0; i < 6; i++)
    {
#ifdef PWM_OUT_IN_1000_SCALE
        
        ESC_PWM_output[i] = (int)(throttle[i] * 1000);
#else
        ESC_PWM_output[i] = (int)(throttle[i] * 100);
#endif
    }
    
#ifdef PWM_OUT_IN_1000_SCALE    
    PWMOutSixESC_1000Scale(ESC_PWM_output);
#else
    PWMOutSixESC(ESC_PWM_output);
#endif
}

void PWMOutSixESC(int esc_pwm[6])
{
    int i = 0;

    for(i = 0; i < 6; i++)
    {
        PWMOutOneESC(i, esc_pwm[i]);
    }
}

void PWMOutSixRotor(int pwm[6])
{
    int i = 0;

    for(i = 0; i < 6; i++)
    {
        PWMOutOneRotor(i, pwm[i]);
    }
}

PWMData * GetPWMData(void)
{
    return & s_sPWMDataStruct;
}

void PWMOutOneESC_1000Scale(uint8 ESC_num, int PWM)
{
    uint32 duty_out = 0;
    int abs_PWM = PWM;

    if(ESC_num >= 6)
    {
        return ;
    }

    if(PWM < 0)
    {
        PWM = 0;
    }
    if(PWM > 1000)
    {
        PWM = 1000;
    }

    if(PWM >= 0)
    {
        abs_PWM = PWM;
    }
    else
    {
        abs_PWM = -PWM;
    }

    duty_out = ((ESC_MAX_PWM - ESC_MIN_PWM) * (int32)abs_PWM) / 1000 + ESC_MIN_PWM;

    s_sPWMDataStruct.ESC_PWM[ESC_num] = abs_PWM / 10;
    s_sPWMDataStruct.real_PWM_duty[ESC_num] = duty_out;

    PWMChangeDuty(ESC_num, duty_out);
}

void PWMOutSixESC_1000Scale(int esc_pwm[6])
{
    int i = 0;

    for(i = 0; i < 6; i++)
    {
        PWMOutOneESC_1000Scale(i, esc_pwm[i]);
    }
}
