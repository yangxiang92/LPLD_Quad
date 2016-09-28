/****************************************************************************** 
 *       uploaddata.c ----- The upload the state data of quad to upper software *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  uploaddata.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 16:34:59                                                       *
 ******************************************************************************/
#include "uploaddata.h"

static miniAHRS_UartQueue miniAHRS_uart_queue_struct;

void miniAHRS_InitUartQueue(void)
{
    int i = 0;
    for(i = 0; i < MINIAHRS_UART_QUEUE_SIZE; i++)
    {
        miniAHRS_uart_queue_struct.buff[i] = '\0';
    }
    miniAHRS_uart_queue_struct.queue_front_pointer = 0;
    miniAHRS_uart_queue_struct.queue_back_pointer = 0;
}

int16 miniAHRS_GetUartQueueSize(void)
{
    int16 diff = 0;

    diff = miniAHRS_uart_queue_struct.queue_front_pointer - miniAHRS_uart_queue_struct.queue_back_pointer;

    if(diff >= 0)
    {
        diff = diff;
    }
    else
    {
        diff = diff + MINIAHRS_UART_QUEUE_SIZE;
    }

    return diff;
}

uint8 miniAHRS_IsUartQueueEmpty(void)
{
    if(miniAHRS_GetUartQueueSize() > 0)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

miniAHRS_UartQueue * miniAHRS_GetUartQueue(void)
{
    return &miniAHRS_uart_queue_struct;
}

uint8 miniAHRS_PushUartQueue(uint8 data)
{
    if(miniAHRS_GetUartQueueSize() < (MINIAHRS_UART_QUEUE_SIZE - 1))
    {
        miniAHRS_uart_queue_struct.buff[miniAHRS_uart_queue_struct.queue_front_pointer] = data;
        miniAHRS_uart_queue_struct.queue_front_pointer ++;
        if(miniAHRS_uart_queue_struct.queue_front_pointer >= MINIAHRS_UART_QUEUE_SIZE)
        {
            miniAHRS_uart_queue_struct.queue_front_pointer = 0;
        }
        return 1;
    }
    else
    {
        return 0;
    }
}

uint8 miniAHRS_PopUartQueue(void)
{
    uint8 ret = 0;
    ret = miniAHRS_uart_queue_struct.buff[miniAHRS_uart_queue_struct.queue_back_pointer];

    if(miniAHRS_GetUartQueueSize() > 0)
    {
        miniAHRS_uart_queue_struct.queue_back_pointer ++;
        if(miniAHRS_uart_queue_struct.queue_back_pointer >= MINIAHRS_UART_QUEUE_SIZE)
        {
            miniAHRS_uart_queue_struct.queue_back_pointer = 0;
        }
    }    

    return ret;
}

void miniAHRS_SendOneByte(uint8 ch)
{
    CommUartSendOneByte((int8) ch);
}


/**************************实现函数********************************************
*函数原型:		void UART1_ReportIMU(int16_t yaw,int16_t pitch,int16_t roll
				,int16_t alt,int16_t tempr,int16_t press)
*功　　能:		向上位机发送经过解算后的姿态数据
输入参数：
		int16_t yaw 经过解算后的航向角度。单位为0.1度 0 -> 3600  对应 0 -> 360.0度
		int16_t pitch 解算得到的俯仰角度，单位 0.1度。-900 - 900 对应 -90.0 -> 90.0 度
		int16_t roll  解算后得到的横滚角度，单位0.1度。 -1800 -> 1800 对应 -180.0  ->  180.0度
		int16_t alt   气压高度。 单位0.1米。  范围一个整型变量
		int16_t tempr 温度 。 单位0.1摄氏度   范围：直到你的电路板不能正常工作
		int16_t press 气压压力。单位10Pa  一个大气压强在101300pa 这个已经超过一个整型的范围。需要除以10再发给上位机
		int16_t IMUpersec  姿态解算速率。运算IMUpersec每秒。
输出参数：没有	
*******************************************************************************/
void miniAHRS_ReportIMU(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec)
{
 	unsigned int temp=0xaF+2;
	char ctemp;
	miniAHRS_SendOneByte(0xa5);
	miniAHRS_SendOneByte(0x5a);
	miniAHRS_SendOneByte(14+2);
	miniAHRS_SendOneByte(0xA1);

	if(yaw<0)yaw=32768-yaw;
	ctemp=yaw>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=yaw;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(pitch<0)pitch=32768-pitch;
	ctemp=pitch>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=pitch;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(roll<0)roll=32768-roll;
	ctemp=roll>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=roll;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(alt<0)alt=32768-alt;
	ctemp=alt>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=alt;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(tempr<0)tempr=32768-tempr;
	ctemp=tempr>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=tempr;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(press<0)press=32768-press;
	ctemp=press>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=press;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	miniAHRS_SendOneByte(temp%256);
	miniAHRS_SendOneByte(0xaa);
}

void miniAHRS_ReportIMU_Queue(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec)
{
 	unsigned int temp=0xaF+2;
	char ctemp;
	miniAHRS_PushUartQueue(0xa5);
	miniAHRS_PushUartQueue(0x5a);
	miniAHRS_PushUartQueue(14+2);
	miniAHRS_PushUartQueue(0xA1);

	if(yaw<0)yaw=32768-yaw;
	ctemp=yaw>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=yaw;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(pitch<0)pitch=32768-pitch;
	ctemp=pitch>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=pitch;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(roll<0)roll=32768-roll;
	ctemp=roll>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=roll;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(alt<0)alt=32768-alt;
	ctemp=alt>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=alt;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(tempr<0)tempr=32768-tempr;
	ctemp=tempr>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=tempr;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(press<0)press=32768-press;
	ctemp=press>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=press;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	miniAHRS_PushUartQueue(temp%256);
	miniAHRS_PushUartQueue(0xaa);
}


/**************************实现函数********************************************
*函数原型:		void UART1_ReportMotion(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,
					int16_t hx,int16_t hy,int16_t hz)
*功　　能:		向上位机发送当前传感器的输出值
输入参数：
	int16_t ax  加速度 X轴ADC输出 范围 ：一个有符号整型
	int16_t ay  加速度 Y轴ADC输出 范围 ：一个有符号整型
	int16_t az  加速度 Z轴ADC输出 范围 ：一个有符号整型
	int16_t gx  陀螺仪 X轴ADC输出 范围 ：一个有符号整型
	int16_t gy  陀螺仪 Y轴ADC输出 范围 ：一个有符号整型
	int16_t gz  陀螺仪 Z轴ADC输出 范围 ：一个有符号整型
	int16_t hx  磁罗盘 X轴ADC输出 范围 ：一个有符号整型
	int16_t hy  磁罗盘 Y轴ADC输出 范围 ：一个有符号整型
	int16_t hz  磁罗盘 Z轴ADC输出 范围 ：一个有符号整型
	
输出参数：没有	
*******************************************************************************/
void miniAHRS_ReportMotion(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,	int16_t hx,int16_t hy,int16_t hz)
{
 	unsigned int temp=0xaF+9;
	char ctemp;
	miniAHRS_SendOneByte(0xa5);
	miniAHRS_SendOneByte(0x5a);
	miniAHRS_SendOneByte(14+8);
	miniAHRS_SendOneByte(0xA2);

	if(ax<0)ax=32768-ax;
	ctemp=ax>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=ax;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(ay<0)ay=32768-ay;
	ctemp=ay>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=ay;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(az<0)az=32768-az;
	ctemp=az>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=az;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(gx<0)gx=32768-gx;
	ctemp=gx>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=gx;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(gy<0)gy=32768-gy;
	ctemp=gy>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=gy;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
//-------------------------
	if(gz<0)gz=32768-gz;
	ctemp=gz>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=gz;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(hx<0)hx=32768-hx;
	ctemp=hx>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=hx;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(hy<0)hy=32768-hy;
	ctemp=hy>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=hy;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	if(hz<0)hz=32768-hz;
	ctemp=hz>>8;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;
	ctemp=hz;
	miniAHRS_SendOneByte(ctemp);
	temp+=ctemp;

	miniAHRS_SendOneByte(temp%256);
	miniAHRS_SendOneByte(0xaa);
}

void miniAHRS_ReportMotion_Queue(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,	int16_t hx,int16_t hy,int16_t hz)
{
 	unsigned int temp=0xaF+9;
	char ctemp;
	miniAHRS_PushUartQueue(0xa5);
	miniAHRS_PushUartQueue(0x5a);
	miniAHRS_PushUartQueue(14+8);
	miniAHRS_PushUartQueue(0xA2);

	if(ax<0)ax=32768-ax;
	ctemp=ax>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=ax;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(ay<0)ay=32768-ay;
	ctemp=ay>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=ay;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(az<0)az=32768-az;
	ctemp=az>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=az;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(gx<0)gx=32768-gx;
	ctemp=gx>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=gx;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(gy<0)gy=32768-gy;
	ctemp=gy>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=gy;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
//-------------------------
	if(gz<0)gz=32768-gz;
	ctemp=gz>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=gz;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(hx<0)hx=32768-hx;
	ctemp=hx>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=hx;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(hy<0)hy=32768-hy;
	ctemp=hy>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=hy;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	if(hz<0)hz=32768-hz;
	ctemp=hz>>8;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;
	ctemp=hz;
	miniAHRS_PushUartQueue(ctemp);
	temp+=ctemp;

	miniAHRS_PushUartQueue(temp%256);
	miniAHRS_PushUartQueue(0xaa);
}

