///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:28 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\HCSR04.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\HCSR04.c -D LPLD_K60 -lCN                           /
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
//                    MINE\List\HCSR04.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HCSR04

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_DisableIrq
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN g_bus_clock

        PUBLIC HCSR04_InputPluseMeasureIsr
        PUBLIC HCSR04_PluseTriggerIsr
        PUBLIC HCSR04_echo_pin_init_struct
        PUBLIC HCSR04_pluse_signal_timer_init_struct
        PUBLIC InitHCSR04
        PUBLIC g_sonar_measure_distance_mm
        PUBLIC g_sonar_measure_error_flag

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\HCSR04.c
//    1 /****************************************************************************** 
//    2  *       HCSR04.c ----- The sona sensor driver          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  HCSR04.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/1 11:21:42                                                       *
//   10  ******************************************************************************/
//   11 #include "HCSR04.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   13 uint16 g_sonar_measure_distance_mm = 0;
g_sonar_measure_distance_mm:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   14 uint8 g_sonar_measure_error_flag = 0;
g_sonar_measure_error_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   15 static uint8 s_get_input_flag = 0;
s_get_input_flag:
        DS8 1
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 PIT_InitTypeDef HCSR04_pluse_signal_timer_init_struct;
HCSR04_pluse_signal_timer_init_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 GPIO_InitTypeDef HCSR04_echo_pin_init_struct;
HCSR04_echo_pin_init_struct:
        DS8 20
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void InitHCSR04(void)
//   21 {
InitHCSR04:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   22     GPIO_InitTypeDef HCSR04_trlg_pin_init_struct ={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   23 
//   24     HCSR04_pluse_signal_timer_init_struct.PIT_Pitx = HCSR04_PLUSE_SIGNAL_TIMER_PITX;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   25     HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   26     HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = HCSR04_PLUSE_SIGNAL_PERIOD_MS - 1;    
        LDR.N    R0,??DataTable2
        MOVS     R1,#+59
        STR      R1,[R0, #+8]
//   27     HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = 1000 - HCSR04_PLUSE_SIGNAL_WIDTH_US;
        LDR.N    R0,??DataTable2
        MOV      R1,#+980
        STR      R1,[R0, #+4]
//   28     HCSR04_pluse_signal_timer_init_struct.PIT_Isr = HCSR04_PluseTriggerIsr;
        LDR.N    R0,??DataTable2
        ADR.W    R1,HCSR04_PluseTriggerIsr
        STR      R1,[R0, #+16]
//   29     LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   30     LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   31 
//   32     HCSR04_echo_pin_init_struct.GPIO_PTx = HCSR04_ECHO_PIN_PORT;
        LDR.N    R0,??DataTable2_1
        LDR.N    R1,??DataTable2_2  ;; 0x400ff080
        STR      R1,[R0, #+0]
//   33     HCSR04_echo_pin_init_struct.GPIO_Pins = PinNum2GpioPin(HCSR04_ECHO_PIN_NUM);
        MOVS     R0,#+0
        BL       PinNum2GpioPin
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   34     HCSR04_echo_pin_init_struct.GPIO_Dir = DIR_INPUT;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
//   35     HCSR04_echo_pin_init_struct.GPIO_PinControl = IRQC_ET;
        LDR.N    R0,??DataTable2_1
        MOVS     R1,#+720896
        STR      R1,[R0, #+8]
//   36     HCSR04_echo_pin_init_struct.GPIO_Isr = HCSR04_InputPluseMeasureIsr;
        LDR.N    R0,??DataTable2_1
        ADR.W    R1,HCSR04_InputPluseMeasureIsr
        STR      R1,[R0, #+16]
//   37     LPLD_GPIO_Init(HCSR04_echo_pin_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   38     LPLD_GPIO_EnableIrq(HCSR04_echo_pin_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   39 
//   40     HCSR04_trlg_pin_init_struct.GPIO_PTx = HSCR04_TRLG_PIN_PORT;
        LDR.N    R0,??DataTable2_3  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   41     HCSR04_trlg_pin_init_struct.GPIO_Pins = PinNum2GpioPin(HSCR04_TRLG_PIN_NUM);
        MOVS     R0,#+23
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   42     HCSR04_trlg_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   43     HCSR04_trlg_pin_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//   44     LPLD_GPIO_Init(HCSR04_trlg_pin_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   45 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   46 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 void HCSR04_PluseTriggerIsr(void)
//   48 {
HCSR04_PluseTriggerIsr:
        PUSH     {R7,LR}
//   49     static uint8 last_state = OUTPUT_L;
//   50 
//   51     if(last_state == OUTPUT_L)
        LDR.N    R0,??DataTable2_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??HCSR04_PluseTriggerIsr_0
//   52     {
//   53         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   54         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   55         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = HCSR04_PLUSE_SIGNAL_WIDTH_US;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+20
        STR      R1,[R0, #+4]
//   56         LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   57         LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   58         HCSR04_TRLG_PIN_OUTPUT = 1;                             // TRLG_PIN 
        LDR.N    R0,??DataTable2_5  ;; 0x43fe085c
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   59         last_state = OUTPUT_H;
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   60 
//   61         LPLD_GPIO_DisableIrq(HCSR04_echo_pin_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//   62         
//   63         if(s_get_input_flag == 0)
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??HCSR04_PluseTriggerIsr_1
//   64         {
//   65             g_sonar_measure_error_flag = 1;
        LDR.N    R0,??DataTable2_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//   66         }
//   67         s_get_input_flag = 0;
??HCSR04_PluseTriggerIsr_1:
        LDR.N    R0,??DataTable2_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??HCSR04_PluseTriggerIsr_2
//   68     }
//   69     else
//   70     {
//   71         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodS = 0;
??HCSR04_PluseTriggerIsr_0:
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   72         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodMs = HCSR04_PLUSE_SIGNAL_PERIOD_MS - 1;    
        LDR.N    R0,??DataTable2
        MOVS     R1,#+59
        STR      R1,[R0, #+8]
//   73         HCSR04_pluse_signal_timer_init_struct.PIT_PeriodUs = 1000 - HCSR04_PLUSE_SIGNAL_WIDTH_US;
        LDR.N    R0,??DataTable2
        MOV      R1,#+980
        STR      R1,[R0, #+4]
//   74         LPLD_PIT_Init(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   75         LPLD_PIT_EnableIrq(HCSR04_pluse_signal_timer_init_struct);
        LDR.N    R1,??DataTable2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   76         HCSR04_TRLG_PIN_OUTPUT = 0;                             // TRLG_PIN 
        LDR.N    R0,??DataTable2_5  ;; 0x43fe085c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   77         last_state = OUTPUT_L; 
        LDR.N    R0,??DataTable2_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   78 
//   79         LPLD_GPIO_EnableIrq(HCSR04_echo_pin_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   80     }
//   81 }
??HCSR04_PluseTriggerIsr_2:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??last_state:
        DS8 1
//   82 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   83 void HCSR04_InputPluseMeasureIsr(void)
//   84 {
HCSR04_InputPluseMeasureIsr:
        PUSH     {R4-R6,LR}
//   85     static uint32 last_sonar_measure_reg_time = 0;
//   86     uint32 sonar_measure_reg_time = 0;
        MOVS     R4,#+0
//   87     uint32 sonar_measure_time_100ns = 0;
        MOVS     R5,#+0
//   88 
//   89     if(LPLD_GPIO_IsPinxExt(PORTC, PinNum2GpioPin(HCSR04_ECHO_PIN_NUM)))
        LDR.N    R0,??DataTable2_8  ;; 0x4004b0a0
        LDR      R6,[R0, #+0]
        MOVS     R0,#+0
        BL       PinNum2GpioPin
        TST      R6,R0
        BEQ.N    ??HCSR04_InputPluseMeasureIsr_0
//   90     {
//   91         if(HCSR04_ECHO_PIN_INPUT == 1)                          // ECHO_PIN 
        LDR.N    R0,??DataTable2_9  ;; 0x43fe1200
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??HCSR04_InputPluseMeasureIsr_1
//   92         {
//   93             last_sonar_measure_reg_time = PIT->CHANNEL[HCSR04_PLUSE_SIGNAL_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable2_10
        LDR.N    R1,??DataTable2_11  ;; 0x40037114
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??HCSR04_InputPluseMeasureIsr_0
//   94         }
//   95         else
//   96         {
//   97             sonar_measure_reg_time = PIT->CHANNEL[HCSR04_PLUSE_SIGNAL_TIMER_PITX].CVAL;
??HCSR04_InputPluseMeasureIsr_1:
        LDR.N    R0,??DataTable2_11  ;; 0x40037114
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//   98             if(sonar_measure_reg_time > last_sonar_measure_reg_time)
        LDR.N    R0,??DataTable2_10
        LDR      R0,[R0, #+0]
        CMP      R0,R4
        BCS.N    ??HCSR04_InputPluseMeasureIsr_2
//   99             {
//  100                 sonar_measure_time_100ns = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  101                 g_sonar_measure_distance_mm = 0;
        LDR.N    R0,??DataTable2_12
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  102                 g_sonar_measure_error_flag = 1;
        LDR.N    R0,??DataTable2_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??HCSR04_InputPluseMeasureIsr_3
//  103             }
//  104             else
//  105             {
//  106                 sonar_measure_reg_time = last_sonar_measure_reg_time - sonar_measure_reg_time;
??HCSR04_InputPluseMeasureIsr_2:
        LDR.N    R0,??DataTable2_10
        LDR      R0,[R0, #+0]
        SUBS     R4,R0,R4
//  107                 sonar_measure_time_100ns = sonar_measure_reg_time / (g_bus_clock / 10000000);
        LDR.N    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_14  ;; 0x989680
        UDIV     R0,R0,R1
        UDIV     R0,R4,R0
        MOVS     R5,R0
//  108                 g_sonar_measure_distance_mm = sonar_measure_time_100ns / 58;
        MOVS     R0,#+58
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable2_12
        STRH     R0,[R1, #+0]
//  109                 g_sonar_measure_error_flag = 0;
        LDR.N    R0,??DataTable2_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  110             }
//  111 
//  112             s_get_input_flag = 1;
??HCSR04_InputPluseMeasureIsr_3:
        LDR.N    R0,??DataTable2_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  113         }
//  114     }
//  115 }
??HCSR04_InputPluseMeasureIsr_0:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     HCSR04_pluse_signal_timer_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     HCSR04_echo_pin_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     ??last_state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x43fe085c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     s_get_input_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     g_sonar_measure_error_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4004b0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x43fe1200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     ??last_sonar_measure_reg_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x40037114

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     g_sonar_measure_distance_mm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x989680

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??last_sonar_measure_reg_time:
        DS8 4

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

        END
// 
//  49 bytes in section .bss
//  20 bytes in section .rodata
// 582 bytes in section .text
// 
// 582 bytes of CODE  memory
//  20 bytes of CONST memory
//  49 bytes of DATA  memory
//
//Errors: none
//Warnings: none
