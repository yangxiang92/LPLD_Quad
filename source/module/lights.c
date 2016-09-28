/****************************************************************************** 
 *       lights.c ----- The code for led lights use          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  lights.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/21 9:45:25                                                       *
 ******************************************************************************/
#include "lights.h"

void InitLight(void)
{
    GPIO_InitTypeDef light_init_struct = {0};

    light_init_struct.GPIO_PTx      = LED0_PORT;
    light_init_struct.GPIO_Pins     = LED0_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED1_PORT;
    light_init_struct.GPIO_Pins     = LED1_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED2_PORT;
    light_init_struct.GPIO_Pins     = LED2_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED3_PORT;
    light_init_struct.GPIO_Pins     = LED3_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED4_PORT;
    light_init_struct.GPIO_Pins     = LED4_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED5_PORT;
    light_init_struct.GPIO_Pins     = LED5_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED6_PORT;
    light_init_struct.GPIO_Pins     = LED6_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);

    light_init_struct.GPIO_PTx      = LED7_PORT;
    light_init_struct.GPIO_Pins     = LED7_GPIO_PIN;
    light_init_struct.GPIO_Dir      = DIR_OUTPUT;
    light_init_struct.GPIO_Output   = OUTPUT_H;
    light_init_struct.GPIO_PinControl = 0;
    light_init_struct.GPIO_Isr      = NULL;    
    LPLD_GPIO_Init(light_init_struct);   
}

void TurnOnLights(uint8 mask)
{
    int i = 0;

    for(i = 0; i < LIGHTS_AMOUNT; i++)
    {
        if(mask & 0x01)
        {
            SetOneLightOnOff(i, 1);
        }
        mask = mask >> 1;
    }
}

void TurnOffLights(uint8 mask)
{
    int i = 0;

    for(i = 0; i < LIGHTS_AMOUNT; i++)
    {
        if(mask & 0x01)
        {
            SetOneLightOnOff(i, 0);
        }
        mask = mask >> 1;
    }
}

void SetLightsOnOff(uint8 mask)
{
    int i = 0;

    for(i = 0; i < LIGHTS_AMOUNT; i++)
    {
        if(mask & 0x01)
        {
            SetOneLightOnOff(i, 1);
        }
        else
        {
            SetOneLightOnOff(i, 0);
        }
        mask = mask >> 1;
    }
}

void SetOneLightOnOff(int led_num, uint8 state)
{
    if((led_num >=0) && (led_num < LIGHTS_AMOUNT))
    {
    switch (led_num)
    {
        case 0: 
                LED0_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED0_PORT, LED0_PIN_NUM, (uint8)!state);
                break;
        case 1: 
                LED1_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED1_PORT, LED1_PIN_NUM, (uint8)!state);
                break;
        case 2: 
                LED2_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED2_PORT, LED2_PIN_NUM, (uint8)!state);
                break;
        case 3: 
                LED3_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED3_PORT, LED3_PIN_NUM, (uint8)!state);
                break;
        case 4: 
                LED4_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED4_PORT, LED4_PIN_NUM, (uint8)!state);
                break;
        case 5: 
                LED5_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED5_PORT, LED5_PIN_NUM, (uint8)!state);
                break;
        case 6: 
                LED6_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED6_PORT, LED6_PIN_NUM, (uint8)!state);
                break;
        case 7: 
                LED7_OUTPUT = !state;
                //LPLD_GPIO_Output_b(LED7_PORT, LED7_PIN_NUM, (uint8)!state);
                break;
        default:
                break;
    }
    }
}

void ToggleOneLight(int led_num)
{
    if((led_num >=0) && (led_num < LIGHTS_AMOUNT))
    {    
    switch (led_num)
    {
        case 0: 
                LED0_OUTPUT = !LED0_INPUT;
                //LPLD_GPIO_Toggle_b(LED0_PORT, LED0_PIN_NUM);
                break;
        case 1: 
                LED1_OUTPUT = !LED1_INPUT;
                //LPLD_GPIO_Toggle_b(LED1_PORT, LED1_PIN_NUM);
                break;
        case 2: 
                LED2_OUTPUT = !LED2_INPUT;                
                //LPLD_GPIO_Toggle_b(LED2_PORT, LED2_PIN_NUM);
                break;
        case 3: 
                LED3_OUTPUT = !LED3_INPUT; 
                //LPLD_GPIO_Toggle_b(LED3_PORT, LED3_PIN_NUM);
                break;
        case 4: 
                LED4_OUTPUT = !LED4_INPUT; 
                //LPLD_GPIO_Toggle_b(LED4_PORT, LED4_PIN_NUM);
                break;
        case 5: 
                LED5_OUTPUT = !LED5_INPUT; 
                //LPLD_GPIO_Toggle_b(LED5_PORT, LED5_PIN_NUM);
                break;
        case 6: 
                LED6_OUTPUT = !LED6_INPUT; 
                //LPLD_GPIO_Toggle_b(LED6_PORT, LED6_PIN_NUM);
                break;
        case 7: 
                LED7_OUTPUT = !LED7_INPUT; 
                //LPLD_GPIO_Toggle_b(LED7_PORT, LED7_PIN_NUM);
                break;
        default:
                break;
    }    
    }
}

void ToggleLights(uint8 mask)
{
    int i = 0;

    for(i = 0; i < LIGHTS_AMOUNT; i++)
    {
        if(mask & 0x01)
        {
            ToggleOneLight(i);
        }
        mask = mask >> 1;
    }    
}
