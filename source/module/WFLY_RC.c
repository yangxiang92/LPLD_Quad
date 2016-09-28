/****************************************************************************** 
 *       WFLY_RC.c ----- The function to use the remote controller of WFLY 6e *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  WFLY_RC.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/28 13:38:19                                                       *
 ******************************************************************************/
#include "WFLY_RC.h"

uint8 g_WFLY_RC_timer_out_flag = 0;
uint32 g_WFLY_RC_pluse_width_us[WFLY_RC_CHANNEL_NUM] = {0,0,0,0,0,0};
static PIT_InitTypeDef WFLY_RC_PWM_width_measure_timer_init_struct;

void InitWFLY_RC(void)
{
    GPIO_InitTypeDef WFLY_RC_PWM_input_pins_init_struct = {0};

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH0_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH0_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH1_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH1_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH2_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH2_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH3_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH3_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH4_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH4_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTB_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);

    WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH5_PWM_INPUT_PIN_PORT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH5_PWM_INPUT_PIN_NUM);
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
    WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTB_ExtIsr;
    LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
    LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);    

    WFLY_RC_PWM_width_measure_timer_init_struct.PIT_Pitx = WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX;
    WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodS = 0;
    WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodMs = WFLY_RC_PWM_WIDTH_MEASURE_PERIOD_MS;
    WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodUs = 0;
    WFLY_RC_PWM_width_measure_timer_init_struct.PIT_Isr = WFLY_RC_TimerOutIsr;
    LPLD_PIT_Init(WFLY_RC_PWM_width_measure_timer_init_struct);
    LPLD_PIT_EnableIrq(WFLY_RC_PWM_width_measure_timer_init_struct);
}

void PORTA_ExtIsr(void)
{
    if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH0_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(0);
    }
    if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH1_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(1);
    }
    if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH2_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(2);
    }
    if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH3_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(3);
    }
}

void PORTB_ExtIsr(void)
{
    if(LPLD_GPIO_IsPinxExt(PORTB, PinNum2GpioPin(WFLY_RC_CH4_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(4);
    }
    if(LPLD_GPIO_IsPinxExt(PORTB, PinNum2GpioPin(WFLY_RC_CH5_PWM_INPUT_PIN_NUM)))    
    {
        WFLY_RC_CHX_InputPWMMeasureIsr(5);
    }
}

void WFLY_RC_TimerOutIsr(void)
{
    int i = 0;
    g_WFLY_RC_timer_out_flag = 1;
    
    for(i = 0; i < WFLY_RC_CHANNEL_NUM; i ++)
    {
        g_WFLY_RC_pluse_width_us[i] = 0;
    }
}

void WFLY_RC_CHX_InputPWMMeasureIsr(uint8 channel_num)
{
    static uint32 s_WFLY_RC_pluse_beggin_reg_time[WFLY_RC_CHANNEL_NUM] = {0, 0, 0, 0, 0, 0};
//    static uint8 s_WFLY_RC_pluse_measure_complete_flag[WFLY_RC_CHANNEL_NUM] = {0, 0, 0, 0, 0, 0};
    int32 reg_time_diff = 0;

    switch(channel_num)
    {
        case 0: 
            if(WFLY_RC_CH0_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[0] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[0] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[0] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[0] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[0] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;

        case 1: 
            if(WFLY_RC_CH1_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[1] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[1] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[1] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[1] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[1] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;

        case 2: 
            if(WFLY_RC_CH2_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[2] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[2] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[2] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[2] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[2] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;

        case 3: 
            if(WFLY_RC_CH3_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[3] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[3] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[3] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[3] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[3] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;          

        case 4: 
            if(WFLY_RC_CH4_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[4] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[4] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[4] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[4] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[4] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;

        case 5: 
            if(WFLY_RC_CH5_INPUT == 1)
            {
                s_WFLY_RC_pluse_beggin_reg_time[5] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
//                s_WFLY_RC_pluse_measure_complete_flag[5] = 0;
            }
            else
            {
                reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[5] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
                if(reg_time_diff > 0)
                {
                    g_WFLY_RC_pluse_width_us[5] = reg_time_diff / (g_bus_clock / 1000000);
//                    s_WFLY_RC_pluse_measure_complete_flag[5] = 1;
                    WFLY_RC_ResetTimer();
                }
            }
            break;  

        default:
            break;
    }

//    if(s_WFLY_RC_pluse_measure_complete_flag[0] && s_WFLY_RC_pluse_measure_complete_flag[1] && s_WFLY_RC_pluse_measure_complete_flag[2] && s_WFLY_RC_pluse_measure_complete_flag[3])
//    {
//        WFLY_RC_ResetTimer();
//    }
}

void WFLY_RC_ResetTimer(void)
{
    g_WFLY_RC_timer_out_flag = 0;
    LPLD_PIT_Init(WFLY_RC_PWM_width_measure_timer_init_struct);
    LPLD_PIT_EnableIrq(WFLY_RC_PWM_width_measure_timer_init_struct);    
}
