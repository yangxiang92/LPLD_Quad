/****************************************************************************** 
 *       uart.c ----- The uart Function          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  uart.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/22 18:25:24                                                       *
 ******************************************************************************/
#include "uart.h"

uint32 g_u32DebugPWM[4] = {0,0,0,0};
float g_f32DebugYaw = 0;
float g_f32DebugRoll = 0;
float g_f32DebugPitch = 0;
float g_f32DebugThrottle = 0;
PX4FLOW_Data g_sPx4flowData = {0};
uint8 g_u8FlowNewData = 0;
unsigned long g_ulFlowTime = 0;
float g_f32XPosition = 0;
float g_f32YPosition = 0;

void InitDebugUart(void)
{
    UART_InitTypeDef debug_uart_init_struct = {0};
    debug_uart_init_struct.UART_Uartx    = DEBUG_UART;
    debug_uart_init_struct.UART_BaudRate = DEBUG_UART_BAUDRATE;
    debug_uart_init_struct.UART_RxPin    = DEBUG_UART_RX_PIN;
    debug_uart_init_struct.UART_TxPin    = DEBUG_UART_TX_PIN;
    debug_uart_init_struct.UART_RxIntEnable = TRUE;
    debug_uart_init_struct.UART_RxIsr = DebugUartRxIsr;
    LPLD_UART_Init(debug_uart_init_struct);
    
    LPLD_UART_EnableIrq(debug_uart_init_struct);
}

void InitCommunicateUart(void)
{
    UART_InitTypeDef communicate_uart_init_struct = {0};
    communicate_uart_init_struct.UART_Uartx     = COMMUNICATE_UART;
    communicate_uart_init_struct.UART_BaudRate  = COMMUNICATE_UART_BAUDRATE;
    communicate_uart_init_struct.UART_RxPin     = COMMUNICATE_UART_RX_PIN;
    communicate_uart_init_struct.UART_TxPin     = COMMUNICATE_UART_TX_PIN;
    //communicate_uart_init_struct.UART_RxIntEnable = TRUE;
    //communicate_uart_init_struct.UART_RxIsr = CommunicateUartRxIsr;
    LPLD_UART_Init(communicate_uart_init_struct);

    //LPLD_UART_EnableIrq(communicate_uart_init_struct);
}

void InitGPSUart(void)
{
    UART_InitTypeDef GPS_uart_init_struct = {0};
    GPS_uart_init_struct.UART_Uartx     = GPS_UART;
    GPS_uart_init_struct.UART_BaudRate  = GPS_UART_BAUDRATE;
    GPS_uart_init_struct.UART_RxPin     = GPS_UART_RX_PIN;
    GPS_uart_init_struct.UART_TxPin     = GPS_UART_TX_PIN;
    GPS_uart_init_struct.UART_RxIntEnable = TRUE;
    GPS_uart_init_struct.UART_RxIsr = GPSUartRxIsr;
    LPLD_UART_Init(GPS_uart_init_struct);

    LPLD_UART_EnableIrq(GPS_uart_init_struct);
}

void CommUartSendOneByte(int8 data)
{
    LPLD_UART_PutChar(COMMUNICATE_UART, data);
}

void CommUartSendByteArr(int8 * data_arr, int32 num)
{
    LPLD_UART_PutCharArr(COMMUNICATE_UART, data_arr, num);
}

void CommUartSendString(int8 * string)
{
    while(*string != '\0')
    {
        CommUartSendOneByte(*string);
        string++;
    }
}

void CommunicateUartRxIsr(void)
{
    int8 recv;
  
    recv = LPLD_UART_GetChar(COMMUNICATE_UART);
    //LPLD_UART_PutChar(COMMUNICATE_UART, recv);  
    LPLD_UART_PutChar(COMMUNICATE_UART, recv); 
    ToggleLights(0x02);
}

