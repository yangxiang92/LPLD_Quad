/****************************************************************************** 
 *       switches.c ----- The code of switches use          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  switches.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/23 16:37:57                                                       *
 ******************************************************************************/
#include "switches.h"

void InitSwitches(void)
{
    GPIO_InitTypeDef switch_init_struct = {0};

    switch_init_struct.GPIO_PTx     = SWITCH0_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH0_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH1_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH1_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH2_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH2_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH3_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH3_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH4_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH4_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH5_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH5_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH6_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH6_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);

    switch_init_struct.GPIO_PTx     = SWITCH7_PORT;
    switch_init_struct.GPIO_Pins    = SWITCH7_GPIO_PIN;
    switch_init_struct.GPIO_Dir     = DIR_INPUT;
    LPLD_GPIO_Init(switch_init_struct);
}

uint8 ReadSwitches(uint8 mask)
{
    int i = 0;
    uint8 ret = 0x00;
    uint8 temp_bit_state = 0x00;

    for(i = 0; i < SWITCHES_AMOUNT; i++)
    {
        if(mask & 0x01)
        {
            switch(i)
            {
                case 0 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH0_PORT, SWITCH0_PIN_NUM);
                         break;
                case 1 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH1_PORT, SWITCH1_PIN_NUM);
                         break;
                case 2 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH2_PORT, SWITCH2_PIN_NUM);
                         break;
                case 3 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH3_PORT, SWITCH3_PIN_NUM);
                         break;
                case 4 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH4_PORT, SWITCH4_PIN_NUM);
                         break;
                case 5 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH5_PORT, SWITCH5_PIN_NUM);
                         break;
                case 6 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH6_PORT, SWITCH6_PIN_NUM);
                         break;
                case 7 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH7_PORT, SWITCH7_PIN_NUM);
                         break;
                default:
                         break;
            }
            ret = ret | (temp_bit_state << i);
        }
        mask = mask >> 1;
    }

    return ret;
}
