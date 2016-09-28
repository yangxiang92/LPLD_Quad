/****************************************************************************** 
 *       MPU9150.c ----- The Code to use MPU9150          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  MPU9150.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/27 21:51:25                                                       *
 ******************************************************************************/
#include "MPU9150.h"

void InitMPU9150(void)
{
    I2C_InitTypeDef MPU9150_I2C_init_struct = {0};
    GPIO_InitTypeDef MPU9150_AD0_pin_init_struct = {0};

    MPU9150_I2C_init_struct.I2C_I2Cx = MPU9150_I2C_PORT;
    MPU9150_I2C_init_struct.I2C_IntEnable = FALSE;
    MPU9150_I2C_init_struct.I2C_ICR  = MPU9150_SCL_400KHZ;
    MPU9150_I2C_init_struct.I2C_SclPin = MPU9150_I2C_SCLPIN;
    MPU9150_I2C_init_struct.I2C_SdaPin = MPU9150_I2C_SDAPIN;
    MPU9150_I2C_init_struct.I2C_Isr = NULL;
    MPU9150_I2C_init_struct.I2C_OpenDrainEnable = TRUE;
    LPLD_I2C_Init(MPU9150_I2C_init_struct);

    MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
    MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin21;
    MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
    MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_L;
    LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);
    
    delayms(10);

    InitMPU6050();
    InitAK8975C();
}

int16 MPU6050_GetData(uint8 reg_address)
{
    int16 ret = 0;
    uint8 buf[2] = {0,0};

    MPU6050_MultiReadReg(reg_address, 2, buf);

    ret = (int16)(((uint16)buf[0] << 8) + buf[1]);

    return ret;
}

void MPU6050_GetRawData(int16* raw_data)
{
    int i = 0;
    uint8 buf[14];

    MPU6050_MultiReadReg(0x3b, 14, buf);

    for(i = 0; i < 7; i++)
    {
        raw_data[i] = (int16)(((uint16)buf[2*i] << 8) + (uint16)buf[2*i+1]);
    }
}

void MPU6050_SingleWriteReg(uint8 reg_address, uint8 data)
{
    I2C_WriteRegSingle(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, data, MPU9150_I2C_DELAY_TIME);
}

uint8 MPU6050_SingleReadReg(uint8 reg_address)
{
    return I2C_ReadRegSingle(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, MPU9150_I2C_DELAY_TIME);
}  

void MPU6050_MultiWriteReg(uint8 reg_address, uint8 len, uint8 * data)
{
    I2C_WriteRegMulti(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, len, data, MPU9150_I2C_DELAY_TIME);
}

void MPU6050_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf)
{
    I2C_ReadRegMulti(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
}  

uint8 MPU6050_DMP_MultiWriteReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data)
{
    I2C_WriteRegMulti(MPU9150_I2C_PORT, dev_address, reg_address, len, data, MPU9150_I2C_DELAY_TIME);
    return 0;
}

