///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:42 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\timer.c                                             /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\timer.c -D LPLD_K60 -lCN                            /
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
//                    MINE\List\timer.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME timer

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN g_bus_clock

        PUBLIC DelayWithTimer
        PUBLIC GetSystemClockMs
        PUBLIC GetSystemClockUs
        PUBLIC InitTimer
        PUBLIC TimerIsr
        PUBLIC g_timer_cnt
        PUBLIC g_u32DelayTimerMsCnt
        PUBLIC g_u32LostSignalTimerCnt
        PUBLIC g_u32ProgramPeriodTimerCnt
        PUBLIC g_u32TimerMsCnt

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\timer.c
//    1 /****************************************************************************** 
//    2  *       timer.c ----- The code to use 1ms timer          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  timer.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/1 19:07:27                                                       *
//   10  ******************************************************************************/
//   11 #include "timer.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 volatile uint32 g_timer_cnt = 0;
g_timer_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 volatile uint32 g_u32TimerMsCnt = 0;
g_u32TimerMsCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 volatile uint32 g_u32DelayTimerMsCnt = 0;
g_u32DelayTimerMsCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 volatile uint32 g_u32ProgramPeriodTimerCnt = 0;
g_u32ProgramPeriodTimerCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 volatile uint32 g_u32LostSignalTimerCnt = 0;
g_u32LostSignalTimerCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 static volatile uint32 s_u32SystemClockTimerMsCnt = 0;
s_u32SystemClockTimerMsCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   19 static volatile uint64_t s_u64SystemClockTimerUsCnt = 0;
s_u64SystemClockTimerUsCnt:
        DS8 8
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void InitTimer(void)
//   22 {
InitTimer:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   23     PIT_InitTypeDef timer_init_struct = {TIMER_PITX};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   24 
//   25     timer_init_struct.PIT_Pitx = TIMER_PITX;
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
//   26     timer_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   27     timer_init_struct.PIT_PeriodMs = TIMER_PERIOD;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
//   28     timer_init_struct.PIT_PeriodUs = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   29     timer_init_struct.PIT_Isr = TimerIsr;
        ADR.W    R0,TimerIsr
        STR      R0,[SP, #+20]
//   30     LPLD_PIT_Init(timer_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   31     LPLD_PIT_EnableIrq(timer_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   32 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   33 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   34 void TimerIsr(void)
//   35 {
//   36     s_u32SystemClockTimerMsCnt ++;
TimerIsr:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3
        STR      R0,[R1, #+0]
//   37     s_u64SystemClockTimerUsCnt = s_u32SystemClockTimerMsCnt * 1000;
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        MOVS     R1,#+0
        LDR.N    R2,??DataTable3_1
        STRD     R0,R1,[R2, #+0]
//   38     g_timer_cnt ++;
        LDR.N    R0,??DataTable3_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_2
        STR      R0,[R1, #+0]
//   39     g_u32TimerMsCnt ++;
        LDR.N    R0,??DataTable3_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_3
        STR      R0,[R1, #+0]
//   40     g_u32DelayTimerMsCnt ++;
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//   41     g_u32ProgramPeriodTimerCnt ++;
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+0]
//   42     g_u32LostSignalTimerCnt ++;
        LDR.N    R0,??DataTable3_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable3_6
        STR      R0,[R1, #+0]
//   43 }
        BX       LR               ;; return
//   44 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 void DelayWithTimer(uint32 ms)
//   46 {
//   47     g_u32DelayTimerMsCnt = 0;
DelayWithTimer:
        LDR.N    R1,??DataTable3_4
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
//   48     while(g_u32DelayTimerMsCnt < ms);
??DelayWithTimer_0:
        LDR.N    R1,??DataTable3_4
        LDR      R1,[R1, #+0]
        CMP      R1,R0
        BCC.N    ??DelayWithTimer_0
//   49 }
        BX       LR               ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 uint64_t GetSystemClockUs(void)
//   52 {
GetSystemClockUs:
        PUSH     {R4,R5}
//   53     uint64_t ret = 0;
        MOVS     R0,#+0
        MOVS     R1,#+0
//   54     uint32 timer_us_cnt = 0;
        MOVS     R2,#+0
//   55 
//   56     timer_us_cnt = PIT->CHANNEL[TIMER_PITX].LDVAL;
        LDR.N    R3,??DataTable3_7  ;; 0x40037100
        LDR      R3,[R3, #+0]
        MOVS     R2,R3
//   57     timer_us_cnt = timer_us_cnt - PIT->CHANNEL[TIMER_PITX].CVAL;
        LDR.N    R3,??DataTable3_8  ;; 0x40037104
        LDR      R3,[R3, #+0]
        SUBS     R2,R2,R3
//   58     timer_us_cnt = timer_us_cnt / (g_bus_clock / 1000000);
        LDR.N    R3,??DataTable3_9
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable3_10  ;; 0xf4240
        UDIV     R3,R3,R4
        UDIV     R2,R2,R3
//   59     
//   60     ret = (s_u64SystemClockTimerUsCnt) + (uint64_t)timer_us_cnt;
        LDR.N    R3,??DataTable3_1
        LDRD     R4,R5,[R3, #+0]
        MOVS     R3,#+0
        ADDS     R4,R4,R2
        ADCS     R5,R5,R3
        MOVS     R0,R4
        MOVS     R1,R5
//   61 
//   62     return ret;
        POP      {R4,R5}
        BX       LR               ;; return
//   63 }
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 uint32 GetSystemClockMs(void)
//   66 {
//   67     return s_u32SystemClockTimerMsCnt;
GetSystemClockMs:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   68 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     s_u32SystemClockTimerMsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     s_u64SystemClockTimerUsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     g_timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     g_u32TimerMsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     g_u32DelayTimerMsCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     g_u32ProgramPeriodTimerCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     g_u32LostSignalTimerCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x40037104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0xf4240

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
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
//  32 bytes in section .bss
//  20 bytes in section .rodata
// 276 bytes in section .text
// 
// 276 bytes of CODE  memory
//  20 bytes of CONST memory
//  32 bytes of DATA  memory
//
//Errors: none
//Warnings: none
