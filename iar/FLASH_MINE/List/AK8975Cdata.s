///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:16 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\AK8975Cdata.c                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\AK8975Cdata.c -D LPLD_K60 -lCN           /
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
//                    MINE\List\AK8975Cdata.s                                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME AK8975Cdata

        #define SHT_PROGBITS 0x1

        EXTERN AK8975C_GetRawData
        EXTERN AK8975C_StartMeasure
        EXTERN AK8975C_WaitMeasureComplete
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN g_i16MagOffset

        PUBLIC AK8975C_GetCalibratedMag
        PUBLIC AK8975C_InitRawData
        PUBLIC AK8975C_RefreshRawData
        PUBLIC g_f32MagGain
        PUBLIC g_sAK8975CRawData

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\AK8975Cdata.c
//    1 /****************************************************************************** 
//    2  *       AK8975Cdata.c ----- The data processsing of AK8975C          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  AK8975Cdata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/8 18:57:16                                                       *
//   10  ******************************************************************************/
//   11 #include "AK8975Cdata.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 AK8975C_RawDataType g_sAK8975CRawData;
g_sAK8975CRawData:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 float g_f32MagGain[3] = {3E-7f, 3E-7f, 3E-7f};
g_f32MagGain:
        DATA
        DC32 34A10FB0H, 34A10FB0H, 34A10FB0H
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void AK8975C_InitRawData(void)
//   17 {
AK8975C_InitRawData:
        PUSH     {R4,LR}
//   18     int i = 0;
        MOVS     R4,#+0
//   19 
//   20     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??AK8975C_InitRawData_0:
        CMP      R4,#+3
        BGE.N    ??AK8975C_InitRawData_1
//   21     {
//   22         g_sAK8975CRawData.mag[i] = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRH     R1,[R0, R4, LSL #+1]
//   23     }
        ADDS     R4,R4,#+1
        B.N      ??AK8975C_InitRawData_0
//   24 
//   25     AK8975C_StartMeasure();
??AK8975C_InitRawData_1:
        BL       AK8975C_StartMeasure
//   26 }
        POP      {R4,PC}          ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void AK8975C_RefreshRawData(void)
//   29 {
AK8975C_RefreshRawData:
        PUSH     {R2-R4,LR}
//   30     static uint32 convert_time_cnt = 0;
//   31     convert_time_cnt ++;
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   32 
//   33     if(convert_time_cnt > (AK8975C_SAMPLE_PERIOD_MS / PROGRAM_PERIOD_MS))
        LDR.N    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+6
        BCC.N    ??AK8975C_RefreshRawData_0
//   34     {
//   35         AK8975C_WaitMeasureComplete();
        BL       AK8975C_WaitMeasureComplete
//   36         int16 buf[3];
//   37         int i = 0;
        MOVS     R4,#+0
//   38         AK8975C_GetRawData(buf);
        ADD      R0,SP,#+0
        BL       AK8975C_GetRawData
//   39         for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??AK8975C_RefreshRawData_1:
        CMP      R4,#+3
        BGE.N    ??AK8975C_RefreshRawData_2
//   40         {
//   41             g_sAK8975CRawData.mag[i] = buf[i];
        LDR.N    R0,??DataTable2
        ADD      R1,SP,#+0
        LDRH     R1,[R1, R4, LSL #+1]
        STRH     R1,[R0, R4, LSL #+1]
//   42         }
        ADDS     R4,R4,#+1
        B.N      ??AK8975C_RefreshRawData_1
//   43         /* 
//   44         g_sAK8975CRawData.mag[0] = AK8975C_GetData(AK8975C_HXL);
//   45         g_sAK8975CRawData.mag[1] = AK8975C_GetData(AK8975C_HYL);
//   46         g_sAK8975CRawData.mag[2] = AK8975C_GetData(AK8975C_HZL);
//   47         */
//   48         AK8975C_StartMeasure();
??AK8975C_RefreshRawData_2:
        BL       AK8975C_StartMeasure
//   49         convert_time_cnt = 0;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   50     }
//   51 }
??AK8975C_RefreshRawData_0:
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??convert_time_cnt:
        DS8 4
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void AK8975C_GetCalibratedMag(float * mag)
//   54 {
AK8975C_GetCalibratedMag:
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//   55     int i = 0;
        MOVS     R5,#+0
//   56 
//   57     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??AK8975C_GetCalibratedMag_0:
        CMP      R5,#+3
        BGE.N    ??AK8975C_GetCalibratedMag_1
//   58     {
//   59         mag[i] = (float)(g_sAK8975CRawData.mag[i] - g_i16MagOffset[i]) * g_f32MagGain[i];
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, R5, LSL #+1]
        LDR.N    R1,??DataTable2_2
        LDRSH    R1,[R1, R5, LSL #+1]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2_3
        LDR      R1,[R1, R5, LSL #+2]
        BL       __aeabi_fmul
        STR      R0,[R4, R5, LSL #+2]
//   60     }
        ADDS     R5,R5,#+1
        B.N      ??AK8975C_GetCalibratedMag_0
//   61 }
??AK8975C_GetCalibratedMag_1:
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     g_sAK8975CRawData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ??convert_time_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     g_i16MagOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     g_f32MagGain

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
//  12 bytes in section .bss
//  12 bytes in section .data
// 166 bytes in section .text
// 
// 166 bytes of CODE memory
//  24 bytes of DATA memory
//
//Errors: none
//Warnings: none
