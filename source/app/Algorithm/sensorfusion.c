/****************************************************************************** 
 *       sensorfusion.c ----- The code to fuse sensor information          *
 *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
 *                        All Rights Reserved                                  *
 *Filename             :  sensorfusion.c                                           *
 *Programmer(s)        :  Yang Xiang                                           *
 *Description          :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/8 9:26:02                                                       *
 ******************************************************************************/
#include "sensorfusion.h"

const static float MIX_MAG_Y = 0.743144f;/*cos(42)*/
const static float MIX_MAG_Z = -0.669130f;/*sin42*/
const static float MIX_MAG_VECTOR[] = {0,0.743144f/*cos(42)*/,-0.669130f/*sin42*/};
const static float MIX_ACC_VECTOR[] = {0,0,1};
const static float MIX_LONGTREM_FACTOR = 0.005;
//const static float MIX_GRAVITY = 9.7883;

void FuseInit(void)
{

}

void FuseGyr(quaternion * attitude, float gyr[3],float interval)
{
    //
    // 构造增量旋转。
    float delta_x = gyr[0] * interval / 2;
    float delta_y = gyr[1] * interval / 2;
    float delta_z = gyr[2] * interval / 2;
    //
    float q_w = attitude->w;
    float q_x = attitude->x;
    float q_y = attitude->y;
    float q_z = attitude->z;
    //
    // 融合，四元数乘法。
    attitude->w = q_w         - q_x*delta_x - q_y*delta_y - q_z*delta_z;
    attitude->x = q_w*delta_x + q_x         + q_y*delta_z - q_z*delta_y;
    attitude->y = q_w*delta_y - q_x*delta_z + q_y         + q_z*delta_x;
    attitude->z = q_w*delta_z + q_x*delta_y - q_y*delta_x + q_z;
    quaternion_normalize(attitude);    
}

void FuseAccMag(quaternion * attitude, float acc[3], float mag[3])
{
    FuseAccMagRotateMethod(attitude,acc,mag);
}

void FuseAccMagSteepsetDescentMethod(quaternion * attitude, float acc[3], float mag[3])
{
    //
    // 单位化加速度和磁场方向。
    float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
    float x_a = acc[0] * a_rsqrt;
    float y_a = acc[1] * a_rsqrt;
    float z_a = acc[2] * a_rsqrt;
    //
    float h_rsqrt = math_rsqrt(mag[0]*mag[0]+mag[1]*mag[1]+mag[2]*mag[2]);
    float x_h = mag[0] * h_rsqrt;
    float y_h = mag[1] * h_rsqrt;
    float z_h = mag[2] * h_rsqrt;
    //
    float w_q = attitude->w;
    float x_q = attitude->x;
    float y_q = attitude->y;
    float z_q = attitude->z;
    //
    float x_q_2 = x_q * 2;
    float y_q_2 = y_q * 2;
    float z_q_2 = z_q * 2;
    //
    float x_da = x_q*z_q_2 - w_q*y_q_2     - x_a;
    float y_da = y_q*z_q_2 + w_q*x_q_2     - y_a;
    float z_da = 1 - x_q*x_q_2 - y_q*y_q_2 - z_a;
    //
    float x_dh = MIX_MAG_Y*(x_q*y_q_2 + w_q*z_q_2)     + MIX_MAG_Z*(x_q*z_q_2 - w_q*y_q_2)     - x_h;
    float y_dh = MIX_MAG_Y*(1 - x_q*x_q_2 - z_q*z_q_2) + MIX_MAG_Z*(y_q*z_q_2 + w_q*x_q_2)     - y_h;
    float z_dh = MIX_MAG_Y*(y_q*z_q_2 - w_q*x_q_2)     + MIX_MAG_Z*(1 - x_q*x_q_2 - y_q*y_q_2) - z_h;
    //
    float w_pf =  - x_da*y_q + y_da*x_q + x_dh*(MIX_MAG_Y*z_q - MIX_MAG_Z*y_q) \
            + y_dh*MIX_MAG_Z*x_q - z_dh*MIX_MAG_Y*x_q;
    float x_pf = x_da*z_q + y_da*w_q - z_da*x_q + x_dh*(MIX_MAG_Y*y_q + MIX_MAG_Z*z_q) \
            + y_dh*(MIX_MAG_Z*w_q - MIX_MAG_Y*x_q) - z_dh*(MIX_MAG_Y*w_q + MIX_MAG_Z*x_q);
    float y_pf = - x_da*w_q + y_da*z_q - z_da*y_q + x_dh*(MIX_MAG_Y*x_q - MIX_MAG_Z*w_q) \
            + y_dh*MIX_MAG_Z*z_q + z_dh*(MIX_MAG_Y*z_q - MIX_MAG_Z*y_q);
    float z_pf = x_da*x_q + y_da*y_q + x_dh*(MIX_MAG_Y*w_q + MIX_MAG_Z*x_q) \
            + y_dh *(MIX_MAG_Z*y_q - MIX_MAG_Y*z_q) + z_dh*MIX_MAG_Y*y_q;
    //
    attitude->w -= w_pf * MIX_LONGTREM_FACTOR;
    attitude->x -= x_pf * MIX_LONGTREM_FACTOR;
    attitude->y -= y_pf * MIX_LONGTREM_FACTOR;
    attitude->z -= z_pf * MIX_LONGTREM_FACTOR;
    quaternion_normalize(attitude);    
}

