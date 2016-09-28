///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:15 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\quaternion.c                                 /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\quaternion.c -D LPLD_K60 -lCN                /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V3\iar\FLASH_MINE\List\ -o                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\Obj\ --no_cse --no_unroll --no_inline              /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    3\iar\..\source\app\Control\ -I                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\Others\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V3\iar\..\source\app\Communicate\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\app\Algorithm\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V3\iar\..\source\app\SignalProcess\ -I         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\module\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V3\iar\..\source\module\anbt_dmp\ -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\module\eMPL\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V3\iar\..\source\lib\CPU\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V3\iar\..\source\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V3\iar\..\source\lib\LPLD\DEV\ -I                /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V3\iar\..\source\lib\uCOS-II\Source\ -I    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V3\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V3\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\..\sou /
//                    rce\lib\USB\class\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V3\iar\..\source\lib\MyLib\ -On -I             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\iar\FLASH_ /
//                    MINE\List\quaternion.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME quaternion

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memcpy4
        EXTERN asin
        EXTERN atan2
        EXTERN cos
        EXTERN sin
        EXTERN sqrtf

        PUBLIC math_rsqrt
        PUBLIC math_vector_cross
        PUBLIC quaternion_converQuaternionToYawPitchRoll
        PUBLIC quaternion_converYawPitchRollToQuaternion
        PUBLIC quaternion_fromFourVectorRotation
        PUBLIC quaternion_fromTwoVectorRotation
        PUBLIC quaternion_getConjugateQuaternion
        PUBLIC quaternion_loadIdentity
        PUBLIC quaternion_mult
        PUBLIC quaternion_normalize
        PUBLIC quaternion_rotateVector
        PUBLIC quaternion_seperateYawRotateAndPitchRollRotate

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Algorithm\quaternion.c
//    1 //     Copyright (c) 2013 js200300953@qq.com All rights reserved.
//    2 //         ==================================================
//    3 //         ========圆点博士微型四轴飞行器配套软件声明========
//    4 //         ==================================================
//    5 //     圆点博士微型四轴飞行器配套软件包括上位机程序、下位机Bootloader
//    6 // 、下位机App和遥控程序，及它们的源代码，以下总称“软件”。
//    7 //     软件仅提供参考，js200300953不对软件作任何担保，不对因使用该软件
//    8 // 而出现的损失负责。
//    9 //     软件可以以学习为目的修改和使用，但不允许以商业的目的使用该软件。
//   10 //     修改该软件时，必须保留原版权声明。
//   11 // 
//   12 //     更多资料见：
//   13 // http://blog.sina.com.cn/js200300953
//   14 // http://www.etootle.com/
//   15 // http://www.eeboard.com/bbs/forum-98-1.html#separatorline
//   16 // 圆点博士微型四轴飞行器QQ群：276721324
//   17 
//   18 /* math/quaternion.c
//   19  * 2012-11-7 18:27:01
//   20  * js200300953
//   21  */
//   22 
//   23 #include "quaternion.h"
//   24 #include <math.h>
//   25 
//   26 void quaternion_normalize(quaternion * q);
//   27 void quaternion_mult(quaternion * result,const quaternion * left,const quaternion * right);
//   28 void quaternion_rotateVector(const quaternion * rotation,const float from[3],float to[3]);
//   29 void quaternion_fromTwoVectorRotation(quaternion * result,const float from[3],const float to[3]);
//   30 void quaternion_fromFourVectorRotation(quaternion * result,const float from1[3],
//   31     const float to1[3],const float from2[3],const float to2[3]);
//   32 
//   33 // 快速算“平方根的倒数”。
//   34 // http://zh.wikipedia.org/wiki/%E5%B9%B3%E6%96%B9%E6%A0%B9%E5%80%92%E6%95%B0%E9%80%9F%E7%AE%97%E6%B3%95

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 float math_rsqrt(float number)
//   36 {
math_rsqrt:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
//   37     long i;
//   38     float x2, y;
//   39     const float threehalfs = 1.5F;
        MOVS     R8,#+1069547520
//   40 
//   41     x2 = number * 0.5F;
        MOVS     R0,#+1056964608
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R6,R0
//   42     y  = number;
        MOVS     R7,R4
