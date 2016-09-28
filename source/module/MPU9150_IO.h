/******************************************************************************
 *       MPU9150_IO.h ----- THe header of MUP9150_IO.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MPU9150_IO.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/29 17:47:29                                                       *
 ******************************************************************************/
#ifndef _MPU9150_IO_H_
#define _MPU9150_IO_H_

// LPLD library
#include "common.h"

#define MPU6050_ADDRESS_IO (MPU6050_ADDRESS<<1)

#include "MPU6050_reg_map.h"
#include "delay.h"

void InitMPU9150_IO(void);
void SetSCLOutput_IO(uint8 state);
void SetSDAOutput_IO(uint8 state);
uint8 GetSDAInput_IO(void);
void I2C_Start_IO();
void I2C_Stop_IO();
void I2C_SendACK_IO(uint8 ack);
uint8 I2C_RecvACK_IO();
void I2C_SendByte_IO(uint8 dat);
uint8 I2C_RecvByte_IO();
void Single_WriteI2C_IO(uint8 REG_Address,uint8 REG_data);
uint8 Single_ReadI2C_IO(uint8 REG_Address);
void InitMPU6050_IO() ;
int GetData_IO(uint8 REG_Address);

#endif
