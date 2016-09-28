/****************************************************************************** 
 *       buzzer.c ----- The code of buzzer          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  buzzer.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 15:20:56                                                       *
 ******************************************************************************/
#include "buzzer.h"

uint8 g_buzzer_mode = 0;

void InitBuzzer(void)
{
    GPIO_InitTypeDef buzzer_init_struct = {0};

    buzzer_init_struct.GPIO_PTx = BUZZER_PORT;
    buzzer_init_struct.GPIO_Pins = BUZZER_GPIO_PIN;
    buzzer_init_struct.GPIO_Dir = DIR_OUTPUT;
    buzzer_init_struct.GPIO_Output = OUTPUT_L;
    LPLD_GPIO_Init(buzzer_init_struct);

    InitBuzzerTimer();
}

void InitBuzzerTimer(void)
{
    PIT_InitTypeDef buzzer_timer_init_struct = {BUZZER_TIMER_PITX};

    buzzer_timer_init_struct.PIT_Pitx = BUZZER_TIMER_PITX;
    buzzer_timer_init_struct.PIT_PeriodS = 0;
    buzzer_timer_init_struct.PIT_PeriodMs = BUZZER_TIMER_PERIOD_MS;
    buzzer_timer_init_struct.PIT_PeriodUs = 0;
    buzzer_timer_init_struct.PIT_Isr = BuzzerTimerIsr;

    LPLD_PIT_Init(buzzer_timer_init_struct);
    LPLD_PIT_EnableIrq(buzzer_timer_init_struct);
}

void TurnOnBuzzer(void)
{
    if(g_sQuadSystemFlag.sys_setting.use_buzzer || g_sQuadSystemFlag.switch_setting_unvalid)
    {
        SetBuzzerOnOff(1);
    }
}

void TurnOffBuzzer(void)
{
    SetBuzzerOnOff(0);
}

void SetBuzzerOnOff(uint8 state)
{
    BUZZER_OUTPUT = state;
}

void ToggleBuzzer(void)
{
    LPLD_GPIO_Toggle_b(BUZZER_PORT, BUZZER_PIN_NUM);
}

void SetBuzzerMode(uint8 buzzer_mode)
{
    g_buzzer_mode = buzzer_mode;
}

void BuzzerTimerIsr(void)
{
    static uint32 buzzer_timer_cnt = 0;
    static uint8 buzzer_mode_now = 0;
    int16 buzzer_on_time = 0;
    int16 buzzer_off_time = 0;

    if(buzzer_mode_now != g_buzzer_mode)
    {
        buzzer_mode_now = g_buzzer_mode;
        buzzer_timer_cnt = 0;
    }

    buzzer_timer_cnt ++;

    switch(buzzer_mode_now)
    {
        case 0: buzzer_on_time = 0;
                buzzer_off_time = 1;
                break;
        case 1: buzzer_on_time = 1;
                buzzer_off_time = 0;
                break;
        default:buzzer_on_time = buzzer_mode_now - 1;
                buzzer_off_time = buzzer_mode_now - 1;
                break;
    }

    if(buzzer_timer_cnt <= buzzer_on_time)
    {
        TurnOnBuzzer();
    }
    else if(buzzer_timer_cnt <= (buzzer_on_time + buzzer_off_time))
    {
        TurnOffBuzzer();
    }
    else
    {
        //buzzer_mode_now = g_buzzer_mode;         // g_buzzer_mode is like a buffer 
        buzzer_timer_cnt = 0;
    }
}
