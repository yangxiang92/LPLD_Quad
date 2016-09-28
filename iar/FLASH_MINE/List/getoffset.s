///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:20 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\getoffset.c                              /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \SignalProcess\getoffset.c -D LPLD_K60 -lCN             /
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
//                    MINE\List\getoffset.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME getoffset

        #define SHT_PROGBITS 0x1

        EXTERN DelayWithTimer
        EXTERN MPU6050_GetData
        EXTERN SetBuzzerMode
        EXTERN g_u32TimerMsCnt

        PUBLIC GetAccGyrOffset
        PUBLIC GetAccGyrOffsetOpe
        PUBLIC GetAccOffset
        PUBLIC GetAccOffsetOpe
        PUBLIC GetGyrOffset
        PUBLIC GetGyrOffsetOpe
        PUBLIC g_i16AccOffset
        PUBLIC g_i16GyrOffset
        PUBLIC g_i16MagOffset

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\SignalProcess\getoffset.c
//    1 /****************************************************************************** 
//    2  *       getoffset.c ----- Get the offset of sensors          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  getoffset.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/4 20:31:16                                                       *
//   10  ******************************************************************************/
//   11 #include "getoffset.h"
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 int16 g_i16AccOffset[3] = {-200, 180, 0};
g_i16AccOffset:
        DATA
        DC16 -200, 180, 0
        DC8 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 int16 g_i16GyrOffset[3] = {3,42,-16};
g_i16GyrOffset:
        DATA
        DC16 3, 42, -16
        DC8 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 int16 g_i16MagOffset[3] = {0,0,0};
g_i16MagOffset:
        DS8 8
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void GetAccOffset(void)
//   18 {
GetAccOffset:
        PUSH     {R1-R5,LR}
//   19     int i = 0;
        MOVS     R4,#+0
//   20     int j = 0;
        MOVS     R5,#+0
//   21     int32 acc_offset_record_sum[3] = {0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   22 
//   23     for(i = 0; i < ACC_OFFSET_SAMPLE_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??GetAccOffset_0:
        CMP      R4,#+200
        BGE.N    ??GetAccOffset_1
