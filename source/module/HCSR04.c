/****************************************************************************** 
 *       HCSR04.c ----- The sona sensor driver          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  HCSR04.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/1 11:21:42                                                       *
 ******************************************************************************/
#include "HCSR04.h"

uint16 g_sonar_measure_distance_mm = 0;
uint8 g_sonar_measure_error_flag = 0;
static uint8 s_get_input_flag = 0;

PIT_InitTypeDef HCSR04_pluse_signal_timer_init_struct;
GPIO_InitTypeDef HCSR04_echo_pin_init_struct;

void InitHCSR04(void)
{
    GPIO_InitTypeDef HCSR04_trlg_pin_init_struct ={0};

    HCSR04_pluse_signal_timer_init_struct.PIT_Pitx = HCSR04_PLUSE_SIGNAL_TIMER_PITX;
    HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
    HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = HCSR04_PLUSE_SIGNAL_PERIOD_MS - 1;    
    HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = 1000 - HCSR04_PLUSE_SIGNAL_WIDTH_US;
    HCSR04_pluse_signal_timer_init_struct.PIT_Isr = HCSR04_PluseTriggerIsr;
    LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
    LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);

    HCSR04_echo_pin_init_struct.GPIO_PTx = HCSR04_ECHO_PIN_PORT;
    HCSR04_echo_pin_init_struct.GPIO_Pins = PinNum2GpioPin(HCSR04_ECHO_PIN_NUM);
    HCSR04_echo_pin_init_struct.GPIO_Dir = DIR_INPUT;
    HCSR04_echo_pin_init_struct.GPIO_PinControl = IRQC_ET;
    HCSR04_echo_pin_init_struct.GPIO_Isr = HCSR04_InputPluseMeasureIsr;
    LPLD_GPIO_Init(HCSR04_echo_pin_init_struct);
    LPLD_GPIO_EnableIrq(HCSR04_echo_pin_init_struct);

    HCSR04_trlg_pin_init_struct.GPIO_PTx = HSCR04_TRLG_PIN_PORT;
    HCSR04_trlg_pin_init_struct.GPIO_Pins = PinNum2GpioPin(HSCR04_TRLG_PIN_NUM);
    HCSR04_trlg_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    HCSR04_trlg_pin_init_struct.GPIO_Output = OUTPUT_L;
    LPLD_GPIO_Init(HCSR04_trlg_pin_init_struct);
}

void HCSR04_PluseTriggerIsr(void)
{
    static uint8 last_state = OUTPUT_L;

    if(last_state == OUTPUT_L)
    {
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = 0;
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = HCSR04_PLUSE_SIGNAL_WIDTH_US;
        LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
        LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);
        HCSR04_TRLG_PIN_OUTPUT = 1;                             // TRLG_PIN 
        last_state = OUTPUT_H;

        LPLD_GPIO_DisableIrq(HCSR04_echo_pin_init_struct);
        
        if(s_get_input_flag == 0)
        {
            g_sonar_measure_error_flag = 1;
        }
        s_get_input_flag = 0;
    }
    else
    {
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = HCSR04_PLUSE_SIGNAL_PERIOD_MS - 1;    
        HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = 1000 - HCSR04_PLUSE_SIGNAL_WIDTH_US;
        LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
        LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);
        HCSR04_TRLG_PIN_OUTPUT = 0;                             // TRLG_PIN 
        last_state = OUTPUT_L; 

        LPLD_GPIO_EnableIrq(HCSR04_echo_pin_init_struct);
    }
}

void HCSR04_InputPluseMeasureIsr(void)
{
    static uint32 last_sonar_measure_reg_time = 0;
    uint32 sonar_measure_reg_time = 0;
    uint32 sonar_measure_time_100ns = 0;

    if(LPLD_GPIO_IsPinxExt(PORTC, PinNum2GpioPin(HCSR04_ECHO_PIN_NUM)))
    {
        if(HCSR04_ECHO_PIN_INPUT == 1)                          // ECHO_PIN 
        {
            last_sonar_measure_reg_time = PIT->CHANNEL[HCSR04_PLUSE_SIGNAL_TIMER_PITX].CVAL; 
        }
        else
        {
            sonar_measure_reg_time = PIT->CHANNEL[HCSR04_PLUSE_SIGNAL_TIMER_PITX].CVAL;
            if(sonar_measure_reg_time > last_sonar_measure_reg_time)
            {
                sonar_measure_time_100ns = 0;
                g_sonar_measure_distance_mm = 0;
                g_sonar_measure_error_flag = 1;
            }
            else
            {
                sonar_measure_reg_time = last_sonar_measure_reg_time - sonar_measure_reg_time;
                sonar_measure_time_100ns = sonar_measure_reg_time / (g_bus_clock / 10000000);
                g_sonar_measure_distance_mm = sonar_measure_time_100ns / 58;
                g_sonar_measure_error_flag = 0;
            }

            s_get_input_flag = 1;
        }
    }
}
