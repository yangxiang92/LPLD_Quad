//     Copyright (c) 2013 js200300953@qq.com All rights reserved.
//         ==================================================
//         ========Բ�㲩ʿ΢����������������������========
//         ==================================================
//     Բ�㲩ʿ΢������������������������λ��������λ��Bootloader
// ����λ��App��ң�س��򣬼����ǵ�Դ���룬�����ܳơ��������
//     ������ṩ�ο���js200300953����������κε�����������ʹ�ø����
// �����ֵ���ʧ����
//     ���������ѧϰΪĿ���޸ĺ�ʹ�ã�������������ҵ��Ŀ��ʹ�ø������
//     �޸ĸ����ʱ�����뱣��ԭ��Ȩ������
// 
//     �������ϼ���
// http://blog.sina.com.cn/js200300953
// http://www.etootle.com/
// http://www.eeboard.com/bbs/forum-98-1.html#separatorline
// Բ�㲩ʿ΢�����������QQȺ��276721324

/* math/quaternion.c
 * 2012-11-7 18:27:01
 * js200300953
 */

#include "quaternion.h"
#include <math.h>

void quaternion_normalize(quaternion * q);
void quaternion_mult(quaternion * result,const quaternion * left,const quaternion * right);
void quaternion_rotateVector(const quaternion * rotation,const float from[3],float to[3]);
void quaternion_fromTwoVectorRotation(quaternion * result,const float from[3],const float to[3]);
void quaternion_fromFourVectorRotation(quaternion * result,const float from1[3],
    const float to1[3],const float from2[3],const float to2[3]);

// �����㡰ƽ�����ĵ�������
// http://zh.wikipedia.org/wiki/%E5%B9%B3%E6%96%B9%E6%A0%B9%E5%80%92%E6%95%B0%E9%80%9F%E7%AE%97%E6%B3%95
float math_rsqrt(float number)
{
    long i;
    float x2, y;
    const float threehalfs = 1.5F;

    x2 = number * 0.5F;
    y  = number;
    i  = * ( long * ) &y;                       // evil floating point bit level hacking���Ը�������а��λ��hack��
    i  = 0x5f3759df - ( i >> 1 );               // what the fuck?�������������ô���£���
    y  = * ( float * ) &i;
    y  = y * ( threehalfs - ( x2 * y * y ) );   // 1st iteration ����һ��ţ�ٵ�����
    y  = y * ( threehalfs - ( x2 * y * y ) );   // 2nd iteration, this can be removed���ڶ��ε���������ɾ����

    return y;
}

void math_vector_cross(float result[3],const float left[3],const float right[3])
{
    result[0] = left[1]*right[2] - left[2]*right[1];
    result[1] = left[2]*right[0] - left[0]*right[2];
    result[2] = left[0]*right[1] - left[1]*right[0];
}

void quaternion_loadIdentity(quaternion * q)
{
    q->w = 1;
    q->x = q->y = q->z = 0;
}

void quaternion_normalize(quaternion * q)
{
    float norm_r = math_rsqrt(q->w*q->w + q->x*q->x + q->y*q->y + q->z*q->z);
    q->w *= norm_r;
    q->x *= norm_r;
    q->y *= norm_r;
    q->z *= norm_r;
}

// ��Ԫ�����
// left   : �����������롣
// right  : ���������롣
// result : ���������
void quaternion_mult(quaternion * result,const quaternion * left,const quaternion * right)
{
    result->w = left->w * right->w - left->x * right->x - left->y * right->y - left->z * right->z;
    result->x = left->x * right->w + left->w * right->x + left->y * right->z - left->z * right->y;
    result->y = left->y * right->w + left->w * right->y + left->z * right->x - left->x * right->z;
    result->z = left->z * right->w + left->w * right->z + left->x * right->y - left->y * right->x;
}

