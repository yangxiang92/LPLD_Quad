///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:18 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\attitude.c                                   /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Algorithm\attitude.c -D LPLD_K60 -lCN                  /
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
//                    MINE\List\attitude.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME attitude

        #define SHT_PROGBITS 0x1

        EXTERN AK8975C_GetCalibratedMag
        EXTERN AccFilterGetCurrent
        EXTERN AccFilterInput
        EXTERN FuseGyrAccCrossMethod
        EXTERN FuseGyrAccMagCrossMethod
        EXTERN GyrFilterGetCurrent
        EXTERN GyrFilterInput
        EXTERN InitAccFilter
        EXTERN InitGyrFilter
        EXTERN InitMagFilter
        EXTERN MPU6050_GetCalibratedAcc
        EXTERN MPU6050_GetCalibratedGyr
        EXTERN MagFilterGetCurrent
        EXTERN MagFilterInput
        EXTERN g_sQuadSystemFlag
        EXTERN quaternion_converQuaternionToYawPitchRoll
        EXTERN quaternion_loadIdentity

        PUBLIC AttitudeInit
        PUBLIC AttitudeInputAcc
        PUBLIC AttitudeInputGyr
        PUBLIC AttitudeInputMag
        PUBLIC AttitudeMixGyrAcc
        PUBLIC AttitudeMixGyrAccMag
        PUBLIC GetAttitude
        PUBLIC GetEulerAttitude
        PUBLIC InitEulerAttitude
        PUBLIC RefreshAttitude

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Algorithm\attitude.c
//    1 /****************************************************************************** 
//    2  *       attitude.c ----- The attitude Caculation          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  attitude.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/7 11:20:46                                                       *
//   10  ******************************************************************************/
//   11 #include "attitude.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static quaternion s_sAttitude;
s_sAttitude:
        DS8 16
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 static EulerAttitudeTypeDef s_sEulerAttitude;
s_sEulerAttitude:
        DS8 12
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void AttitudeInit(void)
//   18 {
AttitudeInit:
        PUSH     {R7,LR}
//   19     InitAccFilter();
        BL       InitAccFilter
//   20     InitGyrFilter();
        BL       InitGyrFilter
//   21     InitMagFilter();
        BL       InitMagFilter
//   22 
//   23     InitEulerAttitude();
        BL       InitEulerAttitude
//   24 
//   25     quaternion_loadIdentity(&s_sAttitude);
        LDR.N    R0,??DataTable6
        BL       quaternion_loadIdentity
//   26 }
        POP      {R0,PC}          ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 quaternion * GetAttitude(void)
//   29 {
//   30     return & s_sAttitude;
GetAttitude:
        LDR.N    R0,??DataTable6
        BX       LR               ;; return
//   31 }
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void AttitudeInputAcc(float acc[3])
//   34 {
AttitudeInputAcc:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   35     AccFilterInput(acc);
        MOVS     R0,R4
        BL       AccFilterInput
//   36 }
        POP      {R4,PC}          ;; return
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void AttitudeInputGyr(float gyr[3])
//   39 {
AttitudeInputGyr:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   40     GyrFilterInput(gyr);
        MOVS     R0,R4
        BL       GyrFilterInput
//   41 }
        POP      {R4,PC}          ;; return
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void AttitudeInputMag(float mag[3])
//   44 {
AttitudeInputMag:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   45     MagFilterInput(mag);
        MOVS     R0,R4
        BL       MagFilterInput
//   46 }
        POP      {R4,PC}          ;; return
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void AttitudeMixGyrAccMag(void)
//   49 {
AttitudeMixGyrAccMag:
        PUSH     {R3-R5,LR}
