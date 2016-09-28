///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:17 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\MS5611data.c                             /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\MS5611data.c -D LPLD_K60 -lCN            /
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
//                    MINE\List\MS5611data.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MS5611data

        #define SHT_PROGBITS 0x1

        EXTERN MS5611_Read
        EXTERN MS5611_data_struct
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memcpy4

        PUBLIC GetHighByAltitude
        PUBLIC InitAltitude
        PUBLIC MS5611_RefreshData
        PUBLIC RefreshAltitude
        PUBLIC g_f32FiltedAltitude
        PUBLIC g_f32RawAltitude
        PUBLIC g_f32ReferenceAltitude
        PUBLIC g_sMS5611DataCopy

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\MS5611data.c
//    1 /****************************************************************************** 
//    2  *       MS5611data.c ----- The data processing of MS5611          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MS5611data.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/8 19:55:45                                                       *
//   10  ******************************************************************************/
//   11 #include "MS5611data.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   13 MS5611_DataStruct g_sMS5611DataCopy;
g_sMS5611DataCopy:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 float g_f32RawAltitude = 0;
g_f32RawAltitude:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 float g_f32FiltedAltitude = 0;
g_f32FiltedAltitude:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float g_f32ReferenceAltitude = 0;
g_f32ReferenceAltitude:
        DS8 4
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void MS5611_RefreshData(void)
//   19 {
MS5611_RefreshData:
        PUSH     {R7,LR}
//   20     static uint32 convert_time_cnt = 0;
//   21     convert_time_cnt++;
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+0]
//   22 
//   23     if(convert_time_cnt > (MS5611_SAMPLE_PERIOD_MS / PROGRAM_PERIOD_MS))
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        CMP      R0,#+6
        BCC.N    ??MS5611_RefreshData_0
//   24     {
//   25         MS5611_Read(&MS5611_data_struct, MS5611_D1_OSR_4096); 
        MOVS     R1,#+72
        LDR.N    R0,??DataTable3_1
        BL       MS5611_Read
//   26         g_sMS5611DataCopy = MS5611_data_struct;
        LDR.N    R0,??DataTable3_2
        LDR.N    R1,??DataTable3_1
        MOVS     R2,#+80
        BL       __aeabi_memcpy4
//   27         if(MS5611_data_struct.HighReady == 1)
        LDR.N    R0,??DataTable3_1
        LDRB     R0,[R0, #+72]
        CMP      R0,#+1
        BNE.N    ??MS5611_RefreshData_1
//   28         {
//   29             RefreshAltitude();
        BL       RefreshAltitude
//   30             MS5611_data_struct.HighReady = 0;
        LDR.N    R0,??DataTable3_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+72]
//   31         }
//   32         convert_time_cnt = 0;
??MS5611_RefreshData_1:
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   33     }
//   34 }
??MS5611_RefreshData_0:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??convert_time_cnt:
        DS8 4
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 float RefreshAltitude(void)
//   37 {
RefreshAltitude:
        PUSH     {R4,R5,LR}
//   38     static float history_altitude[ALTITUDE_FILTER_SAMPLE_AMOUNT] = {0};
//   39     static int history_amount = 0;
//   40     float filter_sum = 0;
        MOVS     R4,#+0
//   41     int i = 0;
        MOVS     R5,#+0
//   42 
//   43     g_f32RawAltitude = g_sMS5611DataCopy.High / 100;
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+68]
        LDR.N    R1,??DataTable3_3  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//   44     
//   45     if(history_amount < ALTITUDE_FILTER_SAMPLE_AMOUNT)
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+16
        BGE.N    ??RefreshAltitude_0
//   46     {
//   47         history_altitude[history_amount] = g_f32RawAltitude;
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_6
        LDR.N    R2,??DataTable3_4
        LDR      R2,[R2, #+0]
        STR      R2,[R1, R0, LSL #+2]
//   48         for(i = 0; i < (history_amount + 1); i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??RefreshAltitude_1:
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        CMP      R5,R0
        BGE.N    ??RefreshAltitude_2
//   49         {
//   50             filter_sum += history_altitude[i];
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
//   51         }
        ADDS     R5,R5,#+1
        B.N      ??RefreshAltitude_1
//   52         g_f32FiltedAltitude = filter_sum / (history_amount + 1);
??RefreshAltitude_2:
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//   53         history_amount ++;
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+0]
        B.N      ??RefreshAltitude_3
//   54     }
//   55     else
//   56     {
//   57         for(i = 0 ; i < (ALTITUDE_FILTER_SAMPLE_AMOUNT - 1); i++)
??RefreshAltitude_0:
        MOVS     R0,#+0
        MOVS     R5,R0
??RefreshAltitude_4:
        CMP      R5,#+15
        BGE.N    ??RefreshAltitude_5
//   58         {
//   59             history_altitude[i] = history_altitude[i+1];
        LDR.N    R0,??DataTable3_6
        ADDS     R0,R0,R5, LSL #+2
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable3_6
        STR      R0,[R1, R5, LSL #+2]
//   60         }
        ADDS     R5,R5,#+1
        B.N      ??RefreshAltitude_4
//   61         history_altitude[ALTITUDE_FILTER_SAMPLE_AMOUNT - 1] = g_f32RawAltitude;
??RefreshAltitude_5:
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+60]
//   62         for(i = 0; i < ALTITUDE_FILTER_SAMPLE_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??RefreshAltitude_6:
        CMP      R5,#+16
        BGE.N    ??RefreshAltitude_7
//   63         {
//   64             filter_sum += history_altitude[i];
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
//   65         }
        ADDS     R5,R5,#+1
        B.N      ??RefreshAltitude_6
//   66         g_f32FiltedAltitude = filter_sum / ALTITUDE_FILTER_SAMPLE_AMOUNT;
??RefreshAltitude_7:
        MOVS     R0,R4
        MOVS     R1,#+1098907648
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//   67     }
//   68 
//   69     return g_f32FiltedAltitude;
??RefreshAltitude_3:
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        POP      {R4,R5,PC}       ;; return
//   70 }

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??history_altitude:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??history_amount:
        DS8 4
//   71 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 void InitAltitude(void)
//   73 {
InitAltitude:
        PUSH     {LR}
//   74     g_f32ReferenceAltitude = MS5611_data_struct.High / 100;   
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+68]
        LDR.N    R1,??DataTable3_3  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   75 }
        POP      {PC}             ;; return
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 float GetHighByAltitude(void)
//   78 {
GetHighByAltitude:
        PUSH     {LR}
//   79     return (g_f32FiltedAltitude - g_f32ReferenceAltitude);
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_8
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        POP      {PC}             ;; return
//   80 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ??convert_time_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     MS5611_data_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     g_sMS5611DataCopy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     g_f32RawAltitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ??history_amount

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     ??history_altitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     g_f32FiltedAltitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     g_f32ReferenceAltitude

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
// 164 bytes in section .bss
// 326 bytes in section .text
// 
// 326 bytes of CODE memory
// 164 bytes of DATA memory
//
//Errors: none
//Warnings: none
