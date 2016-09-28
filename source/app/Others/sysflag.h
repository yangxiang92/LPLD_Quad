/******************************************************************************
 *       sysflag.h ----- The header of sysflag.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  sysflag.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/5/1 16:37:38                                                       *
 ******************************************************************************/
#ifndef _SYSFLAG_H_
#define _SYSFLAG_H_

#include "common.h"

#define WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK 0x80
#define SAVE_DEFAULT_PARAM_TO_FLASH_SWITCH_BIT_MASK 0x40
#define USE_AK8975C_SWITCH_BIT_MASK                 0x20
#define LOCK_HEIGHT_CONTROL_SWITCH_BIT_MASK         0x20
#define USE_BUZZER_SWITCH_BIT_MASK                  0x10
#define USE_WFLY_RC_SWITCH_BIT_MASK                 0x08
#define GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK          0x04
#define GET_ACC_OFFSET_SWITCH_BIT_MASK              0x02
#define GET_GYR_OFFSET_SWITCH_BIT_MASK              0x01

#define FLASH_PARAM_ERROR_LED_LIGHT_BIT_MASK        0x20
#define PROGRAM_RUNNING_LED_LIGHT_BIT_MASK          0x80
#define PROGRAM_RUNNING_OVER_TIME_LIGHT_BIT_MASK    0x40

#define WAITTING_SAVE_DEFAULT_PARAM_TO_FLASH_LED_HINT 0x4F
#define WAITTING_START_GET_ACC_GYR_OFFSET_OPE_LED_HINT 0xF3
#define WAITTING_START_GET_ACC_OFFSET_OPE_LED_HINT  0xF2
#define WAITTING_START_GET_GYR_OFFSET_OPE_LED_HINT  0xF1
#define WAITTING_START_GET_WFLY_RC_OFFSET_LED_HINT  0xF4
#define GETTING_WFLY_RC_MAX_RANGE_LED_HINT          0xF5

#define LAST_SYSTEM_SETTING_POS                     256

#pragma pack(push)
#pragma pack(1)
typedef struct
{
    uint8 acc_getoffset;
    uint8 gyr_getoffset;
    uint8 WFLY_RC_getoffset;

    uint8 save_default_param_to_flash;

    uint8 use_ak8975c;
    uint8 use_buzzer;
    uint8 use_WFLY_RC;

    uint8 lock_height;
}QuadSystemSettingTypeDef;

typedef struct
{
    uint8 flash_param_error;
    uint8 switch_setting_unvalid;
    uint8 save_system_setting_error;
    uint8 incline_halt;
    uint8 lost_signal;
    QuadSystemSettingTypeDef sys_setting;
}QuadSystemFlagTypeDef;
#pragma pack(pop)


#include "module.h"

#include "param.h"                               

void GetSystemSettingOnSwitch(void);
uint8 LoadLastSystemSetting();
void SetDefaultLastSystemSettingInRam(void);
uint8 SaveThisSystemSettingToFlash(void);
uint8 CheckLastSystemSettingTheSame();

extern QuadSystemFlagTypeDef g_sQuadSystemFlag;

#endif
