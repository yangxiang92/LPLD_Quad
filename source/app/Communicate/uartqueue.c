/****************************************************************************** 
 *       uartqueue.c ----- The code to use queue to send uart data          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  uartqueue.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/13 21:42:53                                                       *
 ******************************************************************************/
#include "uartqueue.h"

MyQueue * s_sUARTQueue[6]={NULL,NULL,NULL,NULL,NULL,NULL};
MyQueue * s_sUARTRecvQueue[6]={NULL,NULL,NULL,NULL,NULL,NULL};

void InitUartQueue(UART_Type * uartx, int16 buf_size)
{
    if(uartx == UART0)
    {
        s_sUARTQueue[0] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART1)
    {
        s_sUARTQueue[1] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART2)
    {
        s_sUARTQueue[2] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART3)
    {
        s_sUARTQueue[3] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART4)
    {
        s_sUARTQueue[4] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART5)
    {
        s_sUARTQueue[5] = CreateMyQueue(buf_size);
    }
}

void DestoryUartQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        DestoryMyQueue(s_sUARTQueue[0]);
    }
    else if(uartx == UART1)
    {
        DestoryMyQueue(s_sUARTQueue[1]);
    }
    else if(uartx == UART2)
    {
        DestoryMyQueue(s_sUARTQueue[2]);
    }
    else if(uartx == UART3)
    {
        DestoryMyQueue(s_sUARTQueue[3]);
    }
    else if(uartx == UART4)
    {
        DestoryMyQueue(s_sUARTQueue[4]);
    }
    else if(uartx == UART5)
    {
        DestoryMyQueue(s_sUARTQueue[5]);
    }    
}

int16 GetUartQueueSize(UART_Type* uartx)
{
    if(uartx == UART0)
    {
        return GetMyQueueSize(s_sUARTQueue[0]);
    }
    else if(uartx == UART1)
    {
        return GetMyQueueSize(s_sUARTQueue[1]);
    }
    else if(uartx == UART2)
    {
        return GetMyQueueSize(s_sUARTQueue[2]);
    }
    else if(uartx == UART3)
    {
        return GetMyQueueSize(s_sUARTQueue[3]);
    }
    else if(uartx == UART4)
    {
        return GetMyQueueSize(s_sUARTQueue[4]);
    }
    else
    {
        return GetMyQueueSize(s_sUARTQueue[5]);
    }        
}

uint8 IsUartQueueEmpty(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return IsMyQueueEmpty(s_sUARTQueue[0]);
    }
    else if(uartx == UART1)
    {
        return IsMyQueueEmpty(s_sUARTQueue[1]);
    }
    else if(uartx == UART2)
    {
        return IsMyQueueEmpty(s_sUARTQueue[2]);
    }
    else if(uartx == UART3)
    {
        return IsMyQueueEmpty(s_sUARTQueue[3]);
    }
    else if(uartx == UART4)
    {
        return IsMyQueueEmpty(s_sUARTQueue[4]);
    }
    else
    {
        return IsMyQueueEmpty(s_sUARTQueue[5]);
    }            
}

uint8 IsUartQueueFull(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return IsMyQueueFull(s_sUARTQueue[0]);
    }
    else if(uartx == UART1)
    {
        return IsMyQueueFull(s_sUARTQueue[1]);
    }
    else if(uartx == UART2)
    {
        return IsMyQueueFull(s_sUARTQueue[2]);
    }
    else if(uartx == UART3)
    {
        return IsMyQueueFull(s_sUARTQueue[3]);
    }
    else if(uartx == UART4)
    {
        return IsMyQueueFull(s_sUARTQueue[4]);
    }
    else
    {
        return IsMyQueueFull(s_sUARTQueue[5]);
    }                
}

uint8 PushUartQueue(UART_Type * uartx, int8 data)
{
    if(uartx == UART0)
    {
        return PushMyQueue(s_sUARTQueue[0], data);
    }
    else if(uartx == UART1)
    {
        return PushMyQueue(s_sUARTQueue[1], data);
    }
    else if(uartx == UART2)
    {
        return PushMyQueue(s_sUARTQueue[2], data);
    }
    else if(uartx == UART3)
    {
        return PushMyQueue(s_sUARTQueue[3], data);
    }
    else if(uartx == UART4)
    {
        return PushMyQueue(s_sUARTQueue[4], data);
    }
    else
    {
        return PushMyQueue(s_sUARTQueue[5], data);
    }                
}

int8 PopUartQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return PopMyQueue(s_sUARTQueue[0]);
    }
    else if(uartx == UART1)
    {
        return PopMyQueue(s_sUARTQueue[1]);
    }
    else if(uartx == UART2)
    {
        return PopMyQueue(s_sUARTQueue[2]);
    }
    else if(uartx == UART3)
    {
        return PopMyQueue(s_sUARTQueue[3]);
    }
    else if(uartx == UART4)
    {
        return PopMyQueue(s_sUARTQueue[4]);
    }
    else
    {
        return PopMyQueue(s_sUARTQueue[5]);
    }                
}

