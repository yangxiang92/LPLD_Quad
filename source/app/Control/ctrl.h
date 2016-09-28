/******************************************************************************
 *       ctrl.h ----- The header of control.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  ctrl.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/14 15:34:29                                                       *
 ******************************************************************************/
#ifndef _CTRL_H_
#define _CTRL_H_

#define SIX_ROTORS

#include "common.h"
#include "algorithm.h"
   
#define CTRL_MODE_HALT                  0x00
#define CTRL_MODE_LOCK_ATTITUDE         0x01
#define CTRL_MODE_LOCK_HEIGHT_ATTITUDE  0x03
#define CTRL_MODE_LOCK_POSITION_ATTITUDE 0x05
#define CTRL_MODE_LOCK_HEIGHT_POSITION_ATTITUDE 0x07

#define CTRL_MODE_MASK_ATTITUDE         0x01
#define CTRL_MODE_MASK_HEIGHT           0x02
#define CTRL_MODE_MASK_POSITION         0x04

typedef struct
{
    quaternion  targetAttitude;
    float       targetHeight;
    float       baseThrottle;
    float       targetPosition[2];
}LockAttitude;

typedef struct
{
    LockAttitude lock_attitude_struct;
    float throttle[6];
    uint8 mode;
}CtrlParameter;

typedef struct
{
    float pid_output[3];
    float lock_height_pid_output;
    quaternion delta_quaternion;
    float lock_position_pid_output[2];
    float lock_position_err[2];
}CtrlData;   

#include "algorithm.h"
#include "control.h"
#include "module.h"
#include "others.h"

void InitControl(void);
void CtrlLockTargetAttitude(void);
void CtrlOutputSameThrottle(float esc_throttle);
void CtrlOutputThrottle(void);
void CtrlOutputByTargetAttitude(quaternion * targetAttitude, float baseThrottle);
CtrlParameter* GetControlParameter(void);
CtrlData * GetControlData(void);
float CtrlGetLockTargetHeightThrottle(float height);
void CtrlEvent(void);
void CtrlEnterHaltMode(void);
void CtrlLockHeightThrottle(float height);
void CtrlLockPositionEulerAngle(float x_position, float y_position);
void CtrlSetTargetEulerAttitude(float yaw_angle, float pitch_angle, float roll_angle);
void CtrlSetBaseThrottle(float throttle);
void CtrlSetMode(uint8 mode_to_run);
void CtrlSetModeWithMask(uint8 mask);
void CtrlCancelModeWithMask(uint8 mask);
void CtrlSetTargetHeight(float height);
void CtrlSetTargetPosition(float x_position, float y_position);

extern PID_Parameters g_sXYZPidPara[3];
extern PID_Parameters g_sHeightPidPara;
extern PID_Parameters g_sPositionPidPara[2];

extern const float gc_f32LowerLimitThrottle;
extern const float gc_f32UpperLimitThrottle;
extern const float gc_f32HoverThrottle;
extern const float gc_f32BaseHeight;

#endif
