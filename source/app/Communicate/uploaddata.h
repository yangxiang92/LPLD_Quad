/******************************************************************************
 *       uploaddata.h ----- The header of uploaddata.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  uploaddata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 16:35:28                                                       *
 ******************************************************************************/
#ifndef _UPLOADDATA_H_
#define _UPLOADDATA_H_

#include "common.h"

#define MINIAHRS_UART_QUEUE_SIZE 128

typedef struct
{
    uint8 buff[MINIAHRS_UART_QUEUE_SIZE];
    int16 queue_front_pointer;
    int16 queue_back_pointer;
}miniAHRS_UartQueue;

#include "module.h"

#ifndef MINIAHRS_CLIENT_USE
#define MINIAHRS_CLIENT_USE
#endif

void miniAHRS_InitUartQueue(void);
int16 miniAHRS_GetUartQueueSize(void);
uint8 miniAHRS_IsUartQueueEmpty(void);
miniAHRS_UartQueue * miniAHRS_GetUartQueue(void);
uint8 miniAHRS_PushUartQueue(uint8 data);
uint8 miniAHRS_PopUartQueue(void);
void miniAHRS_SendOneByte(uint8 ch);
void miniAHRS_ReportIMU(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec);
void miniAHRS_ReportIMU_Queue(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec);
void miniAHRS_ReportMotion(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,int16_t hx,int16_t hy,int16_t hz);
void miniAHRS_ReportMotion_Queue(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,	int16_t hx,int16_t hy,int16_t hz);
#endif
