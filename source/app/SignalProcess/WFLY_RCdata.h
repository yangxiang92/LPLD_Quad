/******************************************************************************
 *       WFLY_RCdata.h ----- The header of WFLY_RCdata.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  WFLY_RCdata.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/28 20:04:03                                                       *
 ******************************************************************************/
#ifndef _WFLY_RCDATA_H_
#define _WFLY_RCDATA_H_

#include "common.h"

#define THROTTLE_CHANNEL 2
#define YAW_CHANNEL      3
#define PITCH_CHANNEL    1
#define ROLL_CHANNEL     0
#define CHANNEL_5        4

#define WFLY_RC_OFFSET_SAMPLE_AMOUNT 10
#define WFLY_RC_OFFSET_SAMPLE_PERIOD_MS 20

#define WFLY_RC_MAX_THROTTLE_OFFSET     2000
#define WFLY_RC_MIN_THROTTLE_OFFSET     1800
#define WFLY_RC_MAX_YAW_OFFSET          1600
#define WFLY_RC_MIN_YAW_OFFSET          1400
#define WFLY_RC_MAX_PITCH_OFFSET        1600
#define WFLY_RC_MIN_PITCH_OFFSET        1400
#define WFLY_RC_MAX_ROLL_OFFSET         1600
#define WFLY_RC_MIN_ROLL_OFFSET         1400

#define WFLY_RC_MIN_MAX_RANGE_VALUE     400

#ifndef GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
#define GET_WFLY_RC_OFFSET_WITH_BUZZER_HINT
#endif

#define GET_WFLY_RC_OFFSET_WARNING_TIME_MS 1000

#ifndef GET_WFLY_RC_MAX_RANGE_WITH_BUZZER_HINT
#define GET_WFLY_RC_MAX_RANGE_WITH_BUZZER_HINT
#endif

#define GET_WFLY_RC_MAX_RANGE_WARNING_TIME_MS 2000
   
#include "module.h"

void WFLY_RC_GetOffset(void);
void WFLY_RC_GetMaxRange(void);
void WFLY_RC_GetOffsetOpe(void);
void WFLY_RC_GetMaxRangeOpe(void);
uint8 WFLY_RC_CheckOffsetValid(void);
uint8 WFLY_RC_CheckMaxRangeValid(void);
float WFLY_RC_GetThrottleRatio(void);
float WFLY_RC_GetYawRatio(void);
float WFLY_RC_GetPitchRatio(void);
float WFLY_RC_GetRollRatio(void);
uint8 WFLY_RC_GetCH5OnOff(void);
float WFLY_RC_CheckRatioValid(float ratio_to_check);

extern uint32 g_u32WFLY_RC_offset[4];
extern uint32 g_u32WFLY_RC_max_range[4];

extern const float gc_f32MaxRCYawAngle;
extern const float gc_f32MaxRCPitchAngle;
extern const float gc_f32MaxRCRollAngle;
extern const float gc_f32MaxRCThrottle;
extern const float gc_f32MaxRCHeight;

extern const float gc_f32RCThrottleDeadZone;

#endif
