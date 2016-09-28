///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:21 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\sensorfusion.c                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\sensorfusion.c -D LPLD_K60 -lCN              /
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
//                    MINE\List\sensorfusion.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME sensorfusion

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmpeq
        EXTERN __aeabi_d2f
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN math_rsqrt
        EXTERN quaternion_fromFourVectorRotation
        EXTERN quaternion_normalize
        EXTERN sqrt

        PUBLIC FuseAccMag
        PUBLIC FuseAccMagRotateMethod
        PUBLIC FuseAccMagSteepsetDescentMethod
        PUBLIC FuseAccSteepestDescentMethod
        PUBLIC FuseGyr
        PUBLIC FuseGyrAccCrossMethod
        PUBLIC FuseGyrAccMagCrossMethod
        PUBLIC FuseInit
        PUBLIC IMUupdate
        PUBLIC exInt
        PUBLIC eyInt
        PUBLIC ezInt
        PUBLIC q0
        PUBLIC q1
        PUBLIC q2
        PUBLIC q3

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Algorithm\sensorfusion.c
//    1 /****************************************************************************** 
//    2  *       sensorfusion.c ----- The code to fuse sensor information          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  sensorfusion.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/8 9:26:02                                                       *
//   10  ******************************************************************************/
//   11 #include "sensorfusion.h"
//   12 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   13 const static float MIX_MAG_Y = 0.743144f;/*cos(42)*/
MIX_MAG_Y:
        DATA
        DC32 3F3E3EAFH

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   14 const static float MIX_MAG_Z = -0.669130f;/*sin42*/
MIX_MAG_Z:
        DATA
        DC32 0BF2B4C1BH

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   15 const static float MIX_MAG_VECTOR[] = {0,0.743144f/*cos(42)*/,-0.669130f/*sin42*/};
MIX_MAG_VECTOR:
        DATA
        DC32 0H, 3F3E3EAFH, 0BF2B4C1BH

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   16 const static float MIX_ACC_VECTOR[] = {0,0,1};
MIX_ACC_VECTOR:
        DATA
        DC32 0H, 0H, 3F800000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   17 const static float MIX_LONGTREM_FACTOR = 0.005;
MIX_LONGTREM_FACTOR:
        DATA
        DC32 3BA3D70AH
//   18 //const static float MIX_GRAVITY = 9.7883;
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void FuseInit(void)
//   21 {
//   22 
//   23 }
FuseInit:
        BX       LR               ;; return
//   24 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void FuseGyr(quaternion * attitude, float gyr[3],float interval)
//   26 {
FuseGyr:
        PUSH     {R0-R2,R4-R11,LR}
        MOVS     R4,R0