uint8 PutCharUartQueue(UART_Type * uartx, int8 ch)
{
    return PushUartQueue(uartx, ch);
}

uint8 PutStringUartQueue(UART_Type * uartx, int8 * str)
{
    while(*str != '\0')
    {
        if(PutCharUartQueue(uartx, *str))
        {
            str++;
        }
        else
        {
            return 0;
        }
    }

    return 1;
}

uint8 SendSeveralUartQueueData(UART_Type * uartx, int num)
{
    int i = 0;

    for(i = 0; i < num; i++)
    {
        if(!IsUartQueueEmpty(uartx))
        {
            LPLD_UART_PutChar(uartx, PopUartQueue(uartx));
        }
        else
        {
            return 0;
        }
    }

    return 1;
}

void InitUartRecvQueue(UART_Type * uartx, int16 buf_size)
{
    if(uartx == UART0)
    {
        s_sUARTRecvQueue[0] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART1)
    {
        s_sUARTRecvQueue[1] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART2)
    {
        s_sUARTRecvQueue[2] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART3)
    {
        s_sUARTRecvQueue[3] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART4)
    {
        s_sUARTRecvQueue[4] = CreateMyQueue(buf_size);
    }
    else if(uartx == UART5)
    {
        s_sUARTRecvQueue[5] = CreateMyQueue(buf_size);
    }
}

void DestoryUartRecvQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        DestoryMyQueue(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        DestoryMyQueue(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        DestoryMyQueue(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        DestoryMyQueue(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        DestoryMyQueue(s_sUARTRecvQueue[4]);
    }
    else if(uartx == UART5)
    {
        DestoryMyQueue(s_sUARTRecvQueue[5]);
    }    
}

int16 GetUartRecvQueueSize(UART_Type* uartx)
{
    if(uartx == UART0)
    {
        return GetMyQueueSize(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        return GetMyQueueSize(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        return GetMyQueueSize(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        return GetMyQueueSize(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        return GetMyQueueSize(s_sUARTRecvQueue[4]);
    }
    else
    {
        return GetMyQueueSize(s_sUARTRecvQueue[5]);
    }        
}

uint8 IsUartRecvQueueEmpty(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[4]);
    }
    else
    {
        return IsMyQueueEmpty(s_sUARTRecvQueue[5]);
    }            
}

uint8 IsUartRecvQueueFull(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return IsMyQueueFull(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        return IsMyQueueFull(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        return IsMyQueueFull(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        return IsMyQueueFull(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        return IsMyQueueFull(s_sUARTRecvQueue[4]);
    }
    else
    {
        return IsMyQueueFull(s_sUARTRecvQueue[5]);
    }                
}

uint8 PushUartRecvQueue(UART_Type * uartx, int8 data)
{
    if(uartx == UART0)
    {
        return PushMyQueue(s_sUARTRecvQueue[0], data);
    }
    else if(uartx == UART1)
    {
        return PushMyQueue(s_sUARTRecvQueue[1], data);
    }
    else if(uartx == UART2)
    {
        return PushMyQueue(s_sUARTRecvQueue[2], data);
    }
    else if(uartx == UART3)
    {
        return PushMyQueue(s_sUARTRecvQueue[3], data);
    }
    else if(uartx == UART4)
    {
        return PushMyQueue(s_sUARTRecvQueue[4], data);
    }
    else
    {
        return PushMyQueue(s_sUARTRecvQueue[5], data);
    }                
}

int8 PopUartRecvQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return PopMyQueue(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        return PopMyQueue(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        return PopMyQueue(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        return PopMyQueue(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        return PopMyQueue(s_sUARTRecvQueue[4]);
    }
    else
    {
        return PopMyQueue(s_sUARTRecvQueue[5]);
    }                
}

void ClearUartRecvQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        ClearMyQueue(s_sUARTRecvQueue[0]);
    }
    else if(uartx == UART1)
    {
        ClearMyQueue(s_sUARTRecvQueue[1]);
    }
    else if(uartx == UART2)
    {
        ClearMyQueue(s_sUARTRecvQueue[2]);
    }
    else if(uartx == UART3)
    {
        ClearMyQueue(s_sUARTRecvQueue[3]);
    }
    else if(uartx == UART4)
    {
        ClearMyQueue(s_sUARTRecvQueue[4]);
    }
    else if(uartx == UART5)
    {
        ClearMyQueue(s_sUARTRecvQueue[5]);
    }    
}

MyQueue * GetUartRecvQueue(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return s_sUARTRecvQueue[0];
    }
    else if(uartx == UART1)
    {
        return s_sUARTRecvQueue[1];
    }
    else if(uartx == UART2)
    {
        return s_sUARTRecvQueue[2];
    }
    else if(uartx == UART3)
    {
        return s_sUARTRecvQueue[3];
    }
    else if(uartx == UART4)
    {
        return s_sUARTRecvQueue[4];
    }
    else
    {
        return s_sUARTRecvQueue[5];
    }      
}
