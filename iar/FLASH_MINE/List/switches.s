///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:42 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\switches.c                                          /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\switches.c -D LPLD_K60 -lCN                         /
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
//                    MINE\List\switches.s                                    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME switches

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_b
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC InitSwitches
        PUBLIC ReadSwitches

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\switches.c
//    1 /****************************************************************************** 
//    2  *       switches.c ----- The code of switches use          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  switches.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/23 16:37:57                                                       *
//   10  ******************************************************************************/
//   11 #include "switches.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitSwitches(void)
//   14 {
InitSwitches:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   15     GPIO_InitTypeDef switch_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   16 
//   17     switch_init_struct.GPIO_PTx     = SWITCH0_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   18     switch_init_struct.GPIO_Pins    = SWITCH0_GPIO_PIN;
        MOVS     R0,#+28
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   19     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   20     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   21 
//   22     switch_init_struct.GPIO_PTx     = SWITCH1_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   23     switch_init_struct.GPIO_Pins    = SWITCH1_GPIO_PIN;
        MOVS     R0,#+27
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   24     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   25     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   26 
//   27     switch_init_struct.GPIO_PTx     = SWITCH2_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   28     switch_init_struct.GPIO_Pins    = SWITCH2_GPIO_PIN;
        MOVS     R0,#+26
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   29     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   30     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   31 
//   32     switch_init_struct.GPIO_PTx     = SWITCH3_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   33     switch_init_struct.GPIO_Pins    = SWITCH3_GPIO_PIN;
        MOVS     R0,#+12
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   34     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   35     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   36 
//   37     switch_init_struct.GPIO_PTx     = SWITCH4_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   38     switch_init_struct.GPIO_Pins    = SWITCH4_GPIO_PIN;
        MOVS     R0,#+11
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   39     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   40     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   41 
//   42     switch_init_struct.GPIO_PTx     = SWITCH5_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   43     switch_init_struct.GPIO_Pins    = SWITCH5_GPIO_PIN;
        MOVS     R0,#+10
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   44     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   45     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   46 
//   47     switch_init_struct.GPIO_PTx     = SWITCH6_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   48     switch_init_struct.GPIO_Pins    = SWITCH6_GPIO_PIN;
        MOVS     R0,#+9
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   49     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   50     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   51 
//   52     switch_init_struct.GPIO_PTx     = SWITCH7_PORT;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   53     switch_init_struct.GPIO_Pins    = SWITCH7_GPIO_PIN;
        MOVS     R0,#+8
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   54     switch_init_struct.GPIO_Dir     = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   55     LPLD_GPIO_Init(switch_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   56 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   57 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 uint8 ReadSwitches(uint8 mask)
//   59 {
ReadSwitches:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//   60     int i = 0;
        MOVS     R5,#+0
//   61     uint8 ret = 0x00;
        MOVS     R6,#+0
//   62     uint8 temp_bit_state = 0x00;
        MOVS     R7,#+0
//   63 
//   64     for(i = 0; i < SWITCHES_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ReadSwitches_0:
        CMP      R5,#+8
        BGE.N    ??ReadSwitches_1
//   65     {
//   66         if(mask & 0x01)
        LSLS     R0,R4,#+31
        BPL.N    ??ReadSwitches_2
//   67         {
//   68             switch(i)
        CMP      R5,#+0
        BEQ.N    ??ReadSwitches_3
        CMP      R5,#+2
        BEQ.N    ??ReadSwitches_4
        BCC.N    ??ReadSwitches_5
        CMP      R5,#+4
        BEQ.N    ??ReadSwitches_6
        BCC.N    ??ReadSwitches_7
        CMP      R5,#+6
        BEQ.N    ??ReadSwitches_8
        BCC.N    ??ReadSwitches_9
        CMP      R5,#+7
        BEQ.N    ??ReadSwitches_10
        B.N      ??ReadSwitches_11
//   69             {
//   70                 case 0 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH0_PORT, SWITCH0_PIN_NUM);
??ReadSwitches_3:
        MOVS     R1,#+28
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   71                          break;
        B.N      ??ReadSwitches_12
//   72                 case 1 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH1_PORT, SWITCH1_PIN_NUM);
??ReadSwitches_5:
        MOVS     R1,#+27
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   73                          break;
        B.N      ??ReadSwitches_12
//   74                 case 2 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH2_PORT, SWITCH2_PIN_NUM);
??ReadSwitches_4:
        MOVS     R1,#+26
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   75                          break;
        B.N      ??ReadSwitches_12
//   76                 case 3 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH3_PORT, SWITCH3_PIN_NUM);
??ReadSwitches_7:
        MOVS     R1,#+12
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   77                          break;
        B.N      ??ReadSwitches_12
//   78                 case 4 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH4_PORT, SWITCH4_PIN_NUM);
??ReadSwitches_6:
        MOVS     R1,#+11
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   79                          break;
        B.N      ??ReadSwitches_12
//   80                 case 5 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH5_PORT, SWITCH5_PIN_NUM);
??ReadSwitches_9:
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   81                          break;
        B.N      ??ReadSwitches_12
//   82                 case 6 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH6_PORT, SWITCH6_PIN_NUM);
??ReadSwitches_8:
        MOVS     R1,#+9
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   83                          break;
        B.N      ??ReadSwitches_12
//   84                 case 7 : temp_bit_state = LPLD_GPIO_Input_b(SWITCH7_PORT, SWITCH7_PIN_NUM);
??ReadSwitches_10:
        MOVS     R1,#+8
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        MOVS     R7,R0
//   85                          break;
        B.N      ??ReadSwitches_12
//   86                 default:
//   87                          break;
//   88             }
//   89             ret = ret | (temp_bit_state << i);
??ReadSwitches_11:
??ReadSwitches_12:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,R5
        ORRS     R6,R0,R6
//   90         }
//   91         mask = mask >> 1;
??ReadSwitches_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   92     }
        ADDS     R5,R5,#+1
        B.N      ??ReadSwitches_0
//   93 
//   94     return ret;
??ReadSwitches_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//   95 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff100

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
//  20 bytes in section .rodata
// 476 bytes in section .text
// 
// 476 bytes of CODE  memory
//  20 bytes of CONST memory
//
//Errors: none
//Warnings: none