//   27     //
//   28     // 构造增量旋转。
//   29     float delta_x = gyr[0] * interval / 2;
        LDR      R0,[SP, #+4]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+8]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R5,R0
//   30     float delta_y = gyr[1] * interval / 2;
        LDR      R0,[SP, #+4]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+8]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R6,R0
//   31     float delta_z = gyr[2] * interval / 2;
        LDR      R0,[SP, #+4]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+8]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOVS     R7,R0
//   32     //
//   33     float q_w = attitude->w;
        LDR      R8,[R4, #+0]
//   34     float q_x = attitude->x;
        LDR      R9,[R4, #+4]
//   35     float q_y = attitude->y;
        LDR      R10,[R4, #+8]
//   36     float q_z = attitude->z;
        LDR      R11,[R4, #+12]
//   37     //
//   38     // 融合，四元数乘法。
//   39     attitude->w = q_w         - q_x*delta_x - q_y*delta_y - q_z*delta_z;
        MOV      R0,R9
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOV      R0,R10
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOV      R0,R11
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//   40     attitude->x = q_w*delta_x + q_x         + q_y*delta_z - q_z*delta_y;
        MOV      R0,R8
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R10
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R11
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//   41     attitude->y = q_w*delta_y - q_x*delta_z + q_y         + q_z*delta_x;
        MOV      R0,R8
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R9
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        MOV      R1,R10
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R11
        MOVS     R1,R5
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[R4, #+8]
//   42     attitude->z = q_w*delta_z + q_x*delta_y - q_y*delta_x + q_z;
        MOV      R0,R8
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R9
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R10
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        MOV      R1,R11
        BL       __aeabi_fadd
        STR      R0,[R4, #+12]
//   43     quaternion_normalize(attitude);    
        MOVS     R0,R4
        BL       quaternion_normalize
//   44 }
        POP      {R0-R2,R4-R11,PC}  ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void FuseAccMag(quaternion * attitude, float acc[3], float mag[3])
//   47 {
FuseAccMag:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   48     FuseAccMagRotateMethod(attitude,acc,mag);
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
        BL       FuseAccMagRotateMethod
//   49 }
        POP      {R4-R6,PC}       ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void FuseAccMagSteepsetDescentMethod(quaternion * attitude, float acc[3], float mag[3])
//   52 {
FuseAccMagSteepsetDescentMethod:
        PUSH     {R1,R2,R4-R11,LR}
        SUB      SP,SP,#+76
        MOVS     R4,R0
//   53     //
//   54     // 单位化加速度和磁场方向。
//   55     float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+76]
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+76]
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+76]
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        BL       math_rsqrt
        STR      R0,[SP, #+32]
//   56     float x_a = acc[0] * a_rsqrt;
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+32]
        BL       __aeabi_fmul
        STR      R0,[SP, #+72]
//   57     float y_a = acc[1] * a_rsqrt;
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+32]
        BL       __aeabi_fmul
        STR      R0,[SP, #+68]
//   58     float z_a = acc[2] * a_rsqrt;
        LDR      R0,[SP, #+76]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+32]
        BL       __aeabi_fmul
        STR      R0,[SP, #+64]
//   59     //
//   60     float h_rsqrt = math_rsqrt(mag[0]*mag[0]+mag[1]*mag[1]+mag[2]*mag[2]);
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+80]
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R5,R0
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+80]
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        MOVS     R5,R0
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+80]
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        BL       math_rsqrt
        STR      R0,[SP, #+28]
//   61     float x_h = mag[0] * h_rsqrt;
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+28]
        BL       __aeabi_fmul
        STR      R0,[SP, #+60]
//   62     float y_h = mag[1] * h_rsqrt;
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+28]
        BL       __aeabi_fmul
        STR      R0,[SP, #+56]
//   63     float z_h = mag[2] * h_rsqrt;
        LDR      R0,[SP, #+80]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+28]
        BL       __aeabi_fmul
        STR      R0,[SP, #+52]
//   64     //
//   65     float w_q = attitude->w;
        LDR      R5,[R4, #+0]
//   66     float x_q = attitude->x;
        LDR      R6,[R4, #+4]
//   67     float y_q = attitude->y;
        LDR      R7,[R4, #+8]
//   68     float z_q = attitude->z;
        LDR      R8,[R4, #+12]
//   69     //
//   70     float x_q_2 = x_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R9,R0
//   71     float y_q_2 = y_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R10,R0
//   72     float z_q_2 = z_q * 2;
        MOVS     R0,#+1073741824
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R11,R0
//   73     //
//   74     float x_da = x_q*z_q_2 - w_q*y_q_2     - x_a;
        MOVS     R0,R6
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+72]
        BL       __aeabi_fsub
        STR      R0,[SP, #+24]
//   75     float y_da = y_q*z_q_2 + w_q*x_q_2     - y_a;
        MOVS     R0,R7
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R9
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+68]
        BL       __aeabi_fsub
        STR      R0,[SP, #+20]
//   76     float z_da = 1 - x_q*x_q_2 - y_q*y_q_2 - z_a;
        MOVS     R0,R6
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+64]
        BL       __aeabi_fsub
        STR      R0,[SP, #+36]
//   77     //
//   78     float x_dh = MIX_MAG_Y*(x_q*y_q_2 + w_q*z_q_2)     + MIX_MAG_Z*(x_q*z_q_2 - w_q*y_q_2)     - x_h;
        MOVS     R0,R6
        MOV      R1,R10
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R11
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+4]
        MOVS     R0,R6
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+60]
        BL       __aeabi_fsub
        STR      R0,[SP, #+16]
//   79     float y_dh = MIX_MAG_Y*(1 - x_q*x_q_2 - z_q*z_q_2) + MIX_MAG_Z*(y_q*z_q_2 + w_q*x_q_2)     - y_h;
        MOVS     R0,R6
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOV      R0,R8
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+4]
        MOVS     R0,R7
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R9
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+56]
        BL       __aeabi_fsub
        STR      R0,[SP, #+12]
//   80     float z_dh = MIX_MAG_Y*(y_q*z_q_2 - w_q*x_q_2)     + MIX_MAG_Z*(1 - x_q*x_q_2 - y_q*y_q_2) - z_h;
        MOVS     R0,R7
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R5
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+4]
        MOVS     R0,R6
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR.W    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+52]
        BL       __aeabi_fsub
        STR      R0,[SP, #+8]
//   81     //
//   82     float w_pf =  - x_da*y_q + y_da*x_q + x_dh*(MIX_MAG_Y*z_q - MIX_MAG_Z*y_q) \ 
//   83             + y_dh*MIX_MAG_Z*x_q - z_dh*MIX_MAG_Y*x_q;
        LDR      R0,[SP, #+24]
        EORS     R0,R0,#0x80000000
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+16]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+12]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+48]
//   84     float x_pf = x_da*z_q + y_da*w_q - z_da*x_q + x_dh*(MIX_MAG_Y*y_q + MIX_MAG_Z*z_q) \ 
//   85             + y_dh*(MIX_MAG_Z*w_q - MIX_MAG_Y*x_q) - z_dh*(MIX_MAG_Y*w_q + MIX_MAG_Z*x_q);
        LDR      R0,[SP, #+24]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOVS     R1,R5
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+36]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+16]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+12]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+4]
        BL       __aeabi_fsub
        STR      R0,[SP, #+44]
//   86     float y_pf = - x_da*w_q + y_da*z_q - z_da*y_q + x_dh*(MIX_MAG_Y*x_q - MIX_MAG_Z*w_q) \ 
//   87             + y_dh*MIX_MAG_Z*z_q + z_dh*(MIX_MAG_Y*z_q - MIX_MAG_Z*y_q);
        LDR      R0,[SP, #+24]
        EORS     R0,R0,#0x80000000
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOV      R1,R8
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+36]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+16]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+12]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+8]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+40]
//   88     float z_pf = x_da*x_q + y_da*y_q + x_dh*(MIX_MAG_Y*w_q + MIX_MAG_Z*x_q) \ 
//   89             + y_dh *(MIX_MAG_Z*y_q - MIX_MAG_Y*z_q) + z_dh*MIX_MAG_Y*y_q;
        LDR      R0,[SP, #+24]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+16]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+12]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+8]
        LDR.W    R0,??DataTable4
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
//   90     //
//   91     attitude->w -= w_pf * MIX_LONGTREM_FACTOR;
        LDR      R1,[SP, #+48]
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//   92     attitude->x -= x_pf * MIX_LONGTREM_FACTOR;
        LDR      R1,[SP, #+44]
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+4]
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//   93     attitude->y -= y_pf * MIX_LONGTREM_FACTOR;
        LDR      R1,[SP, #+40]
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+8]
        BL       __aeabi_fsub
        STR      R0,[R4, #+8]
//   94     attitude->z -= z_pf * MIX_LONGTREM_FACTOR;
        LDR      R1,[SP, #+0]
        LDR.W    R0,??DataTable5
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+12]
        BL       __aeabi_fsub
        STR      R0,[R4, #+12]
//   95     quaternion_normalize(attitude);    
        MOVS     R0,R4
        BL       quaternion_normalize
//   96 }
        ADD      SP,SP,#+84
        POP      {R4-R11,PC}      ;; return
//   97 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void FuseAccMagRotateMethod(quaternion * attitude, float acc[3], float mag[3])
//   99 {
FuseAccMagRotateMethod:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  100     quaternion_fromFourVectorRotation(attitude,acc,MIX_ACC_VECTOR,mag,MIX_MAG_VECTOR);
        LDR.W    R0,??DataTable5_1
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        LDR.W    R2,??DataTable5_2
        MOVS     R1,R5
        MOVS     R0,R4
        BL       quaternion_fromFourVectorRotation
//  101     //
//  102     //quaternion_fromTwoVectorRotation(attitude,acc,MIX_ACC_VECTOR);
//  103     //quaternion_fromTwoVectorRotation(attitude,mag,MIX_MAG_VECTOR);    
//  104 }
        POP      {R0,R1,R4-R6,PC}  ;; return
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void FuseAccSteepestDescentMethod(quaternion * attitude, float acc[3])
//  107 {
FuseAccSteepestDescentMethod:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+52
        MOVS     R4,R0
        MOVS     R5,R1
//  108     //
//  109     // 单位化加速度和磁场方向。
//  110     float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
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
        BL       math_rsqrt
        MOVS     R6,R0
//  111     float x_a = acc[0] * a_rsqrt;
        LDR      R0,[R5, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+48]
//  112     float y_a = acc[1] * a_rsqrt;
        LDR      R0,[R5, #+4]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+44]
//  113     float z_a = acc[2] * a_rsqrt;
        LDR      R0,[R5, #+8]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+40]
//  114     //
//  115     float w_q = attitude->w;
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+12]
//  116     float x_q = attitude->x;
        LDR      R0,[R4, #+4]
        STR      R0,[SP, #+8]
//  117     float y_q = attitude->y;
        LDR      R0,[R4, #+8]
        STR      R0,[SP, #+4]
//  118     float z_q = attitude->z;
        LDR      R0,[R4, #+12]
        STR      R0,[SP, #+16]
//  119     //
//  120     float x_q_2 = x_q * 2;
        LDR      R1,[SP, #+8]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        STR      R0,[SP, #+20]
//  121     float y_q_2 = y_q * 2;
        LDR      R1,[SP, #+4]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOVS     R7,R0
//  122     float z_q_2 = z_q * 2;
        LDR      R1,[SP, #+16]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOV      R8,R0
//  123     //
//  124     float x_da = x_q*z_q_2 - w_q*y_q_2     - x_a;
        LDR      R0,[SP, #+8]
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R0,[SP, #+12]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        LDR      R1,[SP, #+48]
        BL       __aeabi_fsub
        MOV      R9,R0
//  125     float y_da = y_q*z_q_2 + w_q*x_q_2     - y_a;
        LDR      R0,[SP, #+4]
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R10,R0
        LDR      R1,[SP, #+12]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        MOV      R1,R10
        BL       __aeabi_fadd
        LDR      R1,[SP, #+44]
        BL       __aeabi_fsub
        MOV      R10,R0
//  126     float z_da = 1 - x_q*x_q_2 - y_q*y_q_2 - z_a;
        LDR      R1,[SP, #+8]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R11,R0
        LDR      R0,[SP, #+4]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        LDR      R1,[SP, #+40]
        BL       __aeabi_fsub
        MOV      R11,R0
//  127     //
//  128     float w_pf =  - x_da*y_q + y_da*x_q;
        MOV      R1,R9
        EORS     R1,R1,#0x80000000
        LDR      R0,[SP, #+4]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOV      R1,R10
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+36]
//  129     float x_pf = x_da*z_q + y_da*w_q - z_da*x_q;
        LDR      R0,[SP, #+16]
        MOV      R1,R9
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+12]
        MOV      R1,R10
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+32]
//  130     float y_pf = - x_da*w_q + y_da*z_q - z_da*y_q;
        MOV      R1,R9
        EORS     R1,R1,#0x80000000
        LDR      R0,[SP, #+12]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+16]
        MOV      R1,R10
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+4]
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+28]
//  131     float z_pf = x_da*x_q + y_da*y_q;
        LDR      R0,[SP, #+8]
        MOV      R1,R9
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+4]
        MOV      R1,R10
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+24]
//  132     //
//  133     const float factor = 0.005;
        LDR.W    R0,??DataTable5_3  ;; 0x3ba3d70a
        STR      R0,[SP, #+0]
//  134     attitude->w -= w_pf * factor;
        LDR      R1,[SP, #+36]
        LDR      R0,[SP, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//  135     attitude->x -= x_pf * factor;
        LDR      R1,[SP, #+32]
        LDR      R0,[SP, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+4]
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//  136     attitude->y -= y_pf * factor;
        LDR      R1,[SP, #+28]
        LDR      R0,[SP, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+8]
        BL       __aeabi_fsub
        STR      R0,[R4, #+8]
//  137     attitude->z -= z_pf * factor;
        LDR      R1,[SP, #+24]
        LDR      R0,[SP, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[R4, #+12]
        BL       __aeabi_fsub
        STR      R0,[R4, #+12]
//  138     quaternion_normalize(attitude);    
        MOVS     R0,R4
        BL       quaternion_normalize
//  139 }
        ADD      SP,SP,#+52
        POP      {R4-R11,PC}      ;; return
//  140 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 void FuseGyrAccCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float interval)
//  142 {
FuseGyrAccCrossMethod:
        PUSH     {R1,R3-R11,LR}
        SUB      SP,SP,#+68
        MOVS     R4,R0
        MOVS     R5,R2
//  143     float FACTOR = 0.001;
        LDR.W    R0,??DataTable5_4  ;; 0x3a83126f
        STR      R0,[SP, #+12]
//  144 
//  145     float w_q = attitude->w;
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+4]
//  146     float x_q = attitude->x;
        LDR      R6,[R4, #+4]
//  147     float y_q = attitude->y;
        LDR      R7,[R4, #+8]
//  148     float z_q = attitude->z;
        LDR      R0,[R4, #+12]
        STR      R0,[SP, #+8]
//  149     float x_q_2 = x_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+48]
//  150     float y_q_2 = y_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+44]
//  151     float z_q_2 = z_q * 2;
        LDR      R1,[SP, #+8]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        STR      R0,[SP, #+40]
//  152     //
//  153     // 加速度计的读数，单位化。@加速度测量值,地球表面三轴向量和即为重力加速度
//  154     float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
        LDR      R1,[R5, #+0]
        LDR      R0,[R5, #+0]
        BL       __aeabi_fmul
        MOV      R8,R0
        LDR      R1,[R5, #+4]
        LDR      R0,[R5, #+4]
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
        LDR      R1,[R5, #+8]
        LDR      R0,[R5, #+8]
        BL       __aeabi_fmul
        MOV      R1,R8
        BL       __aeabi_fadd
        BL       math_rsqrt
        MOV      R8,R0
//  155     float x_aa = acc[0] * a_rsqrt;
        LDR      R0,[R5, #+0]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+36]
//  156     float y_aa = acc[1] * a_rsqrt;
        LDR      R0,[R5, #+4]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+32]
//  157     float z_aa = acc[2] * a_rsqrt;
        LDR      R0,[R5, #+8]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+28]
//  158     //
//  159     // 载体坐标下的重力加速度常量，单位化。@姿态矩阵最后一行
//  160     float x_ac = x_q*z_q_2 - w_q*y_q_2;
        LDR      R0,[SP, #+40]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+44]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        STR      R0,[SP, #+24]
//  161     float y_ac = y_q*z_q_2 + w_q*x_q_2;
        LDR      R0,[SP, #+40]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+48]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        STR      R0,[SP, #+20]
//  162     float z_ac = 1 - x_q*x_q_2 - y_q*y_q_2;
        LDR      R0,[SP, #+48]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R9,R0
        LDR      R0,[SP, #+44]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        STR      R0,[SP, #+16]
//  163     //
//  164     // 测量值与常量的叉积。@求得的值即为陀螺仪偏移误差
//  165 	//@陀螺仪与加速度计测量姿态的误差
//  166     float x_ca = y_aa * z_ac - z_aa * y_ac;
        LDR      R1,[SP, #+32]
        LDR      R0,[SP, #+16]
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[SP, #+28]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        STR      R0,[SP, #+60]
//  167     float y_ca = z_aa * x_ac - x_aa * z_ac;
        LDR      R1,[SP, #+28]
        LDR      R0,[SP, #+24]
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[SP, #+36]
        LDR      R0,[SP, #+16]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        STR      R0,[SP, #+56]
//  168     float z_ca = x_aa * y_ac - y_aa * x_ac;
        LDR      R1,[SP, #+36]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        MOV      R9,R0
        LDR      R1,[SP, #+32]
        LDR      R0,[SP, #+24]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fsub
        STR      R0,[SP, #+52]
//  169     //
//  170     // 构造增量旋转。@数据融合得到的角度增量
//  171     float delta_x = (gyr[0] * interval / 2 + x_ca * FACTOR);
        LDR      R0,[SP, #+68]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+72]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOV      R9,R0
        LDR      R1,[SP, #+60]
        LDR      R0,[SP, #+12]
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fadd
        MOV      R9,R0
//  172     float delta_y = (gyr[1] * interval / 2 + y_ca * FACTOR);
        LDR      R0,[SP, #+68]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+72]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOV      R10,R0
        LDR      R1,[SP, #+56]
        LDR      R0,[SP, #+12]
        BL       __aeabi_fmul
        MOV      R1,R10
        BL       __aeabi_fadd
        MOV      R10,R0
//  173     float delta_z = (gyr[2] * interval / 2 + z_ca * FACTOR);
        LDR      R0,[SP, #+68]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+72]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        MOV      R11,R0
        LDR      R1,[SP, #+52]
        LDR      R0,[SP, #+12]
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
//  174     //
//  175     // 融合，四元数乘法。@更新姿态
//  176     attitude->w = w_q         - x_q*delta_x - y_q*delta_y - z_q*delta_z;
        MOVS     R0,R6
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+4]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+0]
//  177     attitude->x = w_q*delta_x + x_q         + y_q*delta_z - z_q*delta_y;
        LDR      R0,[SP, #+4]
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R11
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[R4, #+4]
//  178     attitude->y = w_q*delta_y - x_q*delta_z + y_q         + z_q*delta_x;
        LDR      R0,[SP, #+4]
        MOV      R1,R10
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        MOV      R1,R11
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        MOVS     R1,R7
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOV      R1,R9
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[R4, #+8]
//  179     attitude->z = w_q*delta_z + x_q*delta_y - y_q*delta_x + z_q;
        LDR      R0,[SP, #+4]
        MOV      R1,R11
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        MOV      R1,R10
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+8]
        BL       __aeabi_fadd
        STR      R0,[R4, #+12]
//  180 
//  181     quaternion_normalize(attitude);	 //@四元数单位化，该函数无返回值
        MOVS     R0,R4
        BL       quaternion_normalize
//  182 }
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 void FuseGyrAccMagCrossMethod(quaternion * attitude, float gyr[3], float acc[3], float mag[3], float interval)
//  185 {
FuseGyrAccMagCrossMethod:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+96
        MOVS     R4,R3
//  186     static float FACTOR = 0.001;
//  187     //
//  188     float w_q = attitude->w;
        LDR      R0,[SP, #+96]
        LDR      R5,[R0, #+0]
//  189     float x_q = attitude->x;
        LDR      R0,[SP, #+96]
        LDR      R6,[R0, #+4]
//  190     float y_q = attitude->y;
        LDR      R0,[SP, #+96]
        LDR      R7,[R0, #+8]
//  191     float z_q = attitude->z;
        LDR      R0,[SP, #+96]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+4]
//  192     float x_q_2 = x_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOV      R8,R0
//  193     float y_q_2 = y_q * 2;
        MOVS     R0,#+1073741824
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOV      R9,R0
//  194     float z_q_2 = z_q * 2;
        LDR      R1,[SP, #+4]
        MOVS     R0,#+1073741824
        BL       __aeabi_fmul
        MOV      R10,R0
//  195     //
//  196     // 单位化加速度计的读数。
//  197     float a_rsqrt = math_rsqrt(acc[0]*acc[0]+acc[1]*acc[1]+acc[2]*acc[2]);
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+104]
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+104]
        LDR      R0,[R0, #+4]
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+104]
        LDR      R0,[R0, #+8]
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        BL       math_rsqrt
        STR      R0,[SP, #+24]
//  198     float x_aa = acc[0] * a_rsqrt;
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+24]
        BL       __aeabi_fmul
        STR      R0,[SP, #+80]
//  199     float y_aa = acc[1] * a_rsqrt;
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+24]
        BL       __aeabi_fmul
        STR      R0,[SP, #+76]
//  200     float z_aa = acc[2] * a_rsqrt;
        LDR      R0,[SP, #+104]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+24]
        BL       __aeabi_fmul
        STR      R0,[SP, #+72]
//  201     //
//  202     // 单位化罗盘的读数。
//  203     float h_rsqrt = math_rsqrt(mag[0]*mag[0]+mag[1]*mag[1]+mag[2]*mag[2]);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+0]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[R4, #+4]
        LDR      R0,[R4, #+4]
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        MOV      R11,R0
        LDR      R1,[R4, #+8]
        LDR      R0,[R4, #+8]
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        BL       math_rsqrt
        STR      R0,[SP, #+20]
//  204     float x_hh = mag[0] * h_rsqrt;
        LDR      R1,[R4, #+0]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        STR      R0,[SP, #+68]
//  205     float y_hh = mag[1] * h_rsqrt;
        LDR      R1,[R4, #+4]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        STR      R0,[SP, #+64]
//  206     float z_hh = mag[2] * h_rsqrt;
        LDR      R1,[R4, #+8]
        LDR      R0,[SP, #+20]
        BL       __aeabi_fmul
        STR      R0,[SP, #+60]
//  207     //
//  208     // 载体坐标下的重力加速度常量，已单位化。
//  209     float x_ac = x_q*z_q_2 - w_q*y_q_2;
        MOVS     R0,R6
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+56]
//  210     float y_ac = y_q*z_q_2 + w_q*x_q_2;
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        STR      R0,[SP, #+52]
//  211     float z_ac = 1 - x_q*x_q_2 - y_q*y_q_2;
        MOVS     R0,R6
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R11,R0
        MOVS     R0,R7
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+48]
//  212     //
//  213     // 载体坐标下的地磁场常量，已单位化。
//  214     float x_hc = MIX_MAG_Y*(x_q*y_q_2 + w_q*z_q_2)     + MIX_MAG_Z*(x_q*z_q_2 - w_q*y_q_2)    ;
        MOVS     R0,R6
        MOV      R1,R9
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+44]
//  215     float y_hc = MIX_MAG_Y*(1 - x_q*x_q_2 - z_q*z_q_2) + MIX_MAG_Z*(y_q*z_q_2 + w_q*x_q_2)    ;
        MOVS     R0,R6
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R11,R0
        LDR      R0,[SP, #+4]
        MOV      R1,R10
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R1,R11
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+40]
//  216     float z_hc = MIX_MAG_Y*(y_q*z_q_2 - w_q*x_q_2)     + MIX_MAG_Z*(1 - x_q*x_q_2 - y_q*y_q_2);
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fmul
        MOV      R11,R0
        MOVS     R0,R5
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable4
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOVS     R0,R6
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,#+1065353216
        BL       __aeabi_fsub
        MOV      R11,R0
        MOVS     R0,R7
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+36]
//  217     //
//  218     // 测量值与常量的叉积。@求得的值即为陀螺仪偏移误差
//  219 	//@陀螺仪与加速度计测量姿态的误差
//  220     float x_ca = y_aa * z_ac - z_aa * y_ac;
        LDR      R1,[SP, #+76]
        LDR      R0,[SP, #+48]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+72]
        LDR      R0,[SP, #+52]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+92]
//  221     float y_ca = z_aa * x_ac - x_aa * z_ac;
        LDR      R1,[SP, #+72]
        LDR      R0,[SP, #+56]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+80]
        LDR      R0,[SP, #+48]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+88]
//  222     float z_ca = x_aa * y_ac - y_aa * x_ac;
        LDR      R1,[SP, #+80]
        LDR      R0,[SP, #+52]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+76]
        LDR      R0,[SP, #+56]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+84]
//  223 	//@陀螺仪与罗盘测量姿态的误差
//  224     float x_ch = y_hh * z_hc - z_hh * y_hc;
        LDR      R1,[SP, #+64]
        LDR      R0,[SP, #+36]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+60]
        LDR      R0,[SP, #+40]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+32]
//  225     float y_ch = z_hh * x_hc - x_hh * z_hc;
        LDR      R1,[SP, #+60]
        LDR      R0,[SP, #+44]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+68]
        LDR      R0,[SP, #+36]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        STR      R0,[SP, #+28]
//  226     float z_ch = x_hh * y_hc - y_hh * x_hc;
        LDR      R1,[SP, #+68]
        LDR      R0,[SP, #+40]
        BL       __aeabi_fmul
        MOV      R11,R0
        LDR      R1,[SP, #+64]
        LDR      R0,[SP, #+44]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOV      R0,R11
        BL       __aeabi_fsub
        MOV      R11,R0
//  227     /////////////////////////////////////////////
//  228     x_ch = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
//  229     y_ch = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//  230     z_ch = z_ch;                                 // 舍弃X轴和Y轴的旋转，只对Z轴的旋转积分
//  231     /////////////////////////////////////////////
//  232     //
//  233     // 构造增量旋转。 @数据融合得到角度增量
//  234     float delta_x = gyr[0] * interval / 2 + (x_ca + x_ch) * FACTOR;
        LDR      R0,[SP, #+100]
        LDR      R1,[R0, #+0]
        LDR      R0,[SP, #+144]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+92]
        LDR      R0,[SP, #+32]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+16]
//  235     float delta_y = gyr[1] * interval / 2 + (y_ca + y_ch) * FACTOR;
        LDR      R0,[SP, #+100]
        LDR      R1,[R0, #+4]
        LDR      R0,[SP, #+144]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+88]
        LDR      R0,[SP, #+28]
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+12]
//  236     float delta_z = gyr[2] * interval / 2 + (z_ca + z_ch) * FACTOR;
        LDR      R0,[SP, #+100]
        LDR      R1,[R0, #+8]
        LDR      R0,[SP, #+144]
        BL       __aeabi_fmul
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+84]
        MOV      R1,R11
        BL       __aeabi_fadd
        LDR.W    R1,??DataTable5_5
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+8]
//  237     //
//  238     // 融合，四元数乘法。  @更新姿态
//  239     attitude->w = w_q         - x_q*delta_x - y_q*delta_y - z_q*delta_z;
        LDR      R0,[SP, #+16]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R5
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+12]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+8]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+96]
        STR      R0,[R1, #+0]
//  240     attitude->x = w_q*delta_x + x_q         + y_q*delta_z - z_q*delta_y;
        LDR      R0,[SP, #+16]
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOVS     R1,R7
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+12]
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+96]
        STR      R0,[R1, #+4]
//  241     attitude->y = w_q*delta_y - x_q*delta_z + y_q         + z_q*delta_x;
        LDR      R0,[SP, #+12]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+8]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        MOVS     R1,R7
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R1,[SP, #+4]
        LDR      R0,[SP, #+16]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+96]
        STR      R0,[R1, #+8]
//  242     attitude->z = w_q*delta_z + x_q*delta_y - y_q*delta_x + z_q;
        LDR      R0,[SP, #+8]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+12]
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+16]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+96]
        STR      R0,[R1, #+12]
//  243     quaternion_normalize(attitude);	//@四元数单位化，该函数无返回值    
        LDR      R0,[SP, #+96]
        BL       quaternion_normalize
//  244 }
        ADD      SP,SP,#+108
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     MIX_MAG_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     MIX_MAG_Z

        SECTION `.data`:DATA:REORDER:NOROOT(2)
??FACTOR:
        DATA
        DC32 3A83126FH
//  245 
//  246 ////////////////////////////////////////////////////////////////////////////////
//  247 #define Kp 10.0f                        // proportional gain governs rate of convergence to accelerometer/magnetometer
//  248 #define Ki 0.008f                          // integral gain governs rate of convergence of gyroscope biases
//  249 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  250 float q0 = 1, q1 = 0, q2 = 0, q3 = 0;    // quaternion elements representing the estimated orientation
q0:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  251 float exInt = 0, eyInt = 0, ezInt = 0;    // scaled integral error
exInt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
eyInt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ezInt:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  252 void IMUupdate(quaternion * attitude, float gyr[3], float acc[3], float interval)
//  253 {
IMUupdate:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+60
//  254   float gx, gy, gz;
//  255   float ax, ay, az;
//  256   float halfT;
//  257   gx = gyr[0];
        LDR      R0,[SP, #+64]
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//  258   gy = gyr[1];
        LDR      R0,[SP, #+64]
        LDR      R0,[R0, #+4]
        MOVS     R5,R0
//  259   gz = gyr[2];
        LDR      R0,[SP, #+64]
        LDR      R0,[R0, #+8]
        MOVS     R6,R0
//  260   ax = acc[0];
        LDR      R0,[SP, #+68]
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
//  261   ay = acc[1];
        LDR      R0,[SP, #+68]
        LDR      R0,[R0, #+4]
        MOV      R8,R0
//  262   az = acc[2];
        LDR      R0,[SP, #+68]
        LDR      R0,[R0, #+8]
        MOV      R9,R0
//  263   halfT = interval / 2;
        LDR      R0,[SP, #+72]
        MOVS     R1,#+1073741824
        BL       __aeabi_fdiv
        STR      R0,[SP, #+4]
//  264   
//  265   float norm;
//  266   //float hx, hy, hz, bx, bz;
//  267   float vx, vy, vz;// wx, wy, wz;
//  268   float ex, ey, ez;
//  269 
//  270   // 把需要使用的值事先计算好
//  271   float q0q0 = q0*q0;
        LDR.W    R0,??DataTable5_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+56]
//  272   float q0q1 = q0*q1;
        LDR.W    R0,??DataTable5_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+52]
//  273   float q0q2 = q0*q2;
        LDR.W    R0,??DataTable5_6
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+48]
//  274   //float q0q3 = q0*q3;
//  275   float q1q1 = q1*q1;
        LDR.W    R0,??DataTable5_7
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+44]
//  276   //float q1q2 = q1*q2;
//  277   float q1q3 = q1*q3;
        LDR.W    R0,??DataTable5_7
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+40]
//  278   float q2q2 = q2*q2;
        LDR.W    R0,??DataTable5_8
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+36]
//  279   float q2q3 = q2*q3;
        LDR.W    R0,??DataTable5_8
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+32]
//  280   float q3q3 = q3*q3;
        LDR.N    R0,??DataTable5_9
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R11,R0
//  281 	
//  282   if(ax*ay*az==0)
        MOVS     R0,R7
        MOV      R1,R8
        BL       __aeabi_fmul
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,#+0
        BL       __aeabi_cfcmpeq
        BEQ.W    ??IMUupdate_0
//  283     return;
//  284 		
//  285   norm = sqrt(ax*ax + ay*ay + az*az);       //accêy?Y1éò??ˉ
??IMUupdate_1:
        MOVS     R0,R7
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R8
        MOV      R1,R8
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        MOV      R0,R9
        MOV      R1,R9
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        BL       sqrt
        BL       __aeabi_d2f
        MOV      R10,R0
//  286   ax = ax /norm;
        MOVS     R0,R7
        MOV      R1,R10
        BL       __aeabi_fdiv
        MOVS     R7,R0
//  287   ay = ay / norm;
        MOV      R0,R8
        MOV      R1,R10
        BL       __aeabi_fdiv
        MOV      R8,R0
//  288   az = az / norm;
        MOV      R0,R9
        MOV      R1,R10
        BL       __aeabi_fdiv
        MOV      R9,R0
//  289 
//  290   // estimated direction of gravity and flux (v and w)              1à????á|·??òoíá÷á?/±??¨
//  291   vx = 2*(q1q3 - q0q2);												//???a???Dxyzμ?±íê?
        LDR      R0,[SP, #+40]
        LDR      R1,[SP, #+48]
        BL       __aeabi_fsub
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        STR      R0,[SP, #+28]
//  292   vy = 2*(q0q1 + q2q3);
        LDR      R1,[SP, #+52]
        LDR      R0,[SP, #+32]
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        STR      R0,[SP, #+24]
//  293   vz = q0q0 - q1q1 - q2q2 + q3q3 ;
        LDR      R0,[SP, #+56]
        LDR      R1,[SP, #+44]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+36]
        BL       __aeabi_fsub
        MOV      R1,R11
        BL       __aeabi_fadd
        STR      R0,[SP, #+20]
//  294 
//  295   // error is sum of cross product between reference direction of fields and direction measured by sensors
//  296   ex = (ay*vz - az*vy) ;                           					 //?òá?ía?y?ú?à??μ?μ?2?·??íê??ó2?
        LDR      R0,[SP, #+20]
        MOV      R1,R8
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+24]
        MOV      R1,R9
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+16]
//  297   ey = (az*vx - ax*vz) ;
        LDR      R0,[SP, #+28]
        MOV      R1,R9
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+20]
        MOVS     R1,R7
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+12]
//  298   ez = (ax*vy - ay*vx) ;
        LDR      R0,[SP, #+24]
        MOVS     R1,R7
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+28]
        MOV      R1,R8
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+8]
//  299 
//  300   exInt = exInt + ex * Ki;								  //???ó2???DD?y·?
        LDR      R1,[SP, #+16]
        LDR.N    R0,??DataTable5_10  ;; 0x3c03126f
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_11
        STR      R0,[R1, #+0]
//  301   eyInt = eyInt + ey * Ki;
        LDR      R1,[SP, #+12]
        LDR.N    R0,??DataTable5_10  ;; 0x3c03126f
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_12
        STR      R0,[R1, #+0]
//  302   ezInt = ezInt + ez * Ki;
        LDR      R1,[SP, #+8]
        LDR.N    R0,??DataTable5_10  ;; 0x3c03126f
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_13
        STR      R0,[R1, #+0]
//  303 
//  304   // adjusted gyroscope measurements
//  305   gx = gx + Kp*ex + exInt;					   							//???ó2?PIoó213￥μ?íó?Yò?￡??′213￥á?μ??ˉò?
        LDR      R1,[SP, #+16]
        LDR.N    R0,??DataTable5_14  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R1,R4
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_11
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R4,R0
//  306   gy = gy + Kp*ey + eyInt;
        LDR      R1,[SP, #+12]
        LDR.N    R0,??DataTable5_14  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R1,R5
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_12
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R5,R0
//  307   gz = gz + Kp*ez + ezInt;				   							//?aà?μ?gzóéóú??óD1?2a????DD???y?á2úéú?ˉò?￡?±í??3?à′μ??íê??y·?×????ò×???
        LDR      R1,[SP, #+8]
        LDR.N    R0,??DataTable5_14  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R1,R6
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_13
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        MOVS     R6,R0
//  308 
//  309   // integrate quaternion rate and normalise						   //???a??μ??￠·?·?3ì
//  310   q0 = q0 + (-q1*gx - q2*gy - q3*gz)*halfT;
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        EORS     R0,R0,#0x80000000
        MOVS     R1,R4
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_6
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  311   q1 = q1 + (q0*gx + q2*gz - q3*gy)*halfT;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_7
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//  312   q2 = q2 + (q0*gy - q1*gz + q3*gx)*halfT;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  313   q3 = q3 + (q0*gz + q1*gy - q2*gx)*halfT;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        MOVS     R1,R6
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        MOVS     R1,R5
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        MOVS     R1,R4
        BL       __aeabi_fmul
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fsub
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable5_9
        LDR      R1,[R1, #+0]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  314 
//  315   // normalise quaternion
//  316   norm = sqrt(q0*q0 + q1*q1 + q2*q2 + q3*q3);
        LDR.N    R0,??DataTable5_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_7
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR      R1,[SP, #+0]
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        BL       sqrt
        BL       __aeabi_d2f
        MOV      R10,R0
//  317   q0 = q0 / norm;
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        MOV      R1,R10
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  318   q1 = q1 / norm;
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        MOV      R1,R10
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//  319   q2 = q2 / norm;
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        MOV      R1,R10
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable5_8
        STR      R0,[R1, #+0]
//  320   q3 = q3 / norm;
        LDR.N    R0,??DataTable5_9
        LDR      R0,[R0, #+0]
        MOV      R1,R10
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable5_9
        STR      R0,[R1, #+0]
//  321   
//  322     attitude->w = q0;
        LDR      R0,[SP, #+60]
        LDR.N    R1,??DataTable5_6
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  323     attitude->x = q1;
        LDR      R0,[SP, #+60]
        LDR.N    R1,??DataTable5_7
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
//  324     attitude->y = q2;
        LDR      R0,[SP, #+60]
        LDR.N    R1,??DataTable5_8
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
//  325     attitude->z = q3;
        LDR      R0,[SP, #+60]
        LDR.N    R1,??DataTable5_9
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
//  326 
//  327 //  Q_ANGLE.Z = GYRO_I.Z;//atan2(2 * q1 * q2 + 2 * q0 * q3, -2 * q2*q2 - 2 * q3* q3 + 1)* 57.3; // yaw
//  328 //  Q_ANGLE.Y = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3; // pitch
//  329 //  Q_ANGLE.X = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3; // roll
//  330 }
??IMUupdate_0:
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     MIX_LONGTREM_FACTOR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     MIX_MAG_VECTOR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     MIX_ACC_VECTOR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x3ba3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x3a83126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     ??FACTOR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     q0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     q1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     q2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     q3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x3c03126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     exInt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     eyInt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     ezInt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x41200000

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
//    24 bytes in section .bss
//     8 bytes in section .data
//    36 bytes in section .rodata
// 5 048 bytes in section .text
// 
// 5 048 bytes of CODE  memory
//    36 bytes of CONST memory
//    32 bytes of DATA  memory
//
//Errors: none
//Warnings: none
