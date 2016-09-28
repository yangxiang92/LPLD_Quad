/****************************************************************************** 
 *       sysflag.c ----- The code to set system flag          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  sysflag.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/5/1 16:37:11                                                       *
 ******************************************************************************/
#include "sysflag.h"

QuadSystemFlagTypeDef g_sQuadSystemFlag = {0};
static QuadSystemSettingTypeDef s_sLastQuadSystemSettingInRam = {0};

void GetSystemSettingOnSwitch(void)
{
    g_sQuadSystemFlag.sys_setting.acc_getoffset = !!ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.gyr_getoffset = !!ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.WFLY_RC_getoffset = !!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.save_default_param_to_flash = !!ReadSwitches(SAVE_DEFAULT_PARAM_TO_FLASH_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.use_ak8975c = 0;//!!ReadSwitches(USE_AK8975C_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.lock_height = !!ReadSwitches(LOCK_HEIGHT_CONTROL_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.use_buzzer = !!ReadSwitches(USE_BUZZER_SWITCH_BIT_MASK);

    g_sQuadSystemFlag.sys_setting.use_WFLY_RC = !!ReadSwitches(USE_WFLY_RC_SWITCH_BIT_MASK);
}

uint8 LoadLastSystemSetting()
{
    uint8 result= 0;
    
    result = ReadFlashStorage(LAST_SYSTEM_SETTING_POS, &s_sLastQuadSystemSettingInRam, sizeof(QuadSystemSettingTypeDef));

    if(result == 0)
    {
        SetDefaultLastSystemSettingInRam();
    }

    return result;
}

void SetDefaultLastSystemSettingInRam(void)
{
    s_sLastQuadSystemSettingInRam.acc_getoffset = 0;
    s_sLastQuadSystemSettingInRam.gyr_getoffset = 0;
    s_sLastQuadSystemSettingInRam.WFLY_RC_getoffset = 0;
    s_sLastQuadSystemSettingInRam.save_default_param_to_flash = 1;
    s_sLastQuadSystemSettingInRam.use_ak8975c = 0;
    s_sLastQuadSystemSettingInRam.use_buzzer = 1;
    s_sLastQuadSystemSettingInRam.use_WFLY_RC = 0;    
}

uint8 SaveThisSystemSettingToFlash(void)
{
    uint8 result = 0;

    result = WriteFlashStorage(LAST_SYSTEM_SETTING_POS, &(g_sQuadSystemFlag.sys_setting), sizeof(QuadSystemSettingTypeDef));

    return result;
}

uint8 CheckLastSystemSettingTheSame()
{
    int8 result = 0;

    LoadLastSystemSetting();
    
    result = MemoryBytesCompare(&s_sLastQuadSystemSettingInRam, &(g_sQuadSystemFlag.sys_setting), sizeof(QuadSystemSettingTypeDef));

    if(result == 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
