/******************************************************************************
 *       MPU9150.h ----- The header of MPU9150.h                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MPU9150.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/27 21:52:13                                                       *
 ******************************************************************************/
#ifndef _MPU9150_H_
#define _MPU9150_H_

// LPLD library
#include "common.h"

/* 
 * MPU9150 引脚资源定义
 * */
#define MPU9150_I2C_PORT    I2C0
#define MPU9150_I2C_SCLPIN  PTB2
#define MPU9150_I2C_SDAPIN  PTB3

/* 
 * MPU9150 总线速度定义
 * */

//定义SCL Bus Speed取值，外设总线为50Mhz时的计算结果
#define MPU9150_SCL_50KHZ                   (0x33) 
#define MPU9150_SCL_100KHZ                  (0x2B)  
#define MPU9150_SCL_150KHZ                  (0x28)
#define MPU9150_SCL_200KHZ                  (0x23)
#define MPU9150_SCL_250KHZ                  (0x21)
#define MPU9150_SCL_300KHZ                  (0x20)
#define MPU9150_SCL_400KHZ                  (0x17)  
#define MPU9150_I2C_DELAY_TIME 2

#include "I2C_ope.h"
#include "MPU6050_reg_map.h"
#include "AK8975C_reg_map.h"

void InitMPU9150(void);

int16 MPU6050_GetData(uint8 reg_address);
void MPU6050_GetRawData(int16* raw_data);
void MPU6050_SingleWriteReg(uint8 reg_address, uint8 data);
uint8 MPU6050_SingleReadReg(uint8 reg_address);
void MPU6050_MultiWriteReg(uint8 reg_address, uint8 len, uint8 * data);
void MPU6050_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf);
uint8 MPU6050_DMP_MultiWriteReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data);
uint8 MPU6050_DMP_MultiReadReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf);
void InitMPU6050(void);

void AK8975C_SingleWriteReg (uint8 reg_address, uint8 data) ;
uint8 AK8975C_SingleReadReg (uint8 reg_address) ;
void InitAK8975C (void);
int16 AK8975C_GetData (uint8 reg_address); 
void AK8975C_StartMeasure (void);
uint8 AK8975C_WaitMeasureComplete (void) ;
void AK8975C_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf);
void AK8975C_GetRawData(int16* raw_data);

#endif
