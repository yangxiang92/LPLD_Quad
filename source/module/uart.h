/******************************************************************************
 *       uart.h ----- The header of uart.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  uart.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 18:25:49                                                       *
 ******************************************************************************/
#ifndef _UART_H_
#define _UART_H_

// The LPLD library
#include "common.h"

// Symbol Definition
#define DEBUG_UART          UART4
#define DEBUG_UART_BAUDRATE 115200
#define DEBUG_UART_RX_PIN   PTE25
#define DEBUG_UART_TX_PIN   PTE24

#define COMMUNICATE_UART            UART2
#define COMMUNICATE_UART_BAUDRATE   115200
#define COMMUNICATE_UART_RX_PIN     PTD2
#define COMMUNICATE_UART_TX_PIN     PTD3

#define GPS_UART            UART5
#define GPS_UART_BAUDRATE   115200
#define GPS_UART_RX_PIN     PTD8
#define GPS_UART_TX_PIN     PTD9

#include "lights.h"

#include "communicate.h"
#include "timer.h"


// Function Decleration
void InitDebugUart(void);
void InitCommunicateUart(void);
void InitGPSUart(void);
void CommUartSendOneByte(int8 data);
void CommUartSendByteArr(int8 * data_arr, int32 num);
void CommUartSendString(int8 * string);
void CommunicateUartRxIsr(void);
void DebugUartRxIsr(void);
void GPSUartRxIsr(void);

extern uint32 g_u32DebugPWM[4];
extern float g_f32DebugYaw;
extern float g_f32DebugPitch;
extern float g_f32DebugRoll;
extern float g_f32DebugThrottle;
extern PX4FLOW_Data g_sPx4flowData;
extern uint8 g_u8FlowNewData;
extern unsigned long g_ulFlowTime;
extern float g_f32XPosition;
extern float g_f32YPosition;

#endif
