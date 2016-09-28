/****************************************************************************** 
 *       decodedata.c ----- Decode the data receved from the uart          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  decodedata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/23 15:24:46                                                       *
 ******************************************************************************/
#include "decodedata.h"

static uint8 s_u8DecodedFlag[6] = {1,1,1,1,1,1};

uint8 RecvFrame(int8 recv, UART_Type * uartx)
{
    uint8 ret = 0;
    static uint8 frame_length = 0;
    static uint8 frame_state_flag = 0;
    static uint8 frame_byte_count = 0;
    static uint8 frame_type = 0;

    if(CheckDecodedFlag(uartx) == 1)
    {
        if(frame_state_flag == 0)
        {
            if(((uint8)recv) == 0xA5)
            {
                PushUartRecvQueue(uartx, recv);
                frame_state_flag = 1;            
            }
            else
            {
                ClearUartRecvQueue(uartx);
                frame_state_flag = 0;
            }
        }

        else if(frame_state_flag == 1)
        {
            if(((uint8)recv) == 0x5A)
            {
                PushUartRecvQueue(uartx, recv);
                frame_state_flag = 2;
                frame_byte_count = 0;
            }
            else
            {
                ClearUartRecvQueue(uartx);
                frame_state_flag = 0;
            }
        }

        else if(frame_state_flag == 2)
        {
            frame_length = (uint8) recv;
            if((frame_length > 2) && (frame_length < 50))
            {
                PushUartRecvQueue(uartx, recv);
                frame_byte_count ++;
                frame_state_flag = 3;
            }
            else
            {
                ClearUartRecvQueue(uartx);
                frame_state_flag = 0;        
            }
        }

        else if(frame_state_flag == 3)
        {
            PushUartRecvQueue(uartx, recv);
            frame_type = (uint8)recv;
            frame_byte_count ++;
            frame_state_flag = 4;
        }

        else if(frame_state_flag == 4)
        {
            if(frame_byte_count < frame_length )
            {
                if(frame_byte_count == (frame_length - 1))
                {
                    frame_state_flag = 5;
                }            
                PushUartRecvQueue(uartx, recv);
                frame_byte_count ++;
            }
            else
            {
                ClearUartRecvQueue(uartx);
                frame_state_flag = 0;
            }
        }    

        else if(frame_state_flag == 5)
        {
            if(((uint8)recv) == 0xAA)
            {
                PushUartRecvQueue(uartx, recv);
                frame_state_flag = 0;
                ret = frame_type;
                ClearDecodedFlag(uartx);
            }
            else
            {
                ClearUartRecvQueue(uartx);
                frame_state_flag = 0;
            }        
        }

        else
        {
            ClearUartRecvQueue(uartx);
            frame_state_flag = 0;
        }
    }

    return ret;
}

uint8 DecodeControlParaData(TransferControlParaData * ctrl_para_data, UART_Type * uartx)
{
    uint8 ret = 1;
    int i = 0;
    int8 data_buf[64];
    int16 queue_size = GetUartRecvQueueSize(uartx);
    TransferControlParaDataFrame ctrl_data_frame;

    if(queue_size != sizeof(TransferControlParaDataFrame))
    {
        ret = 0;
    }

    for(i = 0; i < sizeof(TransferControlParaDataFrame); i++)
    {
        data_buf[i] = PopUartRecvQueue(uartx);
    }

    ctrl_data_frame = *((TransferControlParaDataFrame*)data_buf);

    if(ctrl_data_frame.frame_type != 0x01)
    {
        ret = 0;
    }
    if(ctrl_data_frame.header1 != 0xA5)
    {
        ret = 0;
    }
    if(ctrl_data_frame.header2 != 0x5A)
    {
        ret = 0;
    }
    if(ctrl_data_frame.frame_size != sizeof(TransferControlParaDataFrame) - 3)
    {
        ret = 0;
    }
    if(ctrl_data_frame.ender != 0xAA)
    {
        ret = 0;
    }
    if(CalculateCrc16_HalfByte((uint8 *)(&ctrl_data_frame) + 2, sizeof(TransferControlParaDataFrame) - 3) != 0)
    {
        ret = 0;
    }

    SetDecodedFlag(uartx);
    ClearUartRecvQueue(uartx);   
    if(ret == 1)
    { 
        *ctrl_para_data = ctrl_data_frame.data;
    }
    return ret;
}

uint8 DecodePX4FLOWData(PX4FLOW_Data * p_px4flow_data, UART_Type * uartx)
{
    uint8 ret = 1;
    int i = 0;
    int8 data_buf[64];
    int16 queue_size = GetUartRecvQueueSize(uartx);
    int16 frame_size = sizeof(PX4FLOW_DataFrame);
    PX4FLOW_DataFrame px4flow_data_frame;

    if(queue_size != frame_size)
    {
        ret = 0;
    }

    for(i = 0; i < frame_size; i++)
    {
        data_buf[i] = PopUartRecvQueue(uartx);
    }

    px4flow_data_frame = *((PX4FLOW_DataFrame*)data_buf);

    if(px4flow_data_frame.frame_type != 0x03)
    {
        ret = 0;
    }
    if(px4flow_data_frame.header1 != 0xA5)
    {
        ret = 0;
    }
    if(px4flow_data_frame.header2 != 0x5A)
    {
        ret = 0;
    }
    if(px4flow_data_frame.frame_size != frame_size - 3)
    {
        ret = 0;
    }
    if(px4flow_data_frame.ender != 0xAA)
    {
        ret = 0;
    }
    if(CalculateCrc16_HalfByte((uint8 *)(&px4flow_data_frame) + 2, frame_size - 3) != 0)
    {
        ret = 0;
    }

    SetDecodedFlag(uartx);
    ClearUartRecvQueue(uartx);   
    if(ret == 1)
    { 
        *p_px4flow_data = px4flow_data_frame.data;
    }
    return ret;
}

uint8 CheckDecodedFlag(UART_Type * uartx)
{
    if(uartx == UART0)
    {
        return s_u8DecodedFlag[0];
    }
    else if(uartx == UART1)
    {
        return s_u8DecodedFlag[1];
    }
    else if(uartx == UART2)
    {
        return s_u8DecodedFlag[2];
    }
    else if(uartx == UART3)
    {
        return s_u8DecodedFlag[3];
    }
    else if(uartx == UART4)
    {
        return s_u8DecodedFlag[4];
    }
    else if(uartx == UART5)
    {
        return s_u8DecodedFlag[5];
    }
    else 
    {
        return 0;
    }
}

void SetDecodedFlagState(UART_Type * uartx, uint8 state)
{
    if(uartx == UART0)
    {
        s_u8DecodedFlag[0] = state;
    }
    else if(uartx == UART1)
    {
        s_u8DecodedFlag[1] = state;
    }
    else if(uartx == UART2)
    {
        s_u8DecodedFlag[2] = state;
    }
    else if(uartx == UART3)
    {
        s_u8DecodedFlag[3] = state;
    }
    else if(uartx == UART4)
    {
        s_u8DecodedFlag[4] = state;
    }
    else if(uartx == UART5)
    {
        s_u8DecodedFlag[5] = state;
    }
}

void SetDecodedFlag(UART_Type * uartx)
{
    SetDecodedFlagState(uartx, 1);
}

void ClearDecodedFlag(UART_Type * uartx)
{
    SetDecodedFlagState(uartx, 0);
}