// ����Ԫ������ת������
void quaternion_rotateVector(const quaternion * rotation,const float from[3],float to[3])
{
    float x2  = rotation->x * 2;
    float y2  = rotation->y * 2;
    float z2  = rotation->z * 2;
    float wx2 = rotation->w * x2;
    float wy2 = rotation->w * y2;
    float wz2 = rotation->w * z2;
    float xx2 = rotation->x * x2;
    float yy2 = rotation->y * y2;
    float zz2 = rotation->z * z2;
    float xy2 = rotation->x * y2;
    float yz2 = rotation->y * z2;
    float xz2 = rotation->z * x2;
    //
    to[0] = from[0]*(1 - yy2 - zz2) + from[1]*(xy2 - wz2)     + from[2]*(xz2 + wy2);
    to[1] = from[0]*(xy2 + wz2)     + from[1]*(1 - xx2 - zz2) + from[2]*(yz2 - wx2);
    to[2] = from[0]*(xz2 - wy2)     + from[1]*(yz2 + wx2)     + from[2]*(1 - xx2 - yy2);
}

//
// ��������ת����Ԫ����ת��
// ���룺from��to�����������ȶ��������0��
// �������from����ת��to�������ת��
void quaternion_fromTwoVectorRotation(quaternion * result,const float from[3],const float to[3])
{
    float from_norm = fabsf(from[0]*from[0] + from[1]*from[1] + from[2]*from[2]);
    float to_norm = fabsf(to[0]*to[0] + to[1]*to[1] + to[2]*to[2]);
    //
    from_norm = sqrtf(from_norm);
    to_norm = sqrtf(to_norm);
    float cos_theta = (from[0]*to[0] + from[1]*to[1] + from[2]*to[2]) / (from_norm*to_norm);
    result->w = sqrtf((1.0f + cos_theta) / 2); // cos(theta/2)
    float sin_half_theta = sqrtf((1 - cos_theta) / 2);
    float cross_x = from[1]*to[2] - from[2]*to[1];
    float cross_y = from[2]*to[0] - from[0]*to[2];
    float cross_z = from[0]*to[1] - from[1]*to[0];
    if(cos_theta < 0)
    {
        cross_x = - cross_x;
        cross_y = - cross_y;
        cross_z = - cross_z;
    }
    float sin_half_theta_div_cross_norm = sin_half_theta /
        sqrtf(cross_x*cross_x + cross_y*cross_y + cross_z*cross_z);
    result->x = cross_x * sin_half_theta_div_cross_norm;
    result->y = cross_y * sin_half_theta_div_cross_norm;
    result->z = cross_z * sin_half_theta_div_cross_norm;
}

/*
 * ��������ת��
 * {from1,from2,to1,to2}���ǵ�λ������
 * ���ɴ�{from1,from2}��{to1,to2}��ӽ�����ת�� */
void quaternion_fromFourVectorRotation(quaternion * result,const float from1[3],
    const float to1[3],const float from2[3],const float to2[3])
{
    /*
     * �任���ס� */
    float mid_from[3],mid_to[3],cross_from[3],cross_to[3];
    math_vector_cross(cross_from,from1,from2);
    math_vector_cross(cross_to,to1,to2);
    for(int i=0;i<3;i++)
    {
        mid_from[i] = from1[i] + from2[i];
        mid_to[i] = to1[i] + to2[i];
    }
    /*
     * �Ȱ�midת���غϡ� */
    quaternion rotation_1;
    quaternion_fromTwoVectorRotation(&rotation_1,mid_from,mid_to);
    /*
     * Ȼ���ٰ�crossת���غϡ� */
    quaternion rotation_2;
    float cross_from_1[3];
    quaternion_rotateVector(&rotation_1,cross_from,cross_from_1);
    quaternion_fromTwoVectorRotation(&rotation_2,cross_from_1,cross_to);
    /*
     * �����������ת�� */
    quaternion_mult(result,&rotation_2,&rotation_1);
}

