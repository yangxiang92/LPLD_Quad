/****************************************************************************** 
 *       MPU9150_IO.c ----- The MPU9150 Operation Function use IO          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MPU9150_IO.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/29 17:46:45                                                       *
 ******************************************************************************/
#include "MPU9150_IO.h"
void InitMPU9150_IO(void)
{
    static GPIO_InitTypeDef MPU9150_AD0_pin_init_struct;

    MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
    MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin21;
    MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_L;
    LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);

    MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
    MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin2;
    MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_H;
    LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);

    MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
    MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin3;
    MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_H;
    LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);


    InitMPU6050_IO();
}

void SetSCLOutput_IO(uint8 state)
{
    LPLD_GPIO_Output_b(PTB, 2, state);
}

void SetSDAOutput_IO(uint8 state)
{
    LPLD_GPIO_Output_b(PTB, 3, state);
}

uint8 GetSDAInput_IO(void)
{
    return LPLD_GPIO_Input_b(PTB, 3);
}

//I2C起始信号
void I2C_Start_IO()
{
    SetSDAOutput_IO(1);                    //拉高数据线
    SetSCLOutput_IO(1);                    //拉高时钟线
    Delay5us();                 //延时
    SetSDAOutput_IO(0);                    //产生下降沿
    Delay5us();                 //延时
    SetSCLOutput_IO(0);                    //拉低时钟线
}
//I2C停止信号
void I2C_Stop_IO()
{
    SetSDAOutput_IO(0);                    //拉低数据线
    SetSCLOutput_IO(1);                    //拉高时钟线
    Delay5us();                 //延时
    SetSDAOutput_IO(1);                    //产生上升沿
    Delay5us();                 //延时
}
//I2C发送应答信号
//入口参数:ack (0:ACK 1:NAK)
void I2C_SendACK_IO(uint8 ack)
{
    SetSDAOutput_IO(ack);                  //写应答信号
    SetSCLOutput_IO(1);                    //拉高时钟线
    Delay5us();                 //延时
    SetSCLOutput_IO(0);                    //拉低时钟线
    Delay5us();                 //延时
}
//I2C接收应答信号
uint8 I2C_RecvACK_IO()
{
    uint8 CY = 0;
    SetSCLOutput_IO(1);                    //拉高时钟线
    Delay5us();                 //延时
    CY = GetSDAInput_IO();                   //读应答信号
    SetSCLOutput_IO(0);                    //拉低时钟线
    Delay5us();                 //延时
    return CY;
}
//向I2C总线发送一个字节数据
void I2C_SendByte_IO(uint8 dat)
{
    uint8 i;
    for (i=0; i<8; i++)         //8位计数器
    {
        SetSDAOutput_IO(!!(dat & 0x80));               //送数据口
        dat <<= 1;//移出数据的最高位 
        SetSCLOutput_IO(1);                //拉高时钟线
        Delay5us();             //延时
        SetSCLOutput_IO(0);                //拉低时钟线
        Delay5us();             //延时
    }
    I2C_RecvACK_IO();
}
//从I2C总线接收一个字节数据
uint8 I2C_RecvByte_IO()
{
    uint8 i;
    uint8 dat = 0;
    SetSDAOutput_IO(1);                    //使能内部上拉,准备读取数据,
    for (i=0; i<8; i++)         //8位计数器
    {
        dat <<= 1;
        SetSCLOutput_IO(1);                //拉高时钟线
        Delay5us();             //延时
        dat |= GetSDAInput_IO();             //读数据               
        SetSCLOutput_IO(0);                //拉低时钟线
        Delay5us();             //延时
    }
    return dat;
}
//向I2C设备写入一个字节数据
void Single_WriteI2C_IO(uint8 REG_Address,uint8 REG_data)
{
    I2C_Start_IO();                  //起始信号
    I2C_SendByte_IO(MPU6050_ADDRESS_IO);   //发送设备地址+写信号
    I2C_SendByte_IO(REG_Address);    //内部寄存器地址，
    I2C_SendByte_IO(REG_data);       //内部寄存器数据，
    I2C_Stop_IO();                   //发送停止信号
}
//从I2C设备读取一个字节数据
uint8 Single_ReadI2C_IO(uint8 REG_Address)
{
	uint8 REG_data;
	I2C_Start_IO();                   //起始信号
	I2C_SendByte_IO(MPU6050_ADDRESS_IO);    //发送设备地址+写信号
	I2C_SendByte_IO(REG_Address);     //发送存储单元地址，从0开始	
	I2C_Start_IO();                   //起始信号
	I2C_SendByte_IO(MPU6050_ADDRESS_IO+1);  //发送设备地址+读信号
	REG_data=I2C_RecvByte_IO();       //读出寄存器数据
	I2C_SendACK_IO(1);                //接收应答信号
	I2C_Stop_IO();                    //停止信号
	return REG_data;
}
//初始化MPU6050
void InitMPU6050_IO()
{
	Single_WriteI2C_IO(MPU6050_PWR_MGMT_1, 0x00);	//解除休眠状态
	Single_WriteI2C_IO(MPU6050_SMPLRT_DIV, 0x07);
	Single_WriteI2C_IO(MPU6050_CONFIG, 0x06);
	Single_WriteI2C_IO(MPU6050_GYRO_CONFIG, 0x18);
	Single_WriteI2C_IO(MPU6050_ACCEL_CONFIG, 0x01);
}
//合成数据
int GetData_IO(uint8 REG_Address)
{
    uint16 result = 0;
    int16 ret = 0;

	uint8 H,L;
	H=Single_ReadI2C_IO(REG_Address);
	L=Single_ReadI2C_IO(REG_Address+1);
	result = (H<<8)+L;   //合成数据

    ret = (int16)result;

    return ret;
}
