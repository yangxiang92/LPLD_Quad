/******************************************************************************
 *       uartqueue.h ----- The header of uartqueue.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  uartqueue.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/13 21:43:23                                                       *
 ******************************************************************************/
#ifndef _UARTQUEUE_H_
#define _UARTQUEUE_H_

#include "common.h"

#include "myqueue.h"

void InitUartQueue(UART_Type * uartx, int16 buf_size);
void DestoryUartQueue(UART_Type * uartx);
int16 GetUartQueueSize(UART_Type* uartx);
uint8 IsUartQueueEmpty(UART_Type * uartx);
uint8 IsUartQueueFull(UART_Type * uartx);
uint8 PushUartQueue(UART_Type * uartx, int8 data);
int8 PopUartQueue(UART_Type * uartx);
uint8 PutCharUartQueue(UART_Type * uartx, int8 ch);
uint8 PutStringUartQueue(UART_Type * uartx, int8 * str);
uint8 SendSeveralUartQueueData(UART_Type * uartx, int num);
void InitUartRecvQueue(UART_Type * uartx, int16 buf_size);
void DestoryUartRecvQueue(UART_Type * uartx);
int16 GetUartRecvQueueSize(UART_Type* uartx);
uint8 IsUartRecvQueueEmpty(UART_Type * uartx);
uint8 IsUartRecvQueueFull(UART_Type * uartx);
uint8 PushUartRecvQueue(UART_Type * uartx, int8 data);
int8 PopUartRecvQueue(UART_Type * uartx);
void ClearUartRecvQueue(UART_Type * uartx);
MyQueue * GetUartRecvQueue(UART_Type * uartx);

#endif