void FuseAccMagRotateMethod(quaternion * attitude, float acc[3], float mag[3])
{
    quaternion_fromFourVectorRotation(attitude,acc,MIX_ACC_VECTOR,mag,MIX_MAG_VECTOR);
    //
    //quaternion_fromTwoVectorRotation(attitude,acc,MIX_ACC_VECTOR);
    //quaternion_fromTwoVectorRotation(attitude,mag,MIX_MAG_VECTOR);    
}

void FuseAccSteepestDescentMethod(quaternion * attitude, float acc[3])
{
    //
    // 单位化加速度和磁场方向。
    float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
    float x_a = acc[0] * a_rsqrt;
    float y_a = acc[1] * a_rsqrt;
    float z_a = acc[2] * a_rsqrt;
    //
    float w_q = attitude->w;
    float x_q = attitude->x;
    float y_q = attitude->y;
    float z_q = attitude->z;
    //
    float x_q_2 = x_q * 2;
    float y_q_2 = y_q * 2;
    float z_q_2 = z_q * 2;
    //
    float x_da = x_q*z_q_2 - w_q*y_q_2     - x_a;
    float y_da = y_q*z_q_2 + w_q*x_q_2     - y_a;
    float z_da = 1 - x_q*x_q_2 - y_q*y_q_2 - z_a;
    //
    float w_pf =  - x_da*y_q + y_da*x_q;
    float x_pf = x_da*z_q + y_da*w_q - z_da*x_q;
    float y_pf = - x_da*w_q + y_da*z_q - z_da*y_q;
    float z_pf = x_da*x_q + y_da*y_q;
    //
    const float factor = 0.005;
    attitude->w -= w_pf * factor;
    attitude->x -= x_pf * factor;
    attitude->y -= y_pf * factor;
    attitude->z -= z_pf * factor;
    quaternion_normalize(attitude);    
}

void FuseGyrAccCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float interval)
{
    float FACTOR = 0.001;

    float w_q = attitude->w;
    float x_q = attitude->x;
    float y_q = attitude->y;
    float z_q = attitude->z;
    float x_q_2 = x_q * 2;
    float y_q_2 = y_q * 2;
    float z_q_2 = z_q * 2;
    //
    // 加速度计的读数，单位化。@加速度测量值,地球表面三轴向量和即为重力加速度
    float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
    float x_aa = acc[0] * a_rsqrt;
    float y_aa = acc[1] * a_rsqrt;
    float z_aa = acc[2] * a_rsqrt;
    //
    // 载体坐标下的重力加速度常量，单位化。@姿态矩阵最后一行
    float x_ac = x_q*z_q_2 - w_q*y_q_2;
    float y_ac = y_q*z_q_2 + w_q*x_q_2;
    float z_ac = 1 - x_q*x_q_2 - y_q*y_q_2;
    //
    // 测量值与常量的叉积。@求得的值即为陀螺仪偏移误差
	//@陀螺仪与加速度计测量姿态的误差
    float x_ca = y_aa * z_ac - z_aa * y_ac;
    float y_ca = z_aa * x_ac - x_aa * z_ac;
    float z_ca = x_aa * y_ac - y_aa * x_ac;
    //
    // 构造增量旋转。@数据融合得到的角度增量
    float delta_x = (gyr[0] * interval / 2 + x_ca * FACTOR);
    float delta_y = (gyr[1] * interval / 2 + y_ca * FACTOR);
    float delta_z = (gyr[2] * interval / 2 + z_ca * FACTOR);
    //
    // 融合，四元数乘法。@更新姿态
    attitude->w = w_q         - x_q*delta_x - y_q*delta_y - z_q*delta_z;
    attitude->x = w_q*delta_x + x_q         + y_q*delta_z - z_q*delta_y;
    attitude->y = w_q*delta_y - x_q*delta_z + y_q         + z_q*delta_x;
    attitude->z = w_q*delta_z + x_q*delta_y - y_q*delta_x + z_q;

    quaternion_normalize(attitude);	 //@四元数单位化，该函数无返回值
}

void FuseGyrAccMagCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float mag[3], float interval)
{
    static float FACTOR = 0.001;
    //
    float w_q = attitude->w;
    float x_q = attitude->x;
    float y_q = attitude->y;
    float z_q = attitude->z;
    float x_q_2 = x_q * 2;
    float y_q_2 = y_q * 2;
    float z_q_2 = z_q * 2;
    //
    // 单位化加速度计的读数。
    float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
    float x_aa = acc[0] * a_rsqrt;
    float y_aa = acc[1] * a_rsqrt;
    float z_aa = acc[2] * a_rsqrt;
    //
    // 单位化罗盘的读数。
    float h_rsqrt = math_rsqrt(mag[0]*mag[0]+mag[1]*mag[1]+mag[2]*mag[2]);
    float x_hh = mag[0] * h_rsqrt;
    float y_hh = mag[1] * h_rsqrt;
    float z_hh = mag[2] * h_rsqrt;
    //
    // 载体坐标下的重力加速度常量，已单位化。
    float x_ac = x_q*z_q_2 - w_q*y_q_2;
    float y_ac = y_q*z_q_2 + w_q*x_q_2;
    float z_ac = 1 - x_q*x_q_2 - y_q*y_q_2;
    //
    // 载体坐标下的地磁场常量，已单位化。
    float x_hc = MIX_MAG_Y*(x_q*y_q_2 + w_q*z_q_2)     + MIX_MAG_Z*(x_q*z_q_2 - w_q*y_q_2)    ;
    float y_hc = MIX_MAG_Y*(1 - x_q*x_q_2 - z_q*z_q_2) + MIX_MAG_Z*(y_q*z_q_2 + w_q*x_q_2)    ;
    float z_hc = MIX_MAG_Y*(y_q*z_q_2 - w_q*x_q_2)     + MIX_MAG_Z*(1 - x_q*x_q_2 - y_q*y_q_2);
    //
    // 测量值与常量的叉积。@求得的值即为陀螺仪偏移误差
	//@陀螺仪与加速度计测量姿态的误差
    float x_ca = y_aa * z_ac - z_aa * y_ac;
    float y_ca = z_aa * x_ac - x_aa * z_ac;
    float z_ca = x_aa * y_ac - y_aa * x_ac;
	//@陀螺仪与罗盘测量姿态的误差
    float x_ch = y_hh * z_hc - z_hh * y_hc;
    float y_ch = z_hh * x_hc - x_hh * z_hc;
    float z_ch = x_hh * y_hc - y_hh * x_hc;
    /////////////////////////////////////////////
    x_ch = 0;
    y_ch = 0;
    z_ch = z_ch;                                 // 舍弃X轴和Y轴的旋转，只对Z轴的旋转积分
    /////////////////////////////////////////////
    //
    // 构造增量旋转。 @数据融合得到角度增量
    float delta_x = gyr[0] * interval / 2 + (x_ca + x_ch) * FACTOR;
    float delta_y = gyr[1] * interval / 2 + (y_ca + y_ch) * FACTOR;
    float delta_z = gyr[2] * interval / 2 + (z_ca + z_ch) * FACTOR;
    //
    // 融合，四元数乘法。  @更新姿态
    attitude->w = w_q         - x_q*delta_x - y_q*delta_y - z_q*delta_z;
    attitude->x = w_q*delta_x + x_q         + y_q*delta_z - z_q*delta_y;
    attitude->y = w_q*delta_y - x_q*delta_z + y_q         + z_q*delta_x;
    attitude->z = w_q*delta_z + x_q*delta_y - y_q*delta_x + z_q;
    quaternion_normalize(attitude);	//@四元数单位化，该函数无返回值    
}