void DebugUartRxIsr(void)
{
    int8 str_buf[128];
    int8 recv;
    int i = 0;
  
    recv = LPLD_UART_GetChar(DEBUG_UART);
    //LPLD_UART_PutChar(DEBUG_UART, recv); 
    ToggleLights(0x01);

    switch(recv)
    {
        case 'q': g_u32DebugPWM[0] += 1;
                  i = 0;
                  break;
        case 'a': g_u32DebugPWM[0] -= 1;
                  i = 0;
                  break;
        case 'y': g_u32DebugPWM[0] = 100;
                  i = 0;
                  break;
        case 'h': g_u32DebugPWM[0] = 0;
                  i = 0;
                  break;
        case 'w': g_u32DebugPWM[1] += 1;
                  i = 1;
                  break;
        case 's': g_u32DebugPWM[1] -= 1;
                  i = 1;
                  break;
        case 'u': g_u32DebugPWM[1] = 100;
                  i = 1;
                  break;
        case 'j': g_u32DebugPWM[1] = 0;
                  i = 1;
                  break;
        case 'e': g_u32DebugPWM[2] += 1;
                  i = 2;
                  break;
        case 'd': g_u32DebugPWM[2] -= 1;
                  i = 2;
                  break;
        case 'i': g_u32DebugPWM[2] = 100;
                  i = 2;
                  break;
        case 'k': g_u32DebugPWM[2] = 0;
                  i = 2;
                  break;
        case 'r': g_u32DebugPWM[3] += 1;
                  i = 3;
                  break;
        case 'f': g_u32DebugPWM[3] -= 1;
                  i = 3;
                  break;
        case 'o': g_u32DebugPWM[3] = 100;
                  i = 3;
                  break;
        case 'l': g_u32DebugPWM[3] = 0;
                  i = 3;
                  break;
        case ' ': g_u32DebugPWM[0] = 0;
                  g_u32DebugPWM[1] = 0;
                  g_u32DebugPWM[2] = 0;
                  g_u32DebugPWM[3] = 0;
                  i = 4;
                  break;
        default:  break;
    }    

    if(i < 4)
    {
        sprintf(str_buf, "PWM%d: %d\n\r", i, g_u32DebugPWM[i]);
        PutStringUartQueue(DEBUG_UART, str_buf);
//        printf("PWM%d: %d\n\r", i, g_u32DebugPWM[i]);
    }
    else
    {
        sprintf(str_buf, "PWM ALL: 0\n\r");
        PutStringUartQueue(DEBUG_UART, str_buf);      
//        printf("PWM ALL: 0\n\r");
    }

}

void GPSUartRxIsr(void)
{
    int8 recv;
    //int8 str_buf[128];
    TransferControlParaData ctrl_para_data;

    recv = LPLD_UART_GetChar(GPS_UART);
    //LPLD_UART_PutChar(COMMUNICATE_UART, recv);  
    //LPLD_UART_PutChar(GPS_UART, recv); 
    ToggleLights(0x04);

    uint8 frame_type = RecvFrame(recv, GPS_UART);

    if(frame_type == 0x01)
    {
        if(DecodeControlParaData(&ctrl_para_data, GPS_UART) == 1)
        {
            ToggleLights(0x08);
            g_u32LostSignalTimerCnt = 0;
            g_f32DebugYaw = (float)(ctrl_para_data.yaw) / 10;
            g_f32DebugPitch = (float)(ctrl_para_data.pitch) / 10;
            g_f32DebugRoll = (float)(ctrl_para_data.roll) / 10;
            g_f32DebugThrottle = (float)(ctrl_para_data.throttle) / 100;            
        }
    }
    else if(frame_type == 0x03)
    {
        if(DecodePX4FLOWData(&g_sPx4flowData, GPS_UART) == 1)
        {
            ToggleLights(0x08);
            g_u8FlowNewData = 1;
            if(Flow_RefreshRawData() == 1)
            {
                static unsigned long last_flow_time_tag = 0;
                unsigned long flow_time_tag = GetSystemClockMs();
                g_ulFlowTime = flow_time_tag - last_flow_time_tag;
                last_flow_time_tag = flow_time_tag;
                float x_speed_to_input = FlowFilterGetCurrentFlowComp()[0];
                float y_speed_to_input = FlowFilterGetCurrentFlowComp()[1];
                if((fabs(x_speed_to_input/g_sPx4flowData.ground_distance) < 0.015))
                {
                    x_speed_to_input = 0;
                }
                if((fabs(y_speed_to_input/g_sPx4flowData.ground_distance) < 0.015))
                {
                    y_speed_to_input = 0;
                }                
                AddSpeedToPosition(x_speed_to_input, y_speed_to_input, 0, (float)g_ulFlowTime / 1000.0f, &g_f32XPosition, &g_f32YPosition);                
            }
        }
    }

    /*switch(recv)
    {
        case 'a': g_f32DebugRoll += 0.5;
                  break;
        case 'd': g_f32DebugRoll -= 0.5;
                  break;
        case 'w': g_f32DebugPitch -= 0.5;
                  break;
        case 's': g_f32DebugPitch += 0.5;
                  break;
        case 'j': g_f32DebugYaw -= 0.5;
                  break;
        case 'l': g_f32DebugYaw += 0.5;
                  break;
        case 'i': g_f32DebugThrottle += 0.01;
                  break;
        case 'k': g_f32DebugThrottle -= 0.01;
                  break;
        case 'b': g_f32DebugYaw = 0;
                  g_f32DebugPitch = 0;
                  g_f32DebugRoll = 0;
                  break;
        case ' ': g_f32DebugThrottle = 0;
                  break;
        case 'y': g_f32DebugThrottle = 0.6;
                  break;
        case 'n': g_f32DebugThrottle = 0.4;
                  break;
        case 'o': g_f32DebugThrottle = 0.5;
                  break;                  
        case 'g': g_f32DebugThrottle = 1;
                  break;
        default:  break;
    }          
    sprintf(str_buf, "Yaw:%d\tPitch:%d\tRoll:%d\tThrottle:%d\t\n\r", (int)(g_f32DebugYaw * 10), (int)(g_f32DebugPitch * 10), (int)(g_f32DebugRoll * 10), (int)(g_f32DebugThrottle * 100));
    PutStringUartQueue(GPS_UART, str_buf);   */
}

