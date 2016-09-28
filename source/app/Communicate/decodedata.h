/******************************************************************************
 *       decodedata.h ----- The header of decodedata.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  decodedata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/23 15:25:53                                                       *
 ******************************************************************************/
#ifndef _DECODEDATA_H_
#define _DECODEDATA_H_

#include "common.h"

#include "communicate.h"
#include "module.h"

uint8 RecvFrame(int8 recv, UART_Type * uartx);
uint8 DecodeControlParaData(TransferControlParaData * ctrl_para_data, UART_Type * uartx);
uint8 DecodePX4FLOWData(PX4FLOW_Data * p_px4flow_data, UART_Type * uartx);
uint8 CheckDecodedFlag(UART_Type * uartx);
void SetDecodedFlagState(UART_Type * uartx, uint8 state);
void SetDecodedFlag(UART_Type * uartx);
void ClearDecodedFlag(UART_Type * uartx);

#endif