uint8 MPU6050_DMP_MultiReadReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf)
{
    I2C_ReadRegMulti(MPU9150_I2C_PORT, dev_address, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
    return 0;
}  

void InitMPU6050(void)
{
    MPU6050_SingleWriteReg(MPU6050_PWR_MGMT_1, 0x00);
    //MPU6050_SingleWriteReg(MPU6050_SMPLRT_DIV, 0x07);
    MPU6050_SingleWriteReg(MPU6050_SMPLRT_DIV, 0x01);    
    MPU6050_SingleWriteReg(MPU6050_CONFIG, 0x06);
    MPU6050_SingleWriteReg(MPU6050_GYRO_CONFIG, 0x18);
    MPU6050_SingleWriteReg(MPU6050_ACCEL_CONFIG, 0x01);    
}




/************************************************************************
 * Function         AK8975C_SingleWriteReg                                              
 * Usage            To Write a Reg to AK8975C(electrical compass)                           
 * Argument         reg_address:    The address of the reg you want to write into
 *                  data:           The data you want to write
 * Return value     NONE                                                
 * Modification History:                                                
 * 01a 2014/4/1 20:40:30   
 *
 ************************************************************************/
void AK8975C_SingleWriteReg (uint8 reg_address, uint8 data) 
{
    I2C_WriteRegSingle(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, data, MPU9150_I2C_DELAY_TIME);
}		/* -----  end of function AK8975C_SingleWriteReg  ----- */


/************************************************************************
 * Function         AK8975C_SingleReadReg                                              
 * Usage            To Read a Reg from AK8975C(electrical compass)                           
 * Argument         reg_address:    The address of the data you want to read                                                
 * Return value     (uint8)         The data you read from the reg_address                                                
 * Modification History:                                                
 * 01a 2014/4/1 20:46:27   
 *
 ************************************************************************/
uint8 AK8975C_SingleReadReg (uint8 reg_address) 
{
    return I2C_ReadRegSingle(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, MPU9150_I2C_DELAY_TIME);
}		/* -----  end of function AK8975C_SingleReadReg  ----- */


/************************************************************************
 * Function         InitAK8975C                                              
 * Usage            To Initialize AK8975C(electrical compass)                           
 * Argument         NONE                                                
 * Return value     NONE                                                
 * Modification History:                                                
 * 01a 2014/4/1 20:48:49   
 *
 ************************************************************************/
void InitAK8975C (void) 
{
    MPU6050_SingleWriteReg(0x37, 0x02);
    AK8975C_SingleWriteReg(AK8975C_CNTL, 0x01);
}		/* -----  end of function InitAK8975C  ----- */

/************************************************************************
 * Function         AK8975C_GetData                                              
 * Usage            Get Sensor Data from the AK8975C                           
 * Argument         reg_address:The address of the sensor data you want to read(16-bits)                                                
 * Return value     (int16) The sensor data you want to get                                                
 * Modification History:                                                
 * 01a 2014/4/1 20:54:59   
 *
 ************************************************************************/
int16 AK8975C_GetData (uint8 reg_address) 
{
    int ret = 0;

    uint8 H,L;
    L = AK8975C_SingleReadReg(reg_address);
    H = AK8975C_SingleReadReg(reg_address+1);

    ret =  (int16)((H<<8) + L);

    return ret;    
}		/* -----  end of function AK8975C_GetData  ----- */

/************************************************************************
 * Function         AK8975C_StartMeasure                                              
 * Usage            Start Measure The Megenito                           
 * Argument         NONE                                                
 * Return value     NONE                                                
 * Modification History:                                                
 * 01a 2014/4/1 22:07:59   
 *
 ************************************************************************/
void AK8975C_StartMeasure (void) 
{
    AK8975C_SingleWriteReg(AK8975C_CNTL, 0x01);    
}		/* -----  end of function AK9875C_StartMeasure  ----- */


/************************************************************************
 * Function         AK8975C_WaitMeasureComplete                                              
 * Usage            Wait AK8975C Measurement Complete                           
 * Argument         NONE                                                
 * Return value     (uint8) whether over time(0 not over, 1 over)                                                
 * Modification History:                                                
 * 01a 2014/4/1 22:08:58   
 *
 ************************************************************************/
uint8 AK8975C_WaitMeasureComplete (void) 
{
    int i = 0;

    uint8 ret = 0;
    while(AK8975C_SingleReadReg(0x02) != 0x01)
    {
        i ++;
        if(i > 2000)
        {
            ret = 1;
            break;
        }
    }
    ret = 0;

    return ret;
}		/* -----  end of function AK9875C_WaitMeasureComplete  ----- */

void AK8975C_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf)
{
    I2C_ReadRegMulti(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
}  

void AK8975C_GetRawData(int16* raw_data)
{
    int i = 0;
    uint8 buf[6];

    AK8975C_MultiReadReg(0x03, 6, buf);

    for(i = 0; i < 3; i++)
    {
        raw_data[i] = (int16)(((uint16)buf[2*i+1] << 8) + (uint16)buf[2*i]);
    }
}
