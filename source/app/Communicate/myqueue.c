/****************************************************************************** 
 *       myqueue.c ----- The queue data structure algorithm          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  myqueue.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/12 9:25:13                                                       *
 ******************************************************************************/
#include "myqueue.h"

MyQueue * CreateMyQueue(uint16 buf_size)
{
    MyQueue * ret_queue;
    int i = 0;

    ret_queue = (MyQueue *)malloc(sizeof(MyQueue));
    ret_queue->buff_size = buf_size;
    ret_queue->buff = (int8 *)malloc(ret_queue->buff_size * sizeof(int8));
    for(i = 0; i < ret_queue->buff_size; i++)
    {
        ret_queue->buff[i] = '\0';
    }
    ret_queue->front_pointer = 0;
    ret_queue->back_pointer = 0;
    
    return ret_queue;
}

void DestoryMyQueue(MyQueue * queue)
{
    free(queue->buff);
    free(queue);
}

int16 GetMyQueueSize(MyQueue * queue)
{
    int16 diff = 0;

    diff = queue->front_pointer - queue->back_pointer;

    if(diff >= 0)
    {
        diff = diff;
    }
    else
    {
        diff = diff + queue->buff_size;
    }

    return diff;
}

uint8 IsMyQueueEmpty(MyQueue * queue)
{
    if(GetMyQueueSize(queue) > 0)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

uint8 IsMyQueueFull(MyQueue * queue)
{
    if(GetMyQueueSize(queue) < (queue->buff_size-1))
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

uint8 PushMyQueue(MyQueue * queue, int8 data)
{
    if(!IsMyQueueFull(queue))
    {
        queue->buff[queue->front_pointer] = data;
        queue->front_pointer ++;
        if(queue->front_pointer >= queue->buff_size)
        {
            queue->front_pointer = 0;
        }
        return 1;
    }
    else
    {
        return 0;
    }
}

int8 PopMyQueue(MyQueue * queue)
{
    int8 ret = 0;

    ret = queue->buff[queue->back_pointer];

    if(!IsMyQueueEmpty(queue))
    {
        queue->back_pointer ++;
        if(queue->back_pointer >= (queue->buff_size))
        {
            queue->back_pointer = 0;
        }
    }

    return ret;
}

void ClearMyQueue(MyQueue * queue)
{
    queue->front_pointer = queue->back_pointer;
}