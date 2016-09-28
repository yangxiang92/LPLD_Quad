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

//I2C��ʼ�ź�
void I2C_Start_IO()
{
    SetSDAOutput_IO(1);                    //����������
    SetSCLOutput_IO(1);                    //����ʱ����
    Delay5us();                 //��ʱ
    SetSDAOutput_IO(0);                    //�����½���
    Delay5us();                 //��ʱ
    SetSCLOutput_IO(0);                    //����ʱ����
}
//I2Cֹͣ�ź�
void I2C_Stop_IO()
{
    SetSDAOutput_IO(0);                    //����������
    SetSCLOutput_IO(1);                    //����ʱ����
    Delay5us();                 //��ʱ
    SetSDAOutput_IO(1);                    //����������
    Delay5us();                 //��ʱ
}
//I2C����Ӧ���ź�
//��ڲ���:ack (0:ACK 1:NAK)
void I2C_SendACK_IO(uint8 ack)
{
    SetSDAOutput_IO(ack);                  //дӦ���ź�
    SetSCLOutput_IO(1);                    //����ʱ����
    Delay5us();                 //��ʱ
    SetSCLOutput_IO(0);                    //����ʱ����
    Delay5us();                 //��ʱ
}
//I2C����Ӧ���ź�
uint8 I2C_RecvACK_IO()
{
    uint8 CY = 0;
    SetSCLOutput_IO(1);                    //����ʱ����
    Delay5us();                 //��ʱ
    CY = GetSDAInput_IO();                   //��Ӧ���ź�
    SetSCLOutput_IO(0);                    //����ʱ����
    Delay5us();                 //��ʱ
    return CY;
}
//��I2C���߷���һ���ֽ�����
void I2C_SendByte_IO(uint8 dat)
{
    uint8 i;
    for (i=0; i<8; i++)         //8λ������
    {
        SetSDAOutput_IO(!!(dat & 0x80));               //�����ݿ�
        dat <<= 1;//�Ƴ����ݵ����λ 
        SetSCLOutput_IO(1);                //����ʱ����
        Delay5us();             //��ʱ
        SetSCLOutput_IO(0);                //����ʱ����
        Delay5us();             //��ʱ
    }
    I2C_RecvACK_IO();
}
//��I2C���߽���һ���ֽ�����
uint8 I2C_RecvByte_IO()
{
    uint8 i;
    uint8 dat = 0;
    SetSDAOutput_IO(1);                    //ʹ���ڲ�����,׼����ȡ����,
    for (i=0; i<8; i++)         //8λ������
    {
        dat <<= 1;
        SetSCLOutput_IO(1);                //����ʱ����
        Delay5us();             //��ʱ
        dat |= GetSDAInput_IO();             //������               
        SetSCLOutput_IO(0);                //����ʱ����
        Delay5us();             //��ʱ
    }
    return dat;
}
//��I2C�豸д��һ���ֽ�����
void Single_WriteI2C_IO(uint8 REG_Address,uint8 REG_data)
{
    I2C_Start_IO();                  //��ʼ�ź�
    I2C_SendByte_IO(MPU6050_ADDRESS_IO);   //�����豸��ַ+д�ź�
    I2C_SendByte_IO(REG_Address);    //�ڲ��Ĵ�����ַ��
    I2C_SendByte_IO(REG_data);       //�ڲ��Ĵ������ݣ�
    I2C_Stop_IO();                   //����ֹͣ�ź�
}
//��I2C�豸��ȡһ���ֽ�����
uint8 Single_ReadI2C_IO(uint8 REG_Address)
{
	uint8 REG_data;
	I2C_Start_IO();                   //��ʼ�ź�
	I2C_SendByte_IO(MPU6050_ADDRESS_IO);    //�����豸��ַ+д�ź�
	I2C_SendByte_IO(REG_Address);     //���ʹ洢��Ԫ��ַ����0��ʼ	
	I2C_Start_IO();                   //��ʼ�ź�
	I2C_SendByte_IO(MPU6050_ADDRESS_IO+1);  //�����豸��ַ+���ź�
	REG_data=I2C_RecvByte_IO();       //�����Ĵ�������
	I2C_SendACK_IO(1);                //����Ӧ���ź�
	I2C_Stop_IO();                    //ֹͣ�ź�
	return REG_data;
}
//��ʼ��MPU6050
void InitMPU6050_IO()
{
	Single_WriteI2C_IO(MPU6050_PWR_MGMT_1, 0x00);	//�������״̬
	Single_WriteI2C_IO(MPU6050_SMPLRT_DIV, 0x07);
	Single_WriteI2C_IO(MPU6050_CONFIG, 0x06);
	Single_WriteI2C_IO(MPU6050_GYRO_CONFIG, 0x18);
	Single_WriteI2C_IO(MPU6050_ACCEL_CONFIG, 0x01);
}
//�ϳ�����
int GetData_IO(uint8 REG_Address)
{
    uint16 result = 0;
    int16 ret = 0;

	uint8 H,L;
	H=Single_ReadI2C_IO(REG_Address);
	L=Single_ReadI2C_IO(REG_Address+1);
	result = (H<<8)+L;   //�ϳ�����

    ret = (int16)result;

    return ret;
}