////////////////////////////////////////////////////////////////////////////////
#define Kp 10.0f                        // proportional gain governs rate of convergence to accelerometer/magnetometer
#define Ki 0.008f                          // integral gain governs rate of convergence of gyroscope biases

float q0 = 1, q1 = 0, q2 = 0, q3 = 0;    // quaternion elements representing the estimated orientation
float exInt = 0, eyInt = 0, ezInt = 0;    // scaled integral error
void IMUupdate(quaternion * attitude, float gyr[3], float acc[3], float interval)
{
  float gx, gy, gz;
  float ax, ay, az;
  float halfT;
  gx = gyr[0];
  gy = gyr[1];
  gz = gyr[2];
  ax = acc[0];
  ay = acc[1];
  az = acc[2];
  halfT = interval / 2;
  
  float norm;
  //float hx, hy, hz, bx, bz;
  float vx, vy, vz;// wx, wy, wz;
  float ex, ey, ez;

  // 把需要使用的值事先计算好
  float q0q0 = q0*q0;
  float q0q1 = q0*q1;
  float q0q2 = q0*q2;
  //float q0q3 = q0*q3;
  float q1q1 = q1*q1;
  //float q1q2 = q1*q2;
  float q1q3 = q1*q3;
  float q2q2 = q2*q2;
  float q2q3 = q2*q3;
  float q3q3 = q3*q3;
	
  if(ax*ay*az==0)
    return;
		
  norm = sqrt(ax*ax + ay*ay + az*az);       //accêy?Y1éò??ˉ
  ax = ax /norm;
  ay = ay / norm;
  az = az / norm;

  // estimated direction of gravity and flux (v and w)              1à????á|·??òoíá÷á?/±??¨
  vx = 2*(q1q3 - q0q2);												//???a???Dxyzμ?±íê?
  vy = 2*(q0q1 + q2q3);
  vz = q0q0 - q1q1 - q2q2 + q3q3 ;

  // error is sum of cross product between reference direction of fields and direction measured by sensors
  ex = (ay*vz - az*vy) ;                           					 //?òá?ía?y?ú?à??μ?μ?2?·??íê??ó2?
  ey = (az*vx - ax*vz) ;
  ez = (ax*vy - ay*vx) ;

  exInt = exInt + ex * Ki;								  //???ó2???DD?y·?
  eyInt = eyInt + ey * Ki;
  ezInt = ezInt + ez * Ki;

  // adjusted gyroscope measurements
  gx = gx + Kp*ex + exInt;					   							//???ó2?PIoó213￥μ?íó?Yò?￡??′213￥á?μ??ˉò?
  gy = gy + Kp*ey + eyInt;
  gz = gz + Kp*ez + ezInt;				   							//?aà?μ?gzóéóú??óD1?2a????DD???y?á2úéú?ˉò?￡?±í??3?à′μ??íê??y·?×????ò×???

  // integrate quaternion rate and normalise						   //???a??μ??￠·?·?3ì
  q0 = q0 + (-q1*gx - q2*gy - q3*gz)*halfT;
  q1 = q1 + (q0*gx + q2*gz - q3*gy)*halfT;
  q2 = q2 + (q0*gy - q1*gz + q3*gx)*halfT;
  q3 = q3 + (q0*gz + q1*gy - q2*gx)*halfT;

  // normalise quaternion
  norm = sqrt(q0*q0 + q1*q1 + q2*q2 + q3*q3);
  q0 = q0 / norm;
  q1 = q1 / norm;
  q2 = q2 / norm;
  q3 = q3 / norm;
  
    attitude->w = q0;
    attitude->x = q1;
    attitude->y = q2;
    attitude->z = q3;

//  Q_ANGLE.Z = GYRO_I.Z;//atan2(2 * q1 * q2 + 2 * q0 * q3, -2 * q2*q2 - 2 * q3* q3 + 1)* 57.3; // yaw
//  Q_ANGLE.Y = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3; // pitch
//  Q_ANGLE.X = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3; // roll
}
