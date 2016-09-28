/******************************************************************************
 *       sensorfusion.h ----- The header of sensorfusion.c                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  sensorfusion.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 9:26:38                                                       *
 ******************************************************************************/
#ifndef _SENSORFUSION_H_
#define _SENSORFUSION_H_

#include "quaternion.h"
#include <math.h>

void FuseInit(void);
void FuseGyr(quaternion * attitude, float gyr[3],float interval);
void FuseAccMag(quaternion * attitude, float acc[3], float mag[3]);
void FuseAccMagSteepsetDescentMethod(quaternion * attitude, float acc[3], float mag[3]);
void FuseAccMagRotateMethod(quaternion * attitude, float acc[3], float mag[3]);
void FuseAccSteepestDescentMethod(quaternion * attitude, float acc[3]);
void FuseGyrAccCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float interval);
void FuseGyrAccMagCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float mag[3], float interval);
void IMUupdate(quaternion * attitude, float gyr[3], float acc[3], float interval);

#endif
