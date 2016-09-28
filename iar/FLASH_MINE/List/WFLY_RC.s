///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:36 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\WFLY_RC.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\WFLY_RC.c -D LPLD_K60 -lCN                          /
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
//                    MINE\List\WFLY_RC.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME WFLY_RC

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN g_bus_clock

        PUBLIC InitWFLY_RC
        PUBLIC PORTA_ExtIsr
        PUBLIC PORTB_ExtIsr
        PUBLIC WFLY_RC_CHX_InputPWMMeasureIsr
        PUBLIC WFLY_RC_ResetTimer
        PUBLIC WFLY_RC_TimerOutIsr
        PUBLIC g_WFLY_RC_pluse_width_us
        PUBLIC g_WFLY_RC_timer_out_flag

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\WFLY_RC.c
//    1 /****************************************************************************** 
//    2  *       WFLY_RC.c ----- The function to use the remote controller of WFLY 6e *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  WFLY_RC.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/28 13:38:19                                                       *
//   10  ******************************************************************************/
//   11 #include "WFLY_RC.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   13 uint8 g_WFLY_RC_timer_out_flag = 0;
g_WFLY_RC_timer_out_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 uint32 g_WFLY_RC_pluse_width_us[WFLY_RC_CHANNEL_NUM] = {0,0,0,0,0,0};
g_WFLY_RC_pluse_width_us:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 static PIT_InitTypeDef WFLY_RC_PWM_width_measure_timer_init_struct;
WFLY_RC_PWM_width_measure_timer_init_struct:
        DS8 20
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 void InitWFLY_RC(void)
//   18 {
InitWFLY_RC:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   19     GPIO_InitTypeDef WFLY_RC_PWM_input_pins_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   20 
//   21     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH0_PWM_INPUT_PIN_PORT;
        LDR.W    R0,??DataTable5  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   22     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH0_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+26
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   23     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   24     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   25     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
        ADR.W    R0,PORTA_ExtIsr
        STR      R0,[SP, #+20]
//   26     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   27     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   28 
//   29     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH1_PWM_INPUT_PIN_PORT;
        LDR.W    R0,??DataTable5  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   30     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH1_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+27
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   31     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   32     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   33     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
        ADR.W    R0,PORTA_ExtIsr
        STR      R0,[SP, #+20]
//   34     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   35     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   36 
//   37     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH2_PWM_INPUT_PIN_PORT;
        LDR.W    R0,??DataTable5  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   38     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH2_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+28
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   39     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   40     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   41     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
        ADR.W    R0,PORTA_ExtIsr
        STR      R0,[SP, #+20]
//   42     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   43     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   44 
//   45     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH3_PWM_INPUT_PIN_PORT;
        LDR.W    R0,??DataTable5  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   46     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH3_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+29
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   47     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   48     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   49     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTA_ExtIsr;
        ADR.W    R0,PORTA_ExtIsr
        STR      R0,[SP, #+20]
//   50     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   51     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   52 
//   53     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH4_PWM_INPUT_PIN_PORT;
        LDR.W    R0,??DataTable5_1  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   54     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH4_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+5
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   55     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   56     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   57     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTB_ExtIsr;
        ADR.W    R0,PORTB_ExtIsr
        STR      R0,[SP, #+20]
//   58     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   59     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   60 
//   61     WFLY_RC_PWM_input_pins_init_struct.GPIO_PTx = WFLY_RC_CH5_PWM_INPUT_PIN_PORT;
        LDR.N    R0,??DataTable5_1  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   62     WFLY_RC_PWM_input_pins_init_struct.GPIO_Pins = PinNum2GpioPin(WFLY_RC_CH5_PWM_INPUT_PIN_NUM);
        MOVS     R0,#+6
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   63     WFLY_RC_PWM_input_pins_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   64     WFLY_RC_PWM_input_pins_init_struct.GPIO_PinControl = IRQC_ET;
        MOVS     R0,#+720896
        STR      R0,[SP, #+12]
//   65     WFLY_RC_PWM_input_pins_init_struct.GPIO_Isr = PORTB_ExtIsr;
        ADR.W    R0,PORTB_ExtIsr
        STR      R0,[SP, #+20]
//   66     LPLD_GPIO_Init(WFLY_RC_PWM_input_pins_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   67     LPLD_GPIO_EnableIrq(WFLY_RC_PWM_input_pins_init_struct);    
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   68 
//   69     WFLY_RC_PWM_width_measure_timer_init_struct.PIT_Pitx = WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//   70     WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodS = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   71     WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodMs = WFLY_RC_PWM_WIDTH_MEASURE_PERIOD_MS;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+100
        STR      R1,[R0, #+8]
//   72     WFLY_RC_PWM_width_measure_timer_init_struct.PIT_PeriodUs = 0;
        LDR.N    R0,??DataTable5_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   73     WFLY_RC_PWM_width_measure_timer_init_struct.PIT_Isr = WFLY_RC_TimerOutIsr;
        LDR.N    R0,??DataTable5_2
        ADR.W    R1,WFLY_RC_TimerOutIsr
        STR      R1,[R0, #+16]
//   74     LPLD_PIT_Init(WFLY_RC_PWM_width_measure_timer_init_struct);
        LDR.N    R1,??DataTable5_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   75     LPLD_PIT_EnableIrq(WFLY_RC_PWM_width_measure_timer_init_struct);
        LDR.N    R1,??DataTable5_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   76 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   77 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   78 void PORTA_ExtIsr(void)
//   79 {
PORTA_ExtIsr:
        PUSH     {R4,LR}
//   80     if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH0_PWM_INPUT_PIN_NUM)))    
        LDR.N    R0,??DataTable5_3  ;; 0x400490a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+26
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTA_ExtIsr_0
//   81     {
//   82         WFLY_RC_CHX_InputPWMMeasureIsr(0);
        MOVS     R0,#+0
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//   83     }
//   84     if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH1_PWM_INPUT_PIN_NUM)))    
??PORTA_ExtIsr_0:
        LDR.N    R0,??DataTable5_3  ;; 0x400490a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+27
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTA_ExtIsr_1
//   85     {
//   86         WFLY_RC_CHX_InputPWMMeasureIsr(1);
        MOVS     R0,#+1
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//   87     }
//   88     if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH2_PWM_INPUT_PIN_NUM)))    
??PORTA_ExtIsr_1:
        LDR.N    R0,??DataTable5_3  ;; 0x400490a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+28
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTA_ExtIsr_2
//   89     {
//   90         WFLY_RC_CHX_InputPWMMeasureIsr(2);
        MOVS     R0,#+2
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//   91     }
//   92     if(LPLD_GPIO_IsPinxExt(PORTA, PinNum2GpioPin(WFLY_RC_CH3_PWM_INPUT_PIN_NUM)))    
??PORTA_ExtIsr_2:
        LDR.N    R0,??DataTable5_3  ;; 0x400490a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+29
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTA_ExtIsr_3
//   93     {
//   94         WFLY_RC_CHX_InputPWMMeasureIsr(3);
        MOVS     R0,#+3
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//   95     }
//   96 }
??PORTA_ExtIsr_3:
        POP      {R4,PC}          ;; return
//   97 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   98 void PORTB_ExtIsr(void)
//   99 {
PORTB_ExtIsr:
        PUSH     {R4,LR}
//  100     if(LPLD_GPIO_IsPinxExt(PORTB, PinNum2GpioPin(WFLY_RC_CH4_PWM_INPUT_PIN_NUM)))    
        LDR.N    R0,??DataTable5_4  ;; 0x4004a0a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+5
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTB_ExtIsr_0
//  101     {
//  102         WFLY_RC_CHX_InputPWMMeasureIsr(4);
        MOVS     R0,#+4
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//  103     }
//  104     if(LPLD_GPIO_IsPinxExt(PORTB, PinNum2GpioPin(WFLY_RC_CH5_PWM_INPUT_PIN_NUM)))    
??PORTB_ExtIsr_0:
        LDR.N    R0,??DataTable5_4  ;; 0x4004a0a0
        LDR      R4,[R0, #+0]
        MOVS     R0,#+6
        BL       PinNum2GpioPin
        TST      R4,R0
        BEQ.N    ??PORTB_ExtIsr_1
//  105     {
//  106         WFLY_RC_CHX_InputPWMMeasureIsr(5);
        MOVS     R0,#+5
        BL       WFLY_RC_CHX_InputPWMMeasureIsr
//  107     }
//  108 }
??PORTB_ExtIsr_1:
        POP      {R4,PC}          ;; return
//  109 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  110 void WFLY_RC_TimerOutIsr(void)
//  111 {
//  112     int i = 0;
WFLY_RC_TimerOutIsr:
        MOVS     R0,#+0
//  113     g_WFLY_RC_timer_out_flag = 1;
        LDR.N    R1,??DataTable5_5
        MOVS     R2,#+1
        STRB     R2,[R1, #+0]
//  114     
//  115     for(i = 0; i < WFLY_RC_CHANNEL_NUM; i ++)
        MOVS     R1,#+0
        MOVS     R0,R1
??WFLY_RC_TimerOutIsr_0:
        CMP      R0,#+6
        BGE.N    ??WFLY_RC_TimerOutIsr_1
//  116     {
//  117         g_WFLY_RC_pluse_width_us[i] = 0;
        LDR.N    R1,??DataTable5_6
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//  118     }
        ADDS     R0,R0,#+1
        B.N      ??WFLY_RC_TimerOutIsr_0
//  119 }
??WFLY_RC_TimerOutIsr_1:
        BX       LR               ;; return
//  120 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void WFLY_RC_CHX_InputPWMMeasureIsr(uint8 channel_num)
//  122 {
WFLY_RC_CHX_InputPWMMeasureIsr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  123     static uint32 s_WFLY_RC_pluse_beggin_reg_time[WFLY_RC_CHANNEL_NUM] = {0, 0, 0, 0, 0, 0};
//  124 //    static uint8 s_WFLY_RC_pluse_measure_complete_flag[WFLY_RC_CHANNEL_NUM] = {0, 0, 0, 0, 0, 0};
//  125     int32 reg_time_diff = 0;
        MOVS     R5,#+0
//  126 
//  127     switch(channel_num)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_0
        CMP      R4,#+2
        BEQ.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_1
        BCC.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_2
        CMP      R4,#+4
        BEQ.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_3
        BCC.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_4
        CMP      R4,#+5
        BEQ.W    ??WFLY_RC_CHX_InputPWMMeasureIsr_5
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_6
//  128     {
//  129         case 0: 
//  130             if(WFLY_RC_CH0_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_0:
        LDR.N    R0,??DataTable5_7  ;; 0x43fe0268
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_7
//  131             {
//  132                 s_WFLY_RC_pluse_beggin_reg_time[0] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_8
//  133 //                s_WFLY_RC_pluse_measure_complete_flag[0] = 0;
//  134             }
//  135             else
//  136             {
//  137                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[0] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_7:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  138                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_8
//  139                 {
//  140                     g_WFLY_RC_pluse_width_us[0] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  141 //                    s_WFLY_RC_pluse_measure_complete_flag[0] = 1;
//  142                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  143                 }
//  144             }
//  145             break;
??WFLY_RC_CHX_InputPWMMeasureIsr_8:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  146 
//  147         case 1: 
//  148             if(WFLY_RC_CH1_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_2:
        LDR.N    R0,??DataTable5_12  ;; 0x43fe026c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_10
//  149             {
//  150                 s_WFLY_RC_pluse_beggin_reg_time[1] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+4]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_11
//  151 //                s_WFLY_RC_pluse_measure_complete_flag[1] = 0;
//  152             }
//  153             else
//  154             {
//  155                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[1] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_10:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  156                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_11
//  157                 {
//  158                     g_WFLY_RC_pluse_width_us[1] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+4]
//  159 //                    s_WFLY_RC_pluse_measure_complete_flag[1] = 1;
//  160                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  161                 }
//  162             }
//  163             break;
??WFLY_RC_CHX_InputPWMMeasureIsr_11:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  164 
//  165         case 2: 
//  166             if(WFLY_RC_CH2_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_1:
        LDR.N    R0,??DataTable5_13  ;; 0x43fe0270
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_12
//  167             {
//  168                 s_WFLY_RC_pluse_beggin_reg_time[2] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+8]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_13
//  169 //                s_WFLY_RC_pluse_measure_complete_flag[2] = 0;
//  170             }
//  171             else
//  172             {
//  173                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[2] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_12:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  174                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_13
//  175                 {
//  176                     g_WFLY_RC_pluse_width_us[2] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+8]
//  177 //                    s_WFLY_RC_pluse_measure_complete_flag[2] = 1;
//  178                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  179                 }
//  180             }
//  181             break;
??WFLY_RC_CHX_InputPWMMeasureIsr_13:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  182 
//  183         case 3: 
//  184             if(WFLY_RC_CH3_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_4:
        LDR.N    R0,??DataTable5_14  ;; 0x43fe0274
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_14
//  185             {
//  186                 s_WFLY_RC_pluse_beggin_reg_time[3] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+12]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_15
//  187 //                s_WFLY_RC_pluse_measure_complete_flag[3] = 0;
//  188             }
//  189             else
//  190             {
//  191                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[3] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_14:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  192                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_15
//  193                 {
//  194                     g_WFLY_RC_pluse_width_us[3] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+12]
//  195 //                    s_WFLY_RC_pluse_measure_complete_flag[3] = 1;
//  196                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  197                 }
//  198             }
//  199             break;          
??WFLY_RC_CHX_InputPWMMeasureIsr_15:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  200 
//  201         case 4: 
//  202             if(WFLY_RC_CH4_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_3:
        LDR.N    R0,??DataTable5_15  ;; 0x43fe0a14
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_16
//  203             {
//  204                 s_WFLY_RC_pluse_beggin_reg_time[4] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+16]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_17
//  205 //                s_WFLY_RC_pluse_measure_complete_flag[4] = 0;
//  206             }
//  207             else
//  208             {
//  209                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[4] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_16:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+16]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  210                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_17
//  211                 {
//  212                     g_WFLY_RC_pluse_width_us[4] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+16]
//  213 //                    s_WFLY_RC_pluse_measure_complete_flag[4] = 1;
//  214                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  215                 }
//  216             }
//  217             break;
??WFLY_RC_CHX_InputPWMMeasureIsr_17:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  218 
//  219         case 5: 
//  220             if(WFLY_RC_CH5_INPUT == 1)
??WFLY_RC_CHX_InputPWMMeasureIsr_5:
        LDR.N    R0,??DataTable5_16  ;; 0x43fe0a18
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_18
//  221             {
//  222                 s_WFLY_RC_pluse_beggin_reg_time[5] = PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL; 
        LDR.N    R0,??DataTable5_8
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+20]
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_19
//  223 //                s_WFLY_RC_pluse_measure_complete_flag[5] = 0;
//  224             }
//  225             else
//  226             {
//  227                 reg_time_diff =s_WFLY_RC_pluse_beggin_reg_time[5] - PIT->CHANNEL[WFLY_RC_PWM_WIDTH_MEASURE_TIMER_PITX].CVAL;
??WFLY_RC_CHX_InputPWMMeasureIsr_18:
        LDR.N    R0,??DataTable5_8
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable5_9  ;; 0x40037134
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        MOVS     R5,R0
//  228                 if(reg_time_diff > 0)
        CMP      R5,#+1
        BLT.N    ??WFLY_RC_CHX_InputPWMMeasureIsr_19
//  229                 {
//  230                     g_WFLY_RC_pluse_width_us[5] = reg_time_diff / (g_bus_clock / 1000000);
        LDR.N    R0,??DataTable5_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11  ;; 0xf4240
        UDIV     R0,R0,R1
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+20]
//  231 //                    s_WFLY_RC_pluse_measure_complete_flag[5] = 1;
//  232                     WFLY_RC_ResetTimer();
        BL       WFLY_RC_ResetTimer
//  233                 }
//  234             }
//  235             break;  
??WFLY_RC_CHX_InputPWMMeasureIsr_19:
        B.N      ??WFLY_RC_CHX_InputPWMMeasureIsr_9
//  236 
//  237         default:
//  238             break;
//  239     }
//  240 
//  241 //    if(s_WFLY_RC_pluse_measure_complete_flag[0] && s_WFLY_RC_pluse_measure_complete_flag[1] && s_WFLY_RC_pluse_measure_complete_flag[2] && s_WFLY_RC_pluse_measure_complete_flag[3])
//  242 //    {
//  243 //        WFLY_RC_ResetTimer();
//  244 //    }
//  245 }
??WFLY_RC_CHX_InputPWMMeasureIsr_6:
??WFLY_RC_CHX_InputPWMMeasureIsr_9:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??s_WFLY_RC_pluse_beggin_reg_time:
        DS8 24
//  246 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 void WFLY_RC_ResetTimer(void)
//  248 {
WFLY_RC_ResetTimer:
        PUSH     {R7,LR}
//  249     g_WFLY_RC_timer_out_flag = 0;
        LDR.N    R0,??DataTable5_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  250     LPLD_PIT_Init(WFLY_RC_PWM_width_measure_timer_init_struct);
        LDR.N    R1,??DataTable5_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//  251     LPLD_PIT_EnableIrq(WFLY_RC_PWM_width_measure_timer_init_struct);    
        LDR.N    R1,??DataTable5_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//  252 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     WFLY_RC_PWM_width_measure_timer_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x400490a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     g_WFLY_RC_timer_out_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     g_WFLY_RC_pluse_width_us

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     0x43fe0268

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     ??s_WFLY_RC_pluse_beggin_reg_time

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x40037134

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x43fe026c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x43fe0270

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x43fe0274

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x43fe0a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x43fe0a18

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
//    69 bytes in section .bss
//    20 bytes in section .rodata
// 1 144 bytes in section .text
// 
// 1 144 bytes of CODE  memory
//    20 bytes of CONST memory
//    69 bytes of DATA  memory
//
//Errors: none
//Warnings: none
