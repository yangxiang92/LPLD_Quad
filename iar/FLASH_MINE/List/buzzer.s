///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:18 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\buzzer.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\buzzer.c -D LPLD_K60 -lCN                           /
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
//                    MINE\List\buzzer.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME buzzer

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN g_sQuadSystemFlag

        PUBLIC BuzzerTimerIsr
        PUBLIC InitBuzzer
        PUBLIC InitBuzzerTimer
        PUBLIC SetBuzzerMode
        PUBLIC SetBuzzerOnOff
        PUBLIC ToggleBuzzer
        PUBLIC TurnOffBuzzer
        PUBLIC TurnOnBuzzer
        PUBLIC g_buzzer_mode

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\buzzer.c
//    1 /****************************************************************************** 
//    2  *       buzzer.c ----- The code of buzzer          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  buzzer.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/22 15:20:56                                                       *
//   10  ******************************************************************************/
//   11 #include "buzzer.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 g_buzzer_mode = 0;
g_buzzer_mode:
        DS8 1
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void InitBuzzer(void)
//   16 {
InitBuzzer:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   17     GPIO_InitTypeDef buzzer_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   18 
//   19     buzzer_init_struct.GPIO_PTx = BUZZER_PORT;
        LDR.N    R0,??DataTable6  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   20     buzzer_init_struct.GPIO_Pins = BUZZER_GPIO_PIN;
        MOVS     R0,#+9
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   21     buzzer_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   22     buzzer_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//   23     LPLD_GPIO_Init(buzzer_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   24 
//   25     InitBuzzerTimer();
        BL       InitBuzzerTimer
