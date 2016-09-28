/******************************************************************************
 *       lights.h ----- The header for lights.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  lights.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/21 9:47:54                                                       *
 ******************************************************************************/
#ifndef _LIGHT_H_
#define _LIGHT_H_

// LPLD library
#include "common.h"

// Define the amounts of lights
#define LIGHTS_AMOUNT 8                          // The value can not be larger than 8, or you might need to change some codes 

#define LED0_PORT       PTA
#define LED0_PIN_NUM    25
#define LED0_GPIO_PIN   PinNum2GpioPin(LED0_PIN_NUM)
#define LED1_PORT       PTA
#define LED1_PIN_NUM    24
#define LED1_GPIO_PIN   PinNum2GpioPin(LED1_PIN_NUM)
#define LED2_PORT       PTC
#define LED2_PIN_NUM    8
#define LED2_GPIO_PIN   PinNum2GpioPin(LED2_PIN_NUM)
#define LED3_PORT       PTC
#define LED3_PIN_NUM    9
#define LED3_GPIO_PIN   PinNum2GpioPin(LED3_PIN_NUM)
#define LED4_PORT       PTC
#define LED4_PIN_NUM    16
#define LED4_GPIO_PIN   PinNum2GpioPin(LED4_PIN_NUM)
#define LED5_PORT       PTC
#define LED5_PIN_NUM    17
#define LED5_GPIO_PIN   PinNum2GpioPin(LED5_PIN_NUM)
#define LED6_PORT       PTC
#define LED6_PIN_NUM    18
#define LED6_GPIO_PIN   PinNum2GpioPin(LED6_PIN_NUM)
#define LED7_PORT       PTC
#define LED7_PIN_NUM    19
#define LED7_GPIO_PIN   PinNum2GpioPin(LED7_PIN_NUM)
// Function decleration

#define LED0_INPUT      PTA25_I
#define LED0_OUTPUT     PTA25_O
#define LED1_INPUT      PTA24_I
#define LED1_OUTPUT     PTA24_O
#define LED2_INPUT      PTC8_I
#define LED2_OUTPUT     PTC8_O
#define LED3_INPUT      PTC9_I
#define LED3_OUTPUT     PTC9_O
#define LED4_INPUT      PTC16_I
#define LED4_OUTPUT     PTC16_O
#define LED5_INPUT      PTC17_I
#define LED5_OUTPUT     PTC17_O
#define LED6_INPUT      PTC18_I
#define LED6_OUTPUT     PTC18_O
#define LED7_INPUT      PTC19_I
#define LED7_OUTPUT     PTC19_O


void InitLight(void);
void TurnOnLights(uint8 mask);
void TurnOffLights(uint8 mask);
void SetLightsOnOff(uint8 mask);
void SetOneLightOnOff(int led_num, uint8 state);
void ToggleOneLight(int led_num);
void ToggleLights(uint8 mask);

#endif