/*
 * �õ���Ԫ���Ĺ�����Ԫ����������Ԫ���������ԭ��Ԫ���෴����ת����
 */
quaternion quaternion_getConjugateQuaternion(quaternion original_quaternion)
{
    quaternion ret_quaternion;

    ret_quaternion.w = original_quaternion.w;
    ret_quaternion.x = -original_quaternion.x;
    ret_quaternion.y = -original_quaternion.y;
    ret_quaternion.z = -original_quaternion.z;

    return ret_quaternion;
}

void quaternion_converQuaternionToYawPitchRoll(quaternion source_quaternion, float ypr_result[3])
{
    float w,x,y,z;
    float yaw,pitch,roll;

    w = source_quaternion.w;
    x = source_quaternion.x;
    y = source_quaternion.y;
    z = source_quaternion.z;

    yaw = atan2(2*w*z + 2*x*y ,1 - 2*y*y - 2*z*z) * 57.2957795f;
    pitch = asin(2*w*y - 2*z*x) * 57.2957795f;
    roll = atan2(2*w*x + 2*y*z, 1 - 2*x*x - 2*y*y) * 57.2957795f; 

    // ��matlab�����ҵ��㷨����������������ûʲô����
    /* 
    yaw = atan2(2*w*z + 2*x*y ,w*w + x*x - y*y - z*z) * 57.2957795f;
    pitch = asin(2*w*y - 2*z*x) * 57.2957795f;
    roll = atan2(2*w*x + 2*y*z, w*w - x*x - y*y + z*z) * 57.2957795f;     
    */

    ypr_result[0] = yaw;
    ypr_result[1] = pitch;
    ypr_result[2] = roll;
}

quaternion quaternion_converYawPitchRollToQuaternion(float ypr[3])
{
    quaternion ret_quaternion;
    float yaw_rad_half, pitch_rad_half, roll_rad_half;

    yaw_rad_half   = (ypr[0] / 57.2957795f) / 2;
    pitch_rad_half = (ypr[1] / 57.2957795f) / 2;
    roll_rad_half  = (ypr[2] / 57.2957795f) / 2;

    ret_quaternion.w = cos(roll_rad_half)*cos(pitch_rad_half)*cos(yaw_rad_half) + sin(roll_rad_half)*sin(pitch_rad_half)*sin(yaw_rad_half);
    ret_quaternion.x = sin(roll_rad_half)*cos(pitch_rad_half)*cos(yaw_rad_half) - cos(roll_rad_half)*sin(pitch_rad_half)*sin(yaw_rad_half);
    ret_quaternion.y = cos(roll_rad_half)*sin(pitch_rad_half)*cos(yaw_rad_half) + sin(roll_rad_half)*cos(pitch_rad_half)*sin(yaw_rad_half);
    ret_quaternion.z = cos(roll_rad_half)*cos(pitch_rad_half)*sin(yaw_rad_half) - sin(roll_rad_half)*sin(pitch_rad_half)*cos(yaw_rad_half);

    return ret_quaternion;
}

void quaternion_seperateYawRotateAndPitchRollRotate(quaternion * yaw_rotate, quaternion * pitch_roll_rotate, quaternion * yaw_pitch_roll_rotate)
{
    float ypr[3];
    quaternion yaw_rotate_quaternion_rev;

    quaternion_converQuaternionToYawPitchRoll(*yaw_pitch_roll_rotate, ypr);

    ypr[1] = 0;
    ypr[2] = 0;

    *yaw_rotate = quaternion_converYawPitchRollToQuaternion(ypr);
    quaternion_normalize(yaw_rotate);

    yaw_rotate_quaternion_rev = quaternion_getConjugateQuaternion(*yaw_rotate);

    quaternion_mult(pitch_roll_rotate, yaw_pitch_roll_rotate, &yaw_rotate_quaternion_rev);
    quaternion_normalize(pitch_roll_rotate);
}