//   26 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   27 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void InitBuzzerTimer(void)
//   29 {
InitBuzzerTimer:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   30     PIT_InitTypeDef buzzer_timer_init_struct = {BUZZER_TIMER_PITX};
        ADD      R0,SP,#+4
        LDR.N    R1,??DataTable6_1
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
//   31 
//   32     buzzer_timer_init_struct.PIT_Pitx = BUZZER_TIMER_PITX;
        MOVS     R0,#+2
        STRB     R0,[SP, #+4]
//   33     buzzer_timer_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   34     buzzer_timer_init_struct.PIT_PeriodMs = BUZZER_TIMER_PERIOD_MS;
        MOVS     R0,#+50
        STR      R0,[SP, #+12]
//   35     buzzer_timer_init_struct.PIT_PeriodUs = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   36     buzzer_timer_init_struct.PIT_Isr = BuzzerTimerIsr;
        ADR.W    R0,BuzzerTimerIsr
        STR      R0,[SP, #+20]
//   37 
//   38     LPLD_PIT_Init(buzzer_timer_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   39     LPLD_PIT_EnableIrq(buzzer_timer_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   40 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void TurnOnBuzzer(void)
//   43 {
TurnOnBuzzer:
        PUSH     {R7,LR}
//   44     if(g_sQuadSystemFlag.sys_setting.use_buzzer || g_sQuadSystemFlag.switch_setting_unvalid)
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??TurnOnBuzzer_0
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??TurnOnBuzzer_1
//   45     {
//   46         SetBuzzerOnOff(1);
??TurnOnBuzzer_0:
        MOVS     R0,#+1
        BL       SetBuzzerOnOff
//   47     }
//   48 }
??TurnOnBuzzer_1:
        POP      {R0,PC}          ;; return
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void TurnOffBuzzer(void)
//   51 {
TurnOffBuzzer:
        PUSH     {R7,LR}
//   52     SetBuzzerOnOff(0);
        MOVS     R0,#+0
        BL       SetBuzzerOnOff
//   53 }
        POP      {R0,PC}          ;; return
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void SetBuzzerOnOff(uint8 state)
//   56 {
//   57     BUZZER_OUTPUT = state;
SetBuzzerOnOff:
        LDR.N    R1,??DataTable6_3  ;; 0x43fe0824
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
//   58 }
        BX       LR               ;; return
//   59 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void ToggleBuzzer(void)
//   61 {
ToggleBuzzer:
        PUSH     {R7,LR}
//   62     LPLD_GPIO_Toggle_b(BUZZER_PORT, BUZZER_PIN_NUM);
        MOVS     R1,#+9
        LDR.N    R0,??DataTable6  ;; 0x400ff040
        BL       LPLD_GPIO_Toggle_b
//   63 }
        POP      {R0,PC}          ;; return
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 void SetBuzzerMode(uint8 buzzer_mode)
//   66 {
//   67     g_buzzer_mode = buzzer_mode;
SetBuzzerMode:
        LDR.N    R1,??DataTable6_4
        STRB     R0,[R1, #+0]
//   68 }
        BX       LR               ;; return
//   69 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   70 void BuzzerTimerIsr(void)
//   71 {
BuzzerTimerIsr:
        PUSH     {R3-R5,LR}
//   72     static uint32 buzzer_timer_cnt = 0;
//   73     static uint8 buzzer_mode_now = 0;
//   74     int16 buzzer_on_time = 0;
        MOVS     R4,#+0
//   75     int16 buzzer_off_time = 0;
        MOVS     R5,#+0
//   76 
//   77     if(buzzer_mode_now != g_buzzer_mode)
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ.N    ??BuzzerTimerIsr_0
//   78     {
//   79         buzzer_mode_now = g_buzzer_mode;
        LDR.N    R0,??DataTable6_5
        LDR.N    R1,??DataTable6_4
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+0]
//   80         buzzer_timer_cnt = 0;
        LDR.N    R0,??DataTable6_6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   81     }
//   82 
//   83     buzzer_timer_cnt ++;
??BuzzerTimerIsr_0:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//   84 
//   85     switch(buzzer_mode_now)
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??BuzzerTimerIsr_1
        CMP      R0,#+1
        BEQ.N    ??BuzzerTimerIsr_2
        B.N      ??BuzzerTimerIsr_3
//   86     {
//   87         case 0: buzzer_on_time = 0;
??BuzzerTimerIsr_1:
        MOVS     R0,#+0
        MOVS     R4,R0
//   88                 buzzer_off_time = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//   89                 break;
        B.N      ??BuzzerTimerIsr_4
//   90         case 1: buzzer_on_time = 1;
??BuzzerTimerIsr_2:
        MOVS     R0,#+1
        MOVS     R4,R0
//   91                 buzzer_off_time = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//   92                 break;
        B.N      ??BuzzerTimerIsr_4
//   93         default:buzzer_on_time = buzzer_mode_now - 1;
??BuzzerTimerIsr_3:
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVS     R4,R0
//   94                 buzzer_off_time = buzzer_mode_now - 1;
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        MOVS     R5,R0
//   95                 break;
//   96     }
//   97 
//   98     if(buzzer_timer_cnt <= buzzer_on_time)
??BuzzerTimerIsr_4:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCC.N    ??BuzzerTimerIsr_5
//   99     {
//  100         TurnOnBuzzer();
        BL       TurnOnBuzzer
        B.N      ??BuzzerTimerIsr_6
//  101     }
//  102     else if(buzzer_timer_cnt <= (buzzer_on_time + buzzer_off_time))
??BuzzerTimerIsr_5:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        SXTAH    R0,R5,R4
        LDR.N    R1,??DataTable6_6
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??BuzzerTimerIsr_7
//  103     {
//  104         TurnOffBuzzer();
        BL       TurnOffBuzzer
        B.N      ??BuzzerTimerIsr_6
//  105     }
//  106     else
//  107     {
//  108         //buzzer_mode_now = g_buzzer_mode;         // g_buzzer_mode is like a buffer 
//  109         buzzer_timer_cnt = 0;
??BuzzerTimerIsr_7:
        LDR.N    R0,??DataTable6_6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  110     }
//  111 }
??BuzzerTimerIsr_6:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     `?<Constant {2}>`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     g_sQuadSystemFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x43fe0824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     g_buzzer_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     ??buzzer_mode_now

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     ??buzzer_timer_cnt

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??buzzer_timer_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??buzzer_mode_now:
        DS8 1

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
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant {2}>`:
        DATA
        DC8 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
// 
//   6 bytes in section .bss
//  40 bytes in section .rodata
// 366 bytes in section .text
// 
// 366 bytes of CODE  memory
//  40 bytes of CONST memory
//   6 bytes of DATA  memory
//
//Errors: none
//Warnings: none
