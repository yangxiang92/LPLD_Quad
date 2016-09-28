/******************************************************************************
 *       I2C_ope.h ----- The header of I2C_ope.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  I2C_ope.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/3/30 21:56:06                                                       *
 ******************************************************************************/
#ifndef _I2C_OPE_H_
#define _I2C_OPE_H_

#include "common.h"

#include "delay.h"

void I2C_WriteRegMulti(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time);
void I2C_WriteRegSingle(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time);
void I2C_ReadRegMulti(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time);
uint8 I2C_ReadRegSingle(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint32 delay_time);

void I2C0_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time);
void I2C1_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time);
void I2C0_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time);
void I2C1_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time);
void I2C0_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time);
void I2C1_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time);
uint8 I2C0_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time);
uint8 I2C1_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time);
#endif