//   24     {
//   25         g_u32TimerMsCnt = 0;        
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   26         acc_offset_record_sum[0] = MPU6050_GetData(MPU6050_ACCEL_XOUT_H);
        MOVS     R0,#+59
        BL       MPU6050_GetData
        STR      R0,[SP, #+0]
//   27         acc_offset_record_sum[1] = MPU6050_GetData(MPU6050_ACCEL_YOUT_H);
        MOVS     R0,#+61
        BL       MPU6050_GetData
        STR      R0,[SP, #+4]
//   28         acc_offset_record_sum[2] = MPU6050_GetData(MPU6050_ACCEL_ZOUT_H);
        MOVS     R0,#+63
        BL       MPU6050_GetData
        STR      R0,[SP, #+8]
//   29         while(g_u32TimerMsCnt < ACC_OFFSET_SAMPLE_PERIOD_MS);
??GetAccOffset_2:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BCC.N    ??GetAccOffset_2
//   30     }
        ADDS     R4,R4,#+1
        B.N      ??GetAccOffset_0
//   31 
//   32     for(j = 0; j < 3; j++)
??GetAccOffset_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??GetAccOffset_3:
        CMP      R5,#+3
        BGE.N    ??GetAccOffset_4
//   33     {
//   34         g_i16AccOffset[j] = acc_offset_record_sum[j] / ACC_OFFSET_SAMPLE_AMOUNT;
        ADD      R0,SP,#+0
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_1
        STRH     R0,[R1, R5, LSL #+1]
//   35     }
        ADDS     R5,R5,#+1
        B.N      ??GetAccOffset_3
//   36 }
??GetAccOffset_4:
        POP      {R0-R2,R4,R5,PC}  ;; return
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void GetGyrOffset(void)
//   39 {
GetGyrOffset:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
//   40     int i = 0;
        MOVS     R4,#+0
//   41     int j = 0;
        MOVS     R5,#+0
//   42     int32 gyr_offset_record_sum[3] = {0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   43 
//   44     for(i = 0; i < ACC_OFFSET_SAMPLE_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??GetGyrOffset_0:
        CMP      R4,#+200
        BGE.N    ??GetGyrOffset_1
//   45     {
//   46         g_u32TimerMsCnt = 0;            
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   47         gyr_offset_record_sum[0] += MPU6050_GetData(MPU6050_GYRO_XOUT_H);
        LDR      R6,[SP, #+0]
        MOVS     R0,#+67
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+0]
//   48         gyr_offset_record_sum[1] += MPU6050_GetData(MPU6050_GYRO_YOUT_H);
        LDR      R6,[SP, #+4]
        MOVS     R0,#+69
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+4]
//   49         gyr_offset_record_sum[2] += MPU6050_GetData(MPU6050_GYRO_ZOUT_H);
        LDR      R6,[SP, #+8]
        MOVS     R0,#+71
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+8]
//   50         while(g_u32TimerMsCnt < GYR_OFFSET_SAMPLE_PERIOD_MS);
??GetGyrOffset_2:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BCC.N    ??GetGyrOffset_2
//   51     }
        ADDS     R4,R4,#+1
        B.N      ??GetGyrOffset_0
//   52 
//   53     for(j = 0; j < 3; j++)
??GetGyrOffset_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??GetGyrOffset_3:
        CMP      R5,#+3
        BGE.N    ??GetGyrOffset_4
//   54     {
//   55         g_i16GyrOffset[j] = gyr_offset_record_sum[j] / GYR_OFFSET_SAMPLE_AMOUNT;
        ADD      R0,SP,#+0
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_2
        STRH     R0,[R1, R5, LSL #+1]
//   56     }
        ADDS     R5,R5,#+1
        B.N      ??GetGyrOffset_3
//   57 }
??GetGyrOffset_4:
        POP      {R0-R6,PC}       ;; return
//   58 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void GetAccGyrOffset(void)
//   60 {
GetAccGyrOffset:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+24
//   61     int i = 0;
        MOVS     R4,#+0
//   62     int j = 0;
        MOVS     R5,#+0
//   63     int32 acc_offset_record_sum[3] = {0,0,0};
        ADD      R0,SP,#+12
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   64     int32 gyr_offset_record_sum[3] = {0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//   65 
//   66     for(i = 0; i < (ACC_OFFSET_SAMPLE_AMOUNT>GYR_OFFSET_SAMPLE_AMOUNT?ACC_OFFSET_SAMPLE_AMOUNT:GYR_OFFSET_SAMPLE_AMOUNT) ; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??GetAccGyrOffset_0:
        CMP      R4,#+200
        BGE.N    ??GetAccGyrOffset_1
//   67     {
//   68         g_u32TimerMsCnt = 0;        
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   69         if(i < ACC_OFFSET_SAMPLE_AMOUNT)
        CMP      R4,#+200
        BGE.N    ??GetAccGyrOffset_2
//   70         {
//   71             acc_offset_record_sum[0] += MPU6050_GetData(MPU6050_ACCEL_XOUT_H);
        LDR      R6,[SP, #+12]
        MOVS     R0,#+59
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+12]
//   72             acc_offset_record_sum[1] += MPU6050_GetData(MPU6050_ACCEL_YOUT_H);
        LDR      R6,[SP, #+16]
        MOVS     R0,#+61
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+16]
//   73             acc_offset_record_sum[2] += MPU6050_GetData(MPU6050_ACCEL_ZOUT_H);
        LDR      R6,[SP, #+20]
        MOVS     R0,#+63
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+20]
//   74         }
//   75         if(i < GYR_OFFSET_SAMPLE_AMOUNT)
??GetAccGyrOffset_2:
        CMP      R4,#+200
        BGE.N    ??GetAccGyrOffset_3
//   76         {
//   77             gyr_offset_record_sum[0] += MPU6050_GetData(MPU6050_GYRO_XOUT_H);
        LDR      R6,[SP, #+0]
        MOVS     R0,#+67
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+0]
//   78             gyr_offset_record_sum[1] += MPU6050_GetData(MPU6050_GYRO_YOUT_H);
        LDR      R6,[SP, #+4]
        MOVS     R0,#+69
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+4]
//   79             gyr_offset_record_sum[2] += MPU6050_GetData(MPU6050_GYRO_ZOUT_H);   
        LDR      R6,[SP, #+8]
        MOVS     R0,#+71
        BL       MPU6050_GetData
        SXTAH    R0,R6,R0
        STR      R0,[SP, #+8]
//   80         }
//   81         while(g_u32TimerMsCnt < (ACC_OFFSET_SAMPLE_PERIOD_MS>GYR_OFFSET_SAMPLE_PERIOD_MS?ACC_OFFSET_SAMPLE_PERIOD_MS:GYR_OFFSET_SAMPLE_PERIOD_MS) );
??GetAccGyrOffset_3:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+10
        BCC.N    ??GetAccGyrOffset_3
//   82     }
        ADDS     R4,R4,#+1
        B.N      ??GetAccGyrOffset_0
//   83 
//   84     for(j = 0; j < 3; j++)
??GetAccGyrOffset_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??GetAccGyrOffset_4:
        CMP      R5,#+3
        BGE.N    ??GetAccGyrOffset_5
//   85     {
//   86         g_i16AccOffset[j] = acc_offset_record_sum[j] / ACC_OFFSET_SAMPLE_AMOUNT;
        ADD      R0,SP,#+12
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_1
        STRH     R0,[R1, R5, LSL #+1]
//   87         g_i16GyrOffset[j] = gyr_offset_record_sum[j] / GYR_OFFSET_SAMPLE_AMOUNT;        
        ADD      R0,SP,#+0
        LDR      R0,[R0, R5, LSL #+2]
        MOVS     R1,#+200
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable2_2
        STRH     R0,[R1, R5, LSL #+1]
//   88     }
        ADDS     R5,R5,#+1
        B.N      ??GetAccGyrOffset_4
//   89 }
??GetAccGyrOffset_5:
        ADD      SP,SP,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     g_u32TimerMsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     g_i16AccOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     g_i16GyrOffset
//   90 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 void GetAccGyrOffsetOpe(void)
//   92 {
GetAccGyrOffsetOpe:
        PUSH     {R7,LR}
//   93 #ifdef GET_OFFSET_WITH_BUZZER_HINT
//   94     SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//   95     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
        MOVW     R0,#+3000
        BL       DelayWithTimer
//   96     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//   97     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//   98     SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//   99     GetAccGyrOffset();
        BL       GetAccGyrOffset
//  100     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  101     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  102     SetBuzzerMode(0);        
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  103 #else
//  104     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
//  105     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  106     GetAccGyrOffset();
//  107     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  108 #endif
//  109 }
        POP      {R0,PC}          ;; return
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void GetAccOffsetOpe(void)
//  112 {
GetAccOffsetOpe:
        PUSH     {R7,LR}
//  113 #ifdef GET_OFFSET_WITH_BUZZER_HINT
//  114     SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//  115     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
        MOVW     R0,#+3000
        BL       DelayWithTimer
//  116     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  117     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  118     SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  119     GetAccGyrOffset();
        BL       GetAccGyrOffset
//  120     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  121     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  122     SetBuzzerMode(0);        
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  123 #else
//  124     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
//  125     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  126     GetAccOffset();
//  127     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  128 #endif
//  129 }
        POP      {R0,PC}          ;; return
//  130 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void GetGyrOffsetOpe(void)
//  132 {
GetGyrOffsetOpe:
        PUSH     {R7,LR}
//  133 #ifdef GET_OFFSET_WITH_BUZZER_HINT
//  134     SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//  135     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
        MOVW     R0,#+3000
        BL       DelayWithTimer
//  136     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  137     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  138     SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  139     GetAccGyrOffset();
        BL       GetAccGyrOffset
//  140     SetBuzzerMode(1);
        MOVS     R0,#+1
        BL       SetBuzzerMode
//  141     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
        MOV      R0,#+1000
        BL       DelayWithTimer
//  142     SetBuzzerMode(0);        
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  143 #else
//  144     DelayWithTimer(GET_OFFSET_HINT_TIME_MS);
//  145     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  146     GetGyrOffset();
//  147     DelayWithTimer(GET_OFFSET_WARNING_TIME_MS);
//  148 #endif
//  149 }
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0

        END
// 
//   8 bytes in section .bss
//  16 bytes in section .data
//  48 bytes in section .rodata
// 620 bytes in section .text
// 
// 620 bytes of CODE  memory
//  48 bytes of CONST memory
//  24 bytes of DATA  memory
//
//Errors: none
//Warnings: none
