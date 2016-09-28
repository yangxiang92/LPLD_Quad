/******************************************************************************
 *       param.h ----- The header of param.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  param.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/30 20:26:59                                                       *
 ******************************************************************************/
#ifndef _PARAM_H_
#define _PARAM_H_

#include "common.h"
#include "control.h"

#define QUAD_PARAM_FLASH_STORAGE_POS 0

#pragma pack(push)
#pragma pack(1)

typedef struct
{
    uint8 size;

    int16 acc_offset[3];
    float acc_gain[3];
    int16 gyr_offset[3];
    float gyr_gain[3];
    int16 mag_offset[3];
    float mag_gain[3];

    uint32 WFLY_RC_offset[4];
    uint32 WFLY_RC_max_range[4];

    PID_Parameters ypr_pid_param[3];

    float halt_voltage;

    float halt_inclination_angle;

    uint16 crc_code;
}QuadParamTypeDef;
#pragma pack(pop)


#include "module.h"
#include "communicate.h"
#include "others.h"
#include "signalprocess.h"
#include "control.h"

uint8 InitQuadParam(void);
uint8 LoadQuadParamInFlash(QuadParamTypeDef * p_quad_param);
uint8 CheckQuadParamValid(QuadParamTypeDef quad_param);
void LoadDefaultQuadParam(QuadParamTypeDef * p_quad_param);
void RefreshQuadParamCrc(QuadParamTypeDef * p_quad_param);
uint8 SaveQuadParamToFlash(QuadParamTypeDef quad_param);
QuadParamTypeDef * GetQuadParamInRam(void);
void ApplyQuadParam(QuadParamTypeDef quad_param);

#endif