//   50     FuseGyrAccMagCrossMethod(&s_sAttitude, GyrFilterGetCurrent(), AccFilterGetCurrent(), MagFilterGetCurrent(), PROGRAM_PERIOD_MS * 0.001f);
        BL       MagFilterGetCurrent
        MOVS     R4,R0
        BL       AccFilterGetCurrent
        MOVS     R5,R0
        BL       GyrFilterGetCurrent
        LDR.N    R1,??DataTable6_1  ;; 0x3b83126f
        STR      R1,[SP, #+0]
        MOVS     R3,R4
        MOVS     R2,R5
        MOVS     R1,R0
        LDR.N    R0,??DataTable6
        BL       FuseGyrAccMagCrossMethod
//   51 }
        POP      {R0,R4,R5,PC}    ;; return
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void AttitudeMixGyrAcc(void)
//   54 {
AttitudeMixGyrAcc:
        PUSH     {R4,LR}
//   55     FuseGyrAccCrossMethod(&s_sAttitude, GyrFilterGetCurrent(), AccFilterGetCurrent(), PROGRAM_PERIOD_MS * 0.001f);
        BL       AccFilterGetCurrent
        MOVS     R4,R0
        BL       GyrFilterGetCurrent
        LDR.N    R3,??DataTable6_1  ;; 0x3b83126f
        MOVS     R2,R4
        MOVS     R1,R0
        LDR.N    R0,??DataTable6
        BL       FuseGyrAccCrossMethod
//   56 }
        POP      {R4,PC}          ;; return
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void InitEulerAttitude(void)
//   59 {
//   60     s_sEulerAttitude.yaw = 0;
InitEulerAttitude:
        LDR.N    R0,??DataTable6_2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   61     s_sEulerAttitude.pitch = 0;
        LDR.N    R0,??DataTable6_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   62     s_sEulerAttitude.roll = 0;
        LDR.N    R0,??DataTable6_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   63 }
        BX       LR               ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 EulerAttitudeTypeDef * GetEulerAttitude(void)
//   66 {
//   67     return & s_sEulerAttitude;
GetEulerAttitude:
        LDR.N    R0,??DataTable6_2
        BX       LR               ;; return
//   68 }
//   69 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void RefreshAttitude(void)
//   71 {
RefreshAttitude:
        PUSH     {LR}
        SUB      SP,SP,#+52
//   72     float acc[3], gyr[3], mag[3];
//   73     float ypr[3];
//   74 
//   75     MPU6050_GetCalibratedAcc(acc);
        ADD      R0,SP,#+40
        BL       MPU6050_GetCalibratedAcc
//   76     MPU6050_GetCalibratedGyr(gyr);
        ADD      R0,SP,#+28
        BL       MPU6050_GetCalibratedGyr
//   77     if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??RefreshAttitude_0
//   78     {
//   79         AK8975C_GetCalibratedMag(mag);
        ADD      R0,SP,#+16
        BL       AK8975C_GetCalibratedMag
//   80     }
//   81 
//   82     AttitudeInputAcc(acc);
??RefreshAttitude_0:
        ADD      R0,SP,#+40
        BL       AttitudeInputAcc
//   83     AttitudeInputGyr(gyr);
        ADD      R0,SP,#+28
        BL       AttitudeInputGyr
//   84     if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??RefreshAttitude_1
//   85     {
//   86         mag[0] = - mag[0];                       // 把坐标系转换成从下面观察的，这样一来才跟姿态结算出来的方向是一致的。 
        LDR      R0,[SP, #+16]
        EORS     R0,R0,#0x80000000
        STR      R0,[SP, #+16]
//   87         AttitudeInputMag(mag);
        ADD      R0,SP,#+16
        BL       AttitudeInputMag
//   88     }
//   89 
//   90     if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
??RefreshAttitude_1:
        LDR.N    R0,??DataTable6_3
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??RefreshAttitude_2
//   91     {
//   92         AttitudeMixGyrAccMag();
        BL       AttitudeMixGyrAccMag
        B.N      ??RefreshAttitude_3
//   93     }
//   94     else
//   95     {
//   96         AttitudeMixGyrAcc();
??RefreshAttitude_2:
        BL       AttitudeMixGyrAcc
//   97     }
//   98     
//   99     quaternion_converQuaternionToYawPitchRoll(*GetAttitude(), ypr);
??RefreshAttitude_3:
        BL       GetAttitude
        ADD      R1,SP,#+4
        STR      R1,[SP, #+0]
        LDM      R0,{R0-R3}
        BL       quaternion_converQuaternionToYawPitchRoll
//  100 
//  101     s_sEulerAttitude.yaw = ypr[0];
        LDR.N    R0,??DataTable6_2
        LDR      R1,[SP, #+4]
        STR      R1,[R0, #+0]
//  102     s_sEulerAttitude.pitch = ypr[1];
        LDR.N    R0,??DataTable6_2
        LDR      R1,[SP, #+8]
        STR      R1,[R0, #+4]
//  103     s_sEulerAttitude.roll = ypr[2];
        LDR.N    R0,??DataTable6_2
        LDR      R1,[SP, #+12]
        STR      R1,[R0, #+8]
//  104 }
        ADD      SP,SP,#+52
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     s_sAttitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x3b83126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     s_sEulerAttitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     g_sQuadSystemFlag

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
//  28 bytes in section .bss
// 286 bytes in section .text
// 
// 286 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: none
