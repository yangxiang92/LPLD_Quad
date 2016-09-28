/******************************************************************************
 *       myqueue.h ----- The header of myqueue.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  myqueue.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/12 9:25:51                                                       *
 ******************************************************************************/
#ifndef _MYQUEUE_H_
#define _MYQUEUE_H_

#include "common.h"

typedef struct
{
    int8 * buff;
    int16 front_pointer;
    int16 back_pointer;
    uint16 buff_size;
}MyQueue;

MyQueue * CreateMyQueue(uint16 buf_size);
void DestoryMyQueue(MyQueue * queue);
int16 GetMyQueueSize(MyQueue * queue);
uint8 IsMyQueueEmpty(MyQueue * queue);
uint8 IsMyQueueFull(MyQueue * queue);
uint8 PushMyQueue(MyQueue * queue, int8 data);
int8 PopMyQueue(MyQueue * queue);
void ClearMyQueue(MyQueue * queue);

#endif
