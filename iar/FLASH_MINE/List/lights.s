///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:23 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\lights.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\lights.c -D LPLD_K60 -lCN                           /
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
//                    MINE\List\lights.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lights

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC InitLight
        PUBLIC SetLightsOnOff
        PUBLIC SetOneLightOnOff
        PUBLIC ToggleLights
        PUBLIC ToggleOneLight
        PUBLIC TurnOffLights
        PUBLIC TurnOnLights

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\lights.c
//    1 /****************************************************************************** 
//    2  *       lights.c ----- The code for led lights use          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  lights.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/21 9:45:25                                                       *
//   10  ******************************************************************************/
//   11 #include "lights.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitLight(void)
//   14 {
InitLight:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   15     GPIO_InitTypeDef light_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   16 
//   17     light_init_struct.GPIO_PTx      = LED0_PORT;
        LDR.W    R0,??DataTable2  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   18     light_init_struct.GPIO_Pins     = LED0_GPIO_PIN;
        MOVS     R0,#+25
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   19     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   20     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   21     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   22     light_init_struct.GPIO_Isr      = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   23     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   24 
//   25     light_init_struct.GPIO_PTx      = LED1_PORT;
        LDR.W    R0,??DataTable2  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   26     light_init_struct.GPIO_Pins     = LED1_GPIO_PIN;
        MOVS     R0,#+24
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   27     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   28     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   29     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   30     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   31     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   32 
//   33     light_init_struct.GPIO_PTx      = LED2_PORT;
        LDR.W    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   34     light_init_struct.GPIO_Pins     = LED2_GPIO_PIN;
        MOVS     R0,#+8
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   35     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   36     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   37     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   38     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   39     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   40 
//   41     light_init_struct.GPIO_PTx      = LED3_PORT;
        LDR.W    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   42     light_init_struct.GPIO_Pins     = LED3_GPIO_PIN;
        MOVS     R0,#+9
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   43     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   44     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   45     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   46     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   47     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   48 
//   49     light_init_struct.GPIO_PTx      = LED4_PORT;
        LDR.N    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   50     light_init_struct.GPIO_Pins     = LED4_GPIO_PIN;
        MOVS     R0,#+16
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   51     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   52     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   53     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   54     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   55     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   56 
//   57     light_init_struct.GPIO_PTx      = LED5_PORT;
        LDR.N    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   58     light_init_struct.GPIO_Pins     = LED5_GPIO_PIN;
        MOVS     R0,#+17
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   59     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   60     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   61     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   62     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   63     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   64 
//   65     light_init_struct.GPIO_PTx      = LED6_PORT;
        LDR.N    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   66     light_init_struct.GPIO_Pins     = LED6_GPIO_PIN;
        MOVS     R0,#+18
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   67     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   68     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   69     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   70     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   71     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   72 
//   73     light_init_struct.GPIO_PTx      = LED7_PORT;
        LDR.N    R0,??DataTable2_1  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   74     light_init_struct.GPIO_Pins     = LED7_GPIO_PIN;
        MOVS     R0,#+19
        BL       PinNum2GpioPin
        STR      R0,[SP, #+8]
//   75     light_init_struct.GPIO_Dir      = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   76     light_init_struct.GPIO_Output   = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   77     light_init_struct.GPIO_PinControl = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   78     light_init_struct.GPIO_Isr      = NULL;    
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   79     LPLD_GPIO_Init(light_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   80 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   81 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void TurnOnLights(uint8 mask)
//   83 {
TurnOnLights:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   84     int i = 0;
        MOVS     R5,#+0
//   85 
//   86     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??TurnOnLights_0:
        CMP      R5,#+8
        BGE.N    ??TurnOnLights_1
//   87     {
//   88         if(mask & 0x01)
        LSLS     R0,R4,#+31
        BPL.N    ??TurnOnLights_2
//   89         {
//   90             SetOneLightOnOff(i, 1);
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       SetOneLightOnOff
//   91         }
//   92         mask = mask >> 1;
??TurnOnLights_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   93     }
        ADDS     R5,R5,#+1
        B.N      ??TurnOnLights_0
//   94 }
??TurnOnLights_1:
        POP      {R0,R4,R5,PC}    ;; return
//   95 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 void TurnOffLights(uint8 mask)
//   97 {
TurnOffLights:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   98     int i = 0;
        MOVS     R5,#+0
//   99 
//  100     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??TurnOffLights_0:
        CMP      R5,#+8
        BGE.N    ??TurnOffLights_1
//  101     {
//  102         if(mask & 0x01)
        LSLS     R0,R4,#+31
        BPL.N    ??TurnOffLights_2
//  103         {
//  104             SetOneLightOnOff(i, 0);
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       SetOneLightOnOff
//  105         }
//  106         mask = mask >> 1;
??TurnOffLights_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//  107     }
        ADDS     R5,R5,#+1
        B.N      ??TurnOffLights_0
//  108 }
??TurnOffLights_1:
        POP      {R0,R4,R5,PC}    ;; return
//  109 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  110 void SetLightsOnOff(uint8 mask)
//  111 {
SetLightsOnOff:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  112     int i = 0;
        MOVS     R5,#+0
//  113 
//  114     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??SetLightsOnOff_0:
        CMP      R5,#+8
        BGE.N    ??SetLightsOnOff_1
//  115     {
//  116         if(mask & 0x01)
        LSLS     R0,R4,#+31
        BPL.N    ??SetLightsOnOff_2
//  117         {
//  118             SetOneLightOnOff(i, 1);
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       SetOneLightOnOff
        B.N      ??SetLightsOnOff_3
//  119         }
//  120         else
//  121         {
//  122             SetOneLightOnOff(i, 0);
??SetLightsOnOff_2:
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       SetOneLightOnOff
//  123         }
//  124         mask = mask >> 1;
??SetLightsOnOff_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//  125     }
        ADDS     R5,R5,#+1
        B.N      ??SetLightsOnOff_0
//  126 }
??SetLightsOnOff_1:
        POP      {R0,R4,R5,PC}    ;; return
//  127 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void SetOneLightOnOff(int led_num, uint8 state)
//  129 {
//  130     if((led_num >=0) && (led_num < LIGHTS_AMOUNT))
SetOneLightOnOff:
        CMP      R0,#+0
        BMI.N    ??SetOneLightOnOff_0
        CMP      R0,#+8
        BGE.N    ??SetOneLightOnOff_0
//  131     {
//  132     switch (led_num)
        CMP      R0,#+0
        BEQ.N    ??SetOneLightOnOff_1
        CMP      R0,#+2
        BEQ.N    ??SetOneLightOnOff_2
        BCC.N    ??SetOneLightOnOff_3
        CMP      R0,#+4
        BEQ.N    ??SetOneLightOnOff_4
        BCC.N    ??SetOneLightOnOff_5
        CMP      R0,#+6
        BEQ.N    ??SetOneLightOnOff_6
        BCC.N    ??SetOneLightOnOff_7
        CMP      R0,#+7
        BEQ.N    ??SetOneLightOnOff_8
        B.N      ??SetOneLightOnOff_9
//  133     {
//  134         case 0: 
//  135                 LED0_OUTPUT = !state;
??SetOneLightOnOff_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_10
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_11
??SetOneLightOnOff_10:
        MOVS     R2,#+0
??SetOneLightOnOff_11:
        LDR.N    R3,??DataTable2_2  ;; 0x43fe0064
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  136                 //LPLD_GPIO_Output_b(LED0_PORT, LED0_PIN_NUM, (uint8)!state);
//  137                 break;
        B.N      ??SetOneLightOnOff_0
//  138         case 1: 
//  139                 LED1_OUTPUT = !state;
??SetOneLightOnOff_3:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_12
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_13
??SetOneLightOnOff_12:
        MOVS     R2,#+0
??SetOneLightOnOff_13:
        LDR.N    R3,??DataTable2_3  ;; 0x43fe0060
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  140                 //LPLD_GPIO_Output_b(LED1_PORT, LED1_PIN_NUM, (uint8)!state);
//  141                 break;
        B.N      ??SetOneLightOnOff_0
//  142         case 2: 
//  143                 LED2_OUTPUT = !state;
??SetOneLightOnOff_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_14
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_15
??SetOneLightOnOff_14:
        MOVS     R2,#+0
??SetOneLightOnOff_15:
        LDR.N    R3,??DataTable2_4  ;; 0x43fe1020
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  144                 //LPLD_GPIO_Output_b(LED2_PORT, LED2_PIN_NUM, (uint8)!state);
//  145                 break;
        B.N      ??SetOneLightOnOff_0
//  146         case 3: 
//  147                 LED3_OUTPUT = !state;
??SetOneLightOnOff_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_16
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_17
??SetOneLightOnOff_16:
        MOVS     R2,#+0
??SetOneLightOnOff_17:
        LDR.N    R3,??DataTable2_5  ;; 0x43fe1024
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  148                 //LPLD_GPIO_Output_b(LED3_PORT, LED3_PIN_NUM, (uint8)!state);
//  149                 break;
        B.N      ??SetOneLightOnOff_0
//  150         case 4: 
//  151                 LED4_OUTPUT = !state;
??SetOneLightOnOff_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_18
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_19
??SetOneLightOnOff_18:
        MOVS     R2,#+0
??SetOneLightOnOff_19:
        LDR.N    R3,??DataTable2_6  ;; 0x43fe1040
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  152                 //LPLD_GPIO_Output_b(LED4_PORT, LED4_PIN_NUM, (uint8)!state);
//  153                 break;
        B.N      ??SetOneLightOnOff_0
//  154         case 5: 
//  155                 LED5_OUTPUT = !state;
??SetOneLightOnOff_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_20
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_21
??SetOneLightOnOff_20:
        MOVS     R2,#+0
??SetOneLightOnOff_21:
        LDR.N    R3,??DataTable2_7  ;; 0x43fe1044
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  156                 //LPLD_GPIO_Output_b(LED5_PORT, LED5_PIN_NUM, (uint8)!state);
//  157                 break;
        B.N      ??SetOneLightOnOff_0
//  158         case 6: 
//  159                 LED6_OUTPUT = !state;
??SetOneLightOnOff_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_22
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_23
??SetOneLightOnOff_22:
        MOVS     R2,#+0
??SetOneLightOnOff_23:
        LDR.N    R3,??DataTable2_8  ;; 0x43fe1048
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  160                 //LPLD_GPIO_Output_b(LED6_PORT, LED6_PIN_NUM, (uint8)!state);
//  161                 break;
        B.N      ??SetOneLightOnOff_0
//  162         case 7: 
//  163                 LED7_OUTPUT = !state;
??SetOneLightOnOff_8:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??SetOneLightOnOff_24
        MOVS     R2,#+1
        B.N      ??SetOneLightOnOff_25
??SetOneLightOnOff_24:
        MOVS     R2,#+0
??SetOneLightOnOff_25:
        LDR.N    R3,??DataTable2_9  ;; 0x43fe104c
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R2,[R3, #+0]
//  164                 //LPLD_GPIO_Output_b(LED7_PORT, LED7_PIN_NUM, (uint8)!state);
//  165                 break;
        B.N      ??SetOneLightOnOff_0
//  166         default:
//  167                 break;
//  168     }
//  169     }
//  170 }
??SetOneLightOnOff_9:
??SetOneLightOnOff_0:
        BX       LR               ;; return
//  171 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  172 void ToggleOneLight(int led_num)
//  173 {
//  174     if((led_num >=0) && (led_num < LIGHTS_AMOUNT))
ToggleOneLight:
        CMP      R0,#+0
        BMI.N    ??ToggleOneLight_0
        CMP      R0,#+8
        BGE.N    ??ToggleOneLight_0
//  175     {    
//  176     switch (led_num)
        CMP      R0,#+0
        BEQ.N    ??ToggleOneLight_1
        CMP      R0,#+2
        BEQ.N    ??ToggleOneLight_2
        BCC.N    ??ToggleOneLight_3
        CMP      R0,#+4
        BEQ.N    ??ToggleOneLight_4
        BCC.N    ??ToggleOneLight_5
        CMP      R0,#+6
        BEQ.N    ??ToggleOneLight_6
        BCC.N    ??ToggleOneLight_7
        CMP      R0,#+7
        BEQ.N    ??ToggleOneLight_8
        B.N      ??ToggleOneLight_9
//  177     {
//  178         case 0: 
//  179                 LED0_OUTPUT = !LED0_INPUT;
??ToggleOneLight_1:
        LDR.N    R1,??DataTable2_10  ;; 0x43fe0264
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_10
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_11
??ToggleOneLight_10:
        MOVS     R1,#+0
??ToggleOneLight_11:
        LDR.N    R2,??DataTable2_2  ;; 0x43fe0064
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  180                 //LPLD_GPIO_Toggle_b(LED0_PORT, LED0_PIN_NUM);
//  181                 break;
        B.N      ??ToggleOneLight_0
//  182         case 1: 
//  183                 LED1_OUTPUT = !LED1_INPUT;
??ToggleOneLight_3:
        LDR.N    R1,??DataTable2_11  ;; 0x43fe0260
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_12
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_13
??ToggleOneLight_12:
        MOVS     R1,#+0
??ToggleOneLight_13:
        LDR.N    R2,??DataTable2_3  ;; 0x43fe0060
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  184                 //LPLD_GPIO_Toggle_b(LED1_PORT, LED1_PIN_NUM);
//  185                 break;
        B.N      ??ToggleOneLight_0
//  186         case 2: 
//  187                 LED2_OUTPUT = !LED2_INPUT;                
??ToggleOneLight_2:
        LDR.N    R1,??DataTable2_12  ;; 0x43fe1220
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_14
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_15
??ToggleOneLight_14:
        MOVS     R1,#+0
??ToggleOneLight_15:
        LDR.N    R2,??DataTable2_4  ;; 0x43fe1020
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  188                 //LPLD_GPIO_Toggle_b(LED2_PORT, LED2_PIN_NUM);
//  189                 break;
        B.N      ??ToggleOneLight_0
//  190         case 3: 
//  191                 LED3_OUTPUT = !LED3_INPUT; 
??ToggleOneLight_5:
        LDR.N    R1,??DataTable2_13  ;; 0x43fe1224
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_16
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_17
??ToggleOneLight_16:
        MOVS     R1,#+0
??ToggleOneLight_17:
        LDR.N    R2,??DataTable2_5  ;; 0x43fe1024
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  192                 //LPLD_GPIO_Toggle_b(LED3_PORT, LED3_PIN_NUM);
//  193                 break;
        B.N      ??ToggleOneLight_0
//  194         case 4: 
//  195                 LED4_OUTPUT = !LED4_INPUT; 
??ToggleOneLight_4:
        LDR.N    R1,??DataTable2_14  ;; 0x43fe1240
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_18
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_19
??ToggleOneLight_18:
        MOVS     R1,#+0
??ToggleOneLight_19:
        LDR.N    R2,??DataTable2_6  ;; 0x43fe1040
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  196                 //LPLD_GPIO_Toggle_b(LED4_PORT, LED4_PIN_NUM);
//  197                 break;
        B.N      ??ToggleOneLight_0
//  198         case 5: 
//  199                 LED5_OUTPUT = !LED5_INPUT; 
??ToggleOneLight_7:
        LDR.N    R1,??DataTable2_15  ;; 0x43fe1244
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_20
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_21
??ToggleOneLight_20:
        MOVS     R1,#+0
??ToggleOneLight_21:
        LDR.N    R2,??DataTable2_7  ;; 0x43fe1044
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  200                 //LPLD_GPIO_Toggle_b(LED5_PORT, LED5_PIN_NUM);
//  201                 break;
        B.N      ??ToggleOneLight_0
//  202         case 6: 
//  203                 LED6_OUTPUT = !LED6_INPUT; 
??ToggleOneLight_6:
        LDR.N    R1,??DataTable2_16  ;; 0x43fe1248
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_22
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_23
??ToggleOneLight_22:
        MOVS     R1,#+0
??ToggleOneLight_23:
        LDR.N    R2,??DataTable2_8  ;; 0x43fe1048
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  204                 //LPLD_GPIO_Toggle_b(LED6_PORT, LED6_PIN_NUM);
//  205                 break;
        B.N      ??ToggleOneLight_0
//  206         case 7: 
//  207                 LED7_OUTPUT = !LED7_INPUT; 
??ToggleOneLight_8:
        LDR.N    R1,??DataTable2_17  ;; 0x43fe124c
        LDR      R1,[R1, #+0]
        CMP      R1,#+0
        BNE.N    ??ToggleOneLight_24
        MOVS     R1,#+1
        B.N      ??ToggleOneLight_25
??ToggleOneLight_24:
        MOVS     R1,#+0
??ToggleOneLight_25:
        LDR.N    R2,??DataTable2_9  ;; 0x43fe104c
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R1,[R2, #+0]
//  208                 //LPLD_GPIO_Toggle_b(LED7_PORT, LED7_PIN_NUM);
//  209                 break;
        B.N      ??ToggleOneLight_0
//  210         default:
//  211                 break;
//  212     }    
//  213     }
//  214 }
??ToggleOneLight_9:
??ToggleOneLight_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x43fe0064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x43fe0060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x43fe1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x43fe1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x43fe1040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x43fe1044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x43fe1048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x43fe104c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x43fe0264

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x43fe0260

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x43fe1220

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0x43fe1224

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0x43fe1240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     0x43fe1244

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     0x43fe1248

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     0x43fe124c
//  215 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 void ToggleLights(uint8 mask)
//  217 {
ToggleLights:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  218     int i = 0;
        MOVS     R5,#+0
//  219 
//  220     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ToggleLights_0:
        CMP      R5,#+8
        BGE.N    ??ToggleLights_1
//  221     {
//  222         if(mask & 0x01)
        LSLS     R0,R4,#+31
        BPL.N    ??ToggleLights_2
//  223         {
//  224             ToggleOneLight(i);
        MOVS     R0,R5
        BL       ToggleOneLight
//  225         }
//  226         mask = mask >> 1;
??ToggleLights_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//  227     }    
        ADDS     R5,R5,#+1
        B.N      ??ToggleLights_0
//  228 }
??ToggleLights_1:
        POP      {R0,R4,R5,PC}    ;; return

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
//    20 bytes in section .rodata
// 1 060 bytes in section .text
// 
// 1 060 bytes of CODE  memory
//    20 bytes of CONST memory
//
//Errors: none
//Warnings: none