//   43     i  = * ( long * ) &y;                       // evil floating point bit level hacking（对浮点数的邪恶位级hack）
        MOVS     R5,R7
//   44     i  = 0x5f3759df - ( i >> 1 );               // what the fuck?（这他妈的是怎么回事？）
        LDR.W    R0,??DataTable2  ;; 0x5f3759df
        SUBS     R5,R0,R5, ASR #+1
//   45     y  = * ( float * ) &i;
        MOVS     R7,R5
//   46     y  = y * ( threehalfs - ( x2 * y * y ) );   // 1st iteration （第一次牛顿迭代）
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R7,R0
//   47     y  = y * ( threehalfs - ( x2 * y * y ) );   // 2nd iteration, this can be removed（第二次迭代，可以删除）
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R7,R0
//   48 
//   49     return y;
        MOVS     R0,R7
        POP      {R4-R8,PC}       ;; return
//   50 }
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void math_vector_cross(float result[3],const float left[3],const float right[3])
//   53 {
math_vector_cross:
        PUSH     {R4-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   54     result[0] = left[1]*right[2] - left[2]*right[1];
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//   55     result[1] = left[2]*right[0] - left[0]*right[2];
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//   56     result[2] = left[0]*right[1] - left[1]*right[0];
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+8]
//   57 }
        POP      {R4-R7,PC}       ;; return
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void quaternion_loadIdentity(quaternion * q)
//   60 {
//   61     q->w = 1;
quaternion_loadIdentity:
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+0]
//   62     q->x = q->y = q->z = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        STR      R1,[R0, #+8]
        STR      R1,[R0, #+4]
//   63 }
        BX       LR               ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void quaternion_normalize(quaternion * q)
//   66 {
quaternion_normalize:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   67     float norm_r = math_rsqrt(q->w*q->w + q->x*q->x + q->y*q->y + q->z*q->z);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR      R1,[R4, #+12]
        LDR      R0,[R4, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        BL       math_rsqrt
        MOVS     R5,R0
//   68     q->w *= norm_r;
        LDR      R0,[R4, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[R4, #+0]
//   69     q->x *= norm_r;
        LDR      R0,[R4, #+4]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[R4, #+4]
//   70     q->y *= norm_r;
        LDR      R0,[R4, #+8]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[R4, #+8]
//   71     q->z *= norm_r;
        LDR      R0,[R4, #+12]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[R4, #+12]
//   72 }
        POP      {R0,R4,R5,PC}    ;; return
//   73 
//   74 // 四元数相乘
//   75 // left   : 被乘数，输入。
//   76 // right  : 乘数，输入。
//   77 // result : 积，输出。

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void quaternion_mult(quaternion * result,const quaternion * left,const quaternion * right)
//   79 {
quaternion_mult:
        PUSH     {R4-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   80     result->w = left->w * right->w - left->x * right->x - left->y * right->y - left->z * right->z;
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        MOVS     R7,R0
        LDR      R1,[R5, #+12]
        LDR      R0,[R6, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//   81     result->x = left->x * right->w + left->w * right->x + left->y * right->z - left->z * right->y;
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+12]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//   82     result->y = left->y * right->w + left->w * right->y + left->z * right->x - left->x * right->z;
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+12]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+8]
//   83     result->z = left->z * right->w + left->w * right->z + left->x * right->y - left->y * right->x;
        LDR      R1,[R5, #+12]
        LDR      R0,[R6, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R5, #+0]
        LDR      R0,[R6, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R6, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R6, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fsub
        STR      R0,[R4, #+12]
//   84 }
        POP      {R4-R7,PC}       ;; return
//   85 
//   86 // 用四元数来旋转向量。

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   87 void quaternion_rotateVector(const quaternion * rotation,const float from[3],float to[3])
//   88 {
quaternion_rotateVector:
        PUSH     {R2,R4-R11,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
        MOVS     R5,R1
//   89     float x2  = rotation->x * 2;
        LDR      R1,[R4, #+4]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R6,R0
//   90     float y2  = rotation->y * 2;
        LDR      R1,[R4, #+8]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R7,R0
//   91     float z2  = rotation->z * 2;
        LDR      R1,[R4, #+12]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOV      R8,R0
//   92     float wx2 = rotation->w * x2;
        LDR      R0,[R4, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+24]
//   93     float wy2 = rotation->w * y2;
        LDR      R0,[R4, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+20]
//   94     float wz2 = rotation->w * z2;
        LDR      R0,[R4, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+16]
//   95     float xx2 = rotation->x * x2;
        LDR      R0,[R4, #+4]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+12]
//   96     float yy2 = rotation->y * y2;
        LDR      R0,[R4, #+8]
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+8]
//   97     float zz2 = rotation->z * z2;
        LDR      R0,[R4, #+12]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+4]
//   98     float xy2 = rotation->x * y2;
        LDR      R0,[R4, #+4]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R9,R0
//   99     float yz2 = rotation->y * z2;
        LDR      R0,[R4, #+8]
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R10,R0
//  100     float xz2 = rotation->z * x2;
        LDR      R0,[R4, #+12]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R11,R0
//  101     //
//  102     to[0] = from[0]*(1 - yy2 - zz2) + from[1]*(xy2 - wz2)     + from[2]*(xz2 + wy2);
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+8]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R9
        LDR      R1,[SP, #+16]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+4]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOV      R1,R11
        BL       __aeabi_fadd
        LDR      R1,[R5, #+8]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+28]
        STR      R0,[R1, #+0]
//  103     to[1] = from[0]*(xy2 + wz2)     + from[1]*(1 - xx2 - zz2) + from[2]*(yz2 - wx2);
        LDR      R0,[SP, #+16]
        MOV      R1,R9
        BL       __aeabi_fadd
        LDR      R1,[R5, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+4]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R10
        LDR      R1,[SP, #+24]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+8]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+28]
        STR      R0,[R1, #+4]
//  104     to[2] = from[0]*(xz2 - wy2)     + from[1]*(yz2 + wx2)     + from[2]*(1 - xx2 - yy2);
        MOV      R0,R11
        LDR      R1,[SP, #+20]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+24]
        MOV      R1,R10
        BL       __aeabi_fadd
        LDR      R1,[R5, #+4]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+12]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+8]
        BL       __aeabi_fsub
        LDR      R1,[R5, #+8]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+28]
        STR      R0,[R1, #+8]
//  105 }
        ADD      SP,SP,#+32
        POP      {R4-R11,PC}      ;; return
//  106 
//  107 //
//  108 // 两向量旋转→四元数旋转。
//  109 // 输入：from、to两向量，长度都必须大于0。
//  110 // 输出：从from方向转到to方向的旋转。

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void quaternion_fromTwoVectorRotation(quaternion * result,const float from[3],const float to[3])
//  112 {
quaternion_fromTwoVectorRotation:
        PUSH     {R0,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R1
        MOVS     R5,R2
//  113     float from_norm = fabsf(from[0]*from[0] + from[1]*from[1] + from[2]*from[2]);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+0]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R6,R0
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        BICS     R0,R0,#0x80000000
        STR      R0,[SP, #+0]
//  114     float to_norm = fabsf(to[0]*to[0] + to[1]*to[1] + to[2]*to[2]);
        LDR      R1,[R5, #+0]
        LDR      R0,[R5, #+0]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R5, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        MOVS     R6,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R5, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        BICS     R6,R0,#0x80000000
//  115     //
//  116     from_norm = sqrtf(from_norm);
        LDR      R0,[SP, #+0]
        BL       sqrtf
        STR      R0,[SP, #+0]
//  117     to_norm = sqrtf(to_norm);
        MOVS     R0,R6
        BL       sqrtf
        MOVS     R6,R0
//  118     float cos_theta = (from[0]*to[0] + from[1]*to[1] + from[2]*to[2]) / (from_norm*to_norm);
        LDR      R1,[R4, #+0]
        LDR      R0,[R5, #+0]
        BL       __aeabi_fmul
        MOVS     R7,R0
        LDR      R1,[R4, #+4]
        LDR      R0,[R5, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R1,[R4, #+8]
        LDR      R0,[R5, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R7,R0
        LDR      R0,[SP, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_fdiv
        MOVS     R7,R0
//  119     result->w = sqrtf((1.0f + cos_theta) / 2); // cos(theta/2)
        MOVS     R0,#+1065353216
        MOVS     R1,R7
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        BL       sqrtf
        LDR      R1,[SP, #+8]
        STR      R0,[R1, #+0]
//  120     float sin_half_theta = sqrtf((1 - cos_theta) / 2);
        MOVS     R0,#+1065353216
        MOVS     R1,R7
        BL       __aeabi_fsub
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        BL       sqrtf
        STR      R0,[SP, #+4]
//  121     float cross_x = from[1]*to[2] - from[2]*to[1];
        LDR      R1,[R4, #+4]
        LDR      R0,[R5, #+8]
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR      R1,[R4, #+8]
        LDR      R0,[R5, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        MOV      R8,R0
//  122     float cross_y = from[2]*to[0] - from[0]*to[2];
        LDR      R1,[R4, #+8]
        LDR      R0,[R5, #+0]
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[R4, #+0]
        LDR      R0,[R5, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        MOV      R9,R0
//  123     float cross_z = from[0]*to[1] - from[1]*to[0];
        LDR      R1,[R4, #+0]
        LDR      R0,[R5, #+4]
        BL       __aeabi_fmul
        MOV      R10,R0
        LDR      R1,[R4, #+4]
        LDR      R0,[R5, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R10
        BL       __aeabi_fsub
        MOV      R10,R0
//  124     if(cos_theta < 0)
        MOVS     R0,R7
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??quaternion_fromTwoVectorRotation_0
//  125     {
//  126         cross_x = - cross_x;
        EORS     R8,R8,#0x80000000
//  127         cross_y = - cross_y;
        EORS     R9,R9,#0x80000000
//  128         cross_z = - cross_z;
        EORS     R10,R10,#0x80000000
//  129     }
//  130     float sin_half_theta_div_cross_norm = sin_half_theta /
//  131         sqrtf(cross_x*cross_x + cross_y*cross_y + cross_z*cross_z);
??quaternion_fromTwoVectorRotation_0:
        MOV      R0,R8
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R11,R0
        MOV      R0,R9
        MOV      R1,R9
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
        MOV      R0,R10
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        BL       sqrtf
        MOVS     R1,R0
        LDR      R0,[SP, #+4]
        BL       __aeabi_fdiv
        MOV      R11,R0
//  132     result->x = cross_x * sin_half_theta_div_cross_norm;
        MOV      R0,R8
        MOV      R1,R11
        BL       __aeabi_fmul
        LDR      R1,[SP, #+8]
        STR      R0,[R1, #+4]
//  133     result->y = cross_y * sin_half_theta_div_cross_norm;
        MOV      R0,R9
        MOV      R1,R11
        BL       __aeabi_fmul
        LDR      R1,[SP, #+8]
        STR      R0,[R1, #+8]
//  134     result->z = cross_z * sin_half_theta_div_cross_norm;
        MOV      R0,R10
        MOV      R1,R11
        BL       __aeabi_fmul
        LDR      R1,[SP, #+8]
        STR      R0,[R1, #+12]
//  135 }
        POP      {R0-R2,R4-R11,PC}  ;; return
//  136 
//  137 /*
//  138  * 四向量旋转。
//  139  * {from1,from2,to1,to2}都是单位向量。
//  140  * 生成从{from1,from2}到{to1,to2}最接近的旋转。 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 void quaternion_fromFourVectorRotation(quaternion * result,const float from1[3],
//  142     const float to1[3],const float from2[3],const float to2[3])
//  143 {
quaternion_fromFourVectorRotation:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+92
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+120]
//  144     /*
//  145      * 变换基底。 */
//  146     float mid_from[3],mid_to[3],cross_from[3],cross_to[3];
//  147     math_vector_cross(cross_from,from1,from2);
        MOVS     R2,R7
        MOVS     R1,R5
        ADD      R0,SP,#+40
        BL       math_vector_cross
//  148     math_vector_cross(cross_to,to1,to2);
        MOV      R2,R8
        MOVS     R1,R6
        ADD      R0,SP,#+28
        BL       math_vector_cross
//  149     for(int i=0;i<3;i++)
        MOVS     R9,#+0
??quaternion_fromFourVectorRotation_0:
        CMP      R9,#+3
        BGE.N    ??quaternion_fromFourVectorRotation_1
//  150     {
//  151         mid_from[i] = from1[i] + from2[i];
        LDR      R0,[R5, R9, LSL #+2]
        LDR      R1,[R7, R9, LSL #+2]
        BL       __aeabi_fadd
        ADD      R1,SP,#+64
        STR      R0,[R1, R9, LSL #+2]
//  152         mid_to[i] = to1[i] + to2[i];
        LDR      R0,[R6, R9, LSL #+2]
        LDR      R1,[R8, R9, LSL #+2]
        BL       __aeabi_fadd
        ADD      R1,SP,#+52
        STR      R0,[R1, R9, LSL #+2]
//  153     }
        ADDS     R9,R9,#+1
        B.N      ??quaternion_fromFourVectorRotation_0
//  154     /*
//  155      * 先把mid转到重合。 */
//  156     quaternion rotation_1;
//  157     quaternion_fromTwoVectorRotation(&rotation_1,mid_from,mid_to);
??quaternion_fromFourVectorRotation_1:
        ADD      R2,SP,#+52
        ADD      R1,SP,#+64
        ADD      R0,SP,#+12
        BL       quaternion_fromTwoVectorRotation
//  158     /*
//  159      * 然后再把cross转到重合。 */
//  160     quaternion rotation_2;
//  161     float cross_from_1[3];
//  162     quaternion_rotateVector(&rotation_1,cross_from,cross_from_1);
        ADD      R2,SP,#+0
        ADD      R1,SP,#+40
        ADD      R0,SP,#+12
        BL       quaternion_rotateVector
//  163     quaternion_fromTwoVectorRotation(&rotation_2,cross_from_1,cross_to);
        ADD      R2,SP,#+28
        ADD      R1,SP,#+0
        ADD      R0,SP,#+76
        BL       quaternion_fromTwoVectorRotation
//  164     /*
//  165      * 最后结合两次旋转。 */
//  166     quaternion_mult(result,&rotation_2,&rotation_1);
        ADD      R2,SP,#+12
        ADD      R1,SP,#+76
        MOVS     R0,R4
        BL       quaternion_mult
//  167 }
        ADD      SP,SP,#+92
        POP      {R4-R9,PC}       ;; return
//  168 
//  169 /*
//  170  * 得到四元数的共轭四元数（共轭四元数代表的是原四元数相反的旋转方向）
//  171  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 quaternion quaternion_getConjugateQuaternion(quaternion original_quaternion)
//  173 {
quaternion_getConjugateQuaternion:
        PUSH     {R1-R3}
        PUSH     {R4-R7,LR}
//  174     quaternion ret_quaternion;
//  175 
//  176     ret_quaternion.w = original_quaternion.w;
        LDR      R1,[SP, #+20]
        STR      R1,[SP, #+0]
//  177     ret_quaternion.x = -original_quaternion.x;
        LDR      R1,[SP, #+24]
        EORS     R1,R1,#0x80000000
        STR      R1,[SP, #+4]
//  178     ret_quaternion.y = -original_quaternion.y;
        LDR      R1,[SP, #+28]
        EORS     R1,R1,#0x80000000
        STR      R1,[SP, #+8]
//  179     ret_quaternion.z = -original_quaternion.z;
        LDR      R1,[SP, #+32]
        EORS     R1,R1,#0x80000000
        STR      R1,[SP, #+12]
//  180 
//  181     return ret_quaternion;
        ADD      R1,SP,#+0
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+16
        LDR      PC,[SP], #+16    ;; return
//  182 }
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void quaternion_converQuaternionToYawPitchRoll(quaternion source_quaternion, float ypr_result[3])
//  185 {
quaternion_converQuaternionToYawPitchRoll:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+12
        LDR      R4,[SP, #+64]
//  186     float w,x,y,z;
//  187     float yaw,pitch,roll;
//  188 
//  189     w = source_quaternion.w;
        LDR      R0,[SP, #+12]
        MOV      R10,R0
//  190     x = source_quaternion.x;
        LDR      R0,[SP, #+16]
        MOVS     R5,R0
//  191     y = source_quaternion.y;
        LDR      R0,[SP, #+20]
        MOVS     R6,R0
//  192     z = source_quaternion.z;
        LDR      R0,[SP, #+24]
        MOVS     R7,R0
//  193 
//  194     yaw = atan2(2*w*z + 2*x*y ,1 - 2*y*y - 2*z*z) * 57.2957795f;
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R8,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        MOVS     R0,#+1073741824
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       atan2
        MOVS     R2,#+536870912
        LDR.N    R3,??DataTable2_1  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[SP, #+8]
//  195     pitch = asin(2*w*y - 2*z*x) * 57.2957795f;
        MOVS     R0,#+1073741824
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R8,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        BL       asin
        MOVS     R2,#+536870912
        LDR.N    R3,??DataTable2_1  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[SP, #+4]
//  196     roll = atan2(2*w*x + 2*y*z, 1 - 2*x*x - 2*y*y) * 57.2957795f; 
        MOVS     R0,#+1073741824
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R8,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        MOVS     R0,#+1073741824
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       atan2
        MOVS     R2,#+536870912
        LDR.N    R3,??DataTable2_1  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[SP, #+0]
//  197 
//  198     // 从matlab上面找的算法，不过结果与上面的没什么区别。
//  199     /* 
//  200     yaw = atan2(2*w*z + 2*x*y ,w*w + x*x - y*y - z*z) * 57.2957795f;
//  201     pitch = asin(2*w*y - 2*z*x) * 57.2957795f;
//  202     roll = atan2(2*w*x + 2*y*z, w*w - x*x - y*y + z*z) * 57.2957795f;     
//  203     */
//  204 
//  205     ypr_result[0] = yaw;
        LDR      R0,[SP, #+8]
        STR      R0,[R4, #+0]
//  206     ypr_result[1] = pitch;
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+4]
//  207     ypr_result[2] = roll;
        LDR      R0,[SP, #+0]
        STR      R0,[R4, #+8]
//  208 }
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
//  209 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 quaternion quaternion_converYawPitchRollToQuaternion(float ypr[3])
//  211 {
quaternion_converYawPitchRollToQuaternion:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+44
//  212     quaternion ret_quaternion;
//  213     float yaw_rad_half, pitch_rad_half, roll_rad_half;
//  214 
//  215     yaw_rad_half   = (ypr[0] / 57.2957795f) / 2;
        LDR      R0,[SP, #+48]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2  ;; 0x42652ee1
        BL       __aeabi_fdiv
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+8]
//  216     pitch_rad_half = (ypr[1] / 57.2957795f) / 2;
        LDR      R0,[SP, #+48]
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable2_2  ;; 0x42652ee1
        BL       __aeabi_fdiv
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+4]
//  217     roll_rad_half  = (ypr[2] / 57.2957795f) / 2;
        LDR      R0,[SP, #+48]
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable2_2  ;; 0x42652ee1
        BL       __aeabi_fdiv
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+0]
//  218 
//  219     ret_quaternion.w = cos(roll_rad_half)*cos(pitch_rad_half)*cos(yaw_rad_half) + sin(roll_rad_half)*sin(pitch_rad_half)*sin(yaw_rad_half);
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       cos
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       cos
        STRD     R0,R1,[SP, #+16]
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       sin
        MOV      R10,R0
        MOV      R11,R1
        MOV      R2,R8
        MOV      R3,R9
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+16]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        MOV      R2,R10
        MOV      R3,R11
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[SP, #+24]
//  220     ret_quaternion.x = sin(roll_rad_half)*cos(pitch_rad_half)*cos(yaw_rad_half) - cos(roll_rad_half)*sin(pitch_rad_half)*sin(yaw_rad_half);
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       cos
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       cos
        STRD     R0,R1,[SP, #+16]
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       cos
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       sin
        MOV      R10,R0
        MOV      R11,R1
        MOV      R2,R8
        MOV      R3,R9
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+16]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        MOV      R2,R10
        MOV      R3,R11
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+28]
//  221     ret_quaternion.y = cos(roll_rad_half)*sin(pitch_rad_half)*cos(yaw_rad_half) + sin(roll_rad_half)*cos(pitch_rad_half)*sin(yaw_rad_half);
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       sin
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       cos
        STRD     R0,R1,[SP, #+16]
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       cos
        MOV      R10,R0
        MOV      R11,R1
        MOV      R2,R8
        MOV      R3,R9
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+16]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        MOV      R2,R10
        MOV      R3,R11
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[SP, #+32]
//  222     ret_quaternion.z = cos(roll_rad_half)*cos(pitch_rad_half)*sin(yaw_rad_half) - sin(roll_rad_half)*sin(pitch_rad_half)*cos(yaw_rad_half);
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       cos
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       cos
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       sin
        STRD     R0,R1,[SP, #+16]
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        BL       sin
        MOVS     R6,R0
        MOVS     R7,R1
        LDR      R0,[SP, #+4]
        BL       __aeabi_f2d
        BL       sin
        MOV      R10,R0
        MOV      R11,R1
        MOV      R2,R8
        MOV      R3,R9
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dmul
        LDRD     R2,R3,[SP, #+16]
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        MOV      R2,R10
        MOV      R3,R11
        MOVS     R0,R6
        MOVS     R1,R7
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+8]
        BL       __aeabi_f2d
        BL       cos
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R0,R8
        MOV      R1,R9
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+36]
//  223 
//  224     return ret_quaternion;
        LDR      R0,[SP, #+44]
        ADD      R1,SP,#+24
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+52
        POP      {R4-R11,PC}      ;; return
//  225 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x5f3759df

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x42652ee1
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void quaternion_seperateYawRotateAndPitchRollRotate(quaternion * yaw_rotate, quaternion * pitch_roll_rotate, quaternion * yaw_pitch_roll_rotate)
//  228 {
quaternion_seperateYawRotateAndPitchRollRotate:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+48
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R4,R2
//  229     float ypr[3];
//  230     quaternion yaw_rotate_quaternion_rev;
//  231 
//  232     quaternion_converQuaternionToYawPitchRoll(*yaw_pitch_roll_rotate, ypr);
        ADD      R0,SP,#+4
        STR      R0,[SP, #+0]
        LDM      R4,{R0-R3}
        BL       quaternion_converQuaternionToYawPitchRoll
//  233 
//  234     ypr[1] = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  235     ypr[2] = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  236 
//  237     *yaw_rotate = quaternion_converYawPitchRollToQuaternion(ypr);
        ADD      R1,SP,#+4
        ADD      R0,SP,#+16
        BL       quaternion_converYawPitchRollToQuaternion
        MOVS     R0,R5
        ADD      R1,SP,#+16
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  238     quaternion_normalize(yaw_rotate);
        MOVS     R0,R5
        BL       quaternion_normalize
//  239 
//  240     yaw_rotate_quaternion_rev = quaternion_getConjugateQuaternion(*yaw_rotate);
        SUB      SP,SP,#+12
        MOV      R0,SP
        LDM      R5!,{R1-R3}
        STM      R0!,{R1-R3}
        LDR      R1,[R5, #0]
        STR      R1,[R0, #+0]
        SUBS     R5,R5,#+12
        SUBS     R0,R0,#+12
        POP      {R1-R3}
        ADD      R0,SP,#+32
        BL       quaternion_getConjugateQuaternion
//  241 
//  242     quaternion_mult(pitch_roll_rotate, yaw_pitch_roll_rotate, &yaw_rotate_quaternion_rev);
        ADD      R2,SP,#+32
        MOVS     R1,R4
        MOVS     R0,R6
        BL       quaternion_mult
//  243     quaternion_normalize(pitch_roll_rotate);
        MOVS     R0,R6
        BL       quaternion_normalize
//  244 }
        ADD      SP,SP,#+48
        POP      {R4-R6,PC}       ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 2 674 bytes in section .text
// 
// 2 674 bytes of CODE memory
//
//Errors: none
//Warnings: none
