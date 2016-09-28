///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:14 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\MPU6050data.c                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\MPU6050data.c -D LPLD_K60 -lCN           /
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
//                    MINE\List\MPU6050data.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MPU6050data

        #define SHT_PROGBITS 0x1

        EXTERN MPU6050_GetRawData
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN g_i16AccOffset
        EXTERN g_i16GyrOffset
        EXTERN g_sQuadSystemFlag

        PUBLIC MPU6050_GetCalibratedAcc
        PUBLIC MPU6050_GetCalibratedGyr
        PUBLIC MPU6050_InitRawData
        PUBLIC MPU6050_RefreshRawData
        PUBLIC g_f32AccGain
        PUBLIC g_f32GyrGain
        PUBLIC g_sMPU6050RawData

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\MPU6050data.c
//    1 /****************************************************************************** 
//    2  *       MPU6050data.c ----- The data process of the MPU6050          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MPU6050data.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/7 8:52:25                                                       *
//   10  ******************************************************************************/
//   11 #include "MPU6050data.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 MPU6050_RawDataType g_sMPU6050RawData;
g_sMPU6050RawData:
        DS8 16

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 float g_f32AccGain[3] = {0.0005981445f, 0.0005981445f, 0.0005981445f};
g_f32AccGain:
        DATA
        DC32 3A1CCCCCH, 3A1CCCCCH, 3A1CCCCCH

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   15 float g_f32GyrGain[3] = {0.001065264f, 0.001065264f, 0.001065264f};
g_f32GyrGain:
        DATA
        DC32 3A8BA054H, 3A8BA054H, 3A8BA054H
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void MPU6050_InitRawData(void)
//   18 {
//   19     int i = 0;
MPU6050_InitRawData:
        MOVS     R0,#+0
//   20     for(i = 0; i < 3; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??MPU6050_InitRawData_0:
        CMP      R0,#+3
        BGE.N    ??MPU6050_InitRawData_1
//   21     {
//   22         g_sMPU6050RawData.acc[i] = 0;
        LDR.N    R1,??DataTable3
        MOVS     R2,#+0
        STRH     R2,[R1, R0, LSL #+1]
//   23         g_sMPU6050RawData.gyr[i] = 0;
        LDR.N    R1,??DataTable3
        ADDS     R1,R1,R0, LSL #+1
        MOVS     R2,#+0
        STRH     R2,[R1, #+8]
//   24     }
        ADDS     R0,R0,#+1
        B.N      ??MPU6050_InitRawData_0
//   25     g_sMPU6050RawData.tem = 0;
??MPU6050_InitRawData_1:
        LDR.N    R1,??DataTable3
        MOVS     R2,#+0
        STRH     R2,[R1, #+6]
//   26 }
        BX       LR               ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void MPU6050_RefreshRawData(void)
//   29 {
MPU6050_RefreshRawData:
        PUSH     {R0-R4,LR}
//   30     int16 buf[7];
//   31     int i = 0;
        MOVS     R4,#+0
//   32 
//   33     MPU6050_GetRawData(buf);
        ADD      R0,SP,#+0
        BL       MPU6050_GetRawData
//   34 
//   35     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??MPU6050_RefreshRawData_0:
        CMP      R4,#+3
        BGE.N    ??MPU6050_RefreshRawData_1
//   36     {
//   37         g_sMPU6050RawData.acc[i] = buf[i];
        LDR.N    R0,??DataTable3
        ADD      R1,SP,#+0
        LDRH     R1,[R1, R4, LSL #+1]
        STRH     R1,[R0, R4, LSL #+1]
//   38         g_sMPU6050RawData.gyr[i] = buf[4+i];
        LDR.N    R0,??DataTable3
        ADDS     R0,R0,R4, LSL #+1
        ADD      R1,SP,#+0
        ADDS     R1,R1,R4, LSL #+1
        LDRH     R1,[R1, #+8]
        STRH     R1,[R0, #+8]
//   39     }
        ADDS     R4,R4,#+1
        B.N      ??MPU6050_RefreshRawData_0
//   40     g_sMPU6050RawData.tem = buf[3];
??MPU6050_RefreshRawData_1:
        LDR.N    R0,??DataTable3
        LDRH     R1,[SP, #+6]
        STRH     R1,[R0, #+6]
//   41 }
        POP      {R0-R4,PC}       ;; return
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void MPU6050_GetCalibratedAcc(float * acc)
//   44 {
MPU6050_GetCalibratedAcc:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//   45     int i = 0;
        MOVS     R5,#+0
//   46 
//   47     for(i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??MPU6050_GetCalibratedAcc_0:
        CMP      R5,#+2
        BGE.N    ??MPU6050_GetCalibratedAcc_1
//   48     {
//   49         acc[i] = (g_sMPU6050RawData.acc[i] - g_i16AccOffset[i]) * g_f32AccGain[i];
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable3_1
        LDRSH    R1,[R1, R5, LSL #+1]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, R5, LSL #+2]
        BL       __aeabi_fmul
        STR      R0,[R4, R5, LSL #+2]
//   50     }
        ADDS     R5,R5,#+1
        B.N      ??MPU6050_GetCalibratedAcc_0
//   51 
//   52     if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
??MPU6050_GetCalibratedAcc_1:
        LDR.N    R0,??DataTable3_3
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??MPU6050_GetCalibratedAcc_2
//   53     {
//   54         acc[2] = (g_sMPU6050RawData.acc[i] - 54) * g_f32AccGain[2];
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, R5, LSL #+1]
        SUBS     R0,R0,#+54
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        STR      R0,[R4, #+8]
        B.N      ??MPU6050_GetCalibratedAcc_3
//   55     }
//   56     else
//   57     {
//   58         acc[2] = (g_sMPU6050RawData.acc[i]) * g_f32AccGain[2];
??MPU6050_GetCalibratedAcc_2:
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, R5, LSL #+1]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_2
        LDR      R1,[R1, #+8]
        BL       __aeabi_fmul
        STR      R0,[R4, #+8]
//   59     }
//   60 }
??MPU6050_GetCalibratedAcc_3:
        POP      {R4,R5,PC}       ;; return
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void MPU6050_GetCalibratedGyr(float * gyr)
//   63 {
MPU6050_GetCalibratedGyr:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//   64     int i = 0;
        MOVS     R5,#+0
//   65 
//   66     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??MPU6050_GetCalibratedGyr_0:
        CMP      R5,#+3
        BGE.N    ??MPU6050_GetCalibratedGyr_1
//   67     {
//   68         gyr[i] = (g_sMPU6050RawData.gyr[i] - g_i16GyrOffset[i]) * g_f32GyrGain[i];
        LDR.N    R0,??DataTable3
        ADDS     R0,R0,R5, LSL #+1
        LDRSH    R0,[R0, #+8]
        LDR.N    R1,??DataTable3_4
        LDRSH    R1,[R1, R5, LSL #+1]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable3_5
        LDR      R1,[R1, R5, LSL #+2]
        BL       __aeabi_fmul
        STR      R0,[R4, R5, LSL #+2]
//   69     }
        ADDS     R5,R5,#+1
        B.N      ??MPU6050_GetCalibratedGyr_0
//   70 }
??MPU6050_GetCalibratedGyr_1:
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     g_sMPU6050RawData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     g_i16AccOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     g_f32AccGain

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     g_sQuadSystemFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     g_i16GyrOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     g_f32GyrGain

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
//  16 bytes in section .bss
//  24 bytes in section .data
// 284 bytes in section .text
// 
// 284 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: none
