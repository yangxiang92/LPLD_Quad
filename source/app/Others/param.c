/****************************************************************************** 
 *       param.c ----- The code of the param setting of the quad          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  param.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/30 20:26:32                                                       *
 ******************************************************************************/
#include "param.h" 

static QuadParamTypeDef s_sQuadParamInRam = {0};

uint8 InitQuadParam(void)
{

    uint8 success = 0;
    if(!LoadQuadParamInFlash(&s_sQuadParamInRam))
    {
        success = 0;
    }
    else 
    {
        if(!CheckQuadParamValid(s_sQuadParamInRam))
        {
            success = 0;
        }
        else
        {
            success = 1;
        }
    }

    if(success == 0)
    {
        LoadDefaultQuadParam(&s_sQuadParamInRam);
    }

    return success;
}

uint8 LoadQuadParamInFlash(QuadParamTypeDef * p_quad_param)
{
    return ReadFlashStorage(QUAD_PARAM_FLASH_STORAGE_POS, p_quad_param, sizeof(QuadParamTypeDef));
}

uint8 CheckQuadParamValid(QuadParamTypeDef quad_param)
{
    if(CalculateCrc16_HalfByte(&quad_param, sizeof(QuadParamTypeDef)) != 0)
    {
        return 0;
    }
    else if(quad_param.size != sizeof(QuadParamTypeDef))
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

void LoadDefaultQuadParam(QuadParamTypeDef * p_quad_param)
{
    int i = 0;

    p_quad_param->size = sizeof(QuadParamTypeDef);

    p_quad_param->acc_offset[0] = -200;
    p_quad_param->acc_offset[1] = 100;
    p_quad_param->acc_offset[2] = 0;

    p_quad_param->gyr_offset[0] = 5;
    p_quad_param->gyr_offset[1] = 41;
    p_quad_param->gyr_offset[2] = -16;

    p_quad_param->mag_offset[0] = 0;
    p_quad_param->mag_offset[1] = 0;
    p_quad_param->mag_offset[2] = 0;

    for(i = 0; i < 3; i++)
    {
        p_quad_param->acc_gain[i] = 0.0005981445f ;
        p_quad_param->gyr_gain[i] = 0.001065264f;
        p_quad_param->mag_gain[i] = 1;
    }

    for(i = 0; i < 4; i++)
    {
        p_quad_param->WFLY_RC_offset[i] = 1520;
        p_quad_param->WFLY_RC_max_range[i] = 700;
    }

    for(i = 0; i < 2; i++)
    {
        p_quad_param->ypr_pid_param[i].p = 0.45;
        p_quad_param->ypr_pid_param[i].i = 0.0025;
        p_quad_param->ypr_pid_param[i].d = 15;
        p_quad_param->ypr_pid_param[i].i_output_limit = 0.05;
        p_quad_param->ypr_pid_param[i].i_limit = p_quad_param->ypr_pid_param[i].i_output_limit / p_quad_param->ypr_pid_param[i].i;
    }
    p_quad_param->ypr_pid_param[2].p = 0.25;
    p_quad_param->ypr_pid_param[2].i = 0;
    p_quad_param->ypr_pid_param[2].d = 0;
    p_quad_param->ypr_pid_param[2].i_output_limit = 0;
    p_quad_param->ypr_pid_param[2].i_limit = p_quad_param->ypr_pid_param[2].i_output_limit / p_quad_param->ypr_pid_param[2].i;

    p_quad_param->halt_voltage = 14.8;

    p_quad_param->halt_inclination_angle = 30;

    RefreshQuadParamCrc(p_quad_param);
}

void RefreshQuadParamCrc(QuadParamTypeDef * p_quad_param)
{
    uint16 ccitt_crc_code = 0;

    ccitt_crc_code = CalculateCrc16_HalfByte(p_quad_param, sizeof(QuadParamTypeDef) - 2);

    ExchangeUint16Bytes(&ccitt_crc_code);

    p_quad_param->crc_code = ccitt_crc_code;
}

uint8 SaveQuadParamToFlash(QuadParamTypeDef quad_param)
{
    uint8 result = 0;

    RefreshQuadParamCrc(&quad_param);

    result = WriteFlashStorage(QUAD_PARAM_FLASH_STORAGE_POS, &quad_param, sizeof(QuadParamTypeDef));
    
    return result;
}

QuadParamTypeDef * GetQuadParamInRam(void)
{
    return &s_sQuadParamInRam;
}

void ApplyQuadParam(QuadParamTypeDef quad_param)
{
    int i = 0;

    for(i = 0; i < 3; i++)
    {
        g_i16AccOffset[i] = quad_param.acc_offset[i];
        g_f32AccGain[i]   = quad_param.acc_gain[i];
        g_i16GyrOffset[i] = quad_param.gyr_offset[i];
        g_f32GyrGain[i]   = quad_param.gyr_gain[i];
        g_i16MagOffset[i] = quad_param.mag_offset[i];
        g_f32MagGain[i]   = quad_param.mag_gain[i];
        g_sXYZPidPara[i]  = quad_param.ypr_pid_param[i];
        InitPID(g_sXYZPidPara);
    }

    for(i = 0; i < 4; i++)
    {
        g_u32WFLY_RC_offset[i] = quad_param.WFLY_RC_offset[i];
        g_u32WFLY_RC_max_range[i] = quad_param.WFLY_RC_max_range[i];
    }

    g_f32HaltVoltage = quad_param.halt_voltage;
    //g_f32HaltInclinationAngle = quad_param.halt_inclination_angle;
}
