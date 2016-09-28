///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    21/Mar/2014  17:07:35 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\lights.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\lights.c -D LPLD_K60 -lCN                           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH\ /
//                    List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\ /
//                    iar\FLASH\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\FLASH\Obj\ --no_cse --no_unroll            /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\module\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\source\lib\common\ -I                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\..\source\lib\LPLD\HW\ -I                    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\DEV\ -I E:\ShawnDocuments\IAR_WorkSpace\LP /
//                    LD_Quad_V2\iar\..\source\lib\uCOS-II\Ports\ -I          /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\uCOS-II\Source\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V2\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V2\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\class\ -Ol -I "D:\Program Files\IAR         /
//                    Systems\Embedded Workbench 6.4\arm\CMSIS\Include\" -D   /
//                    ARM_MATH_CM4                                            /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH\ /
//                    List\lights.s                                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME lights

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_GPIO_Toggle_b
        EXTERN __aeabi_memcpy4

        PUBLIC light_init
        PUBLIC set_light_1_on_off
        PUBLIC set_lights_on_off
        PUBLIC toggle_light_1
        PUBLIC toggle_lights
        PUBLIC turn_lights_off
        PUBLIC turn_lights_on

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\lights.c
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
//   13 void light_init(void)
//   14 {
light_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   15     GPIO_InitTypeDef light_init_struct;
//   16 
//   17     light_init_struct.GPIO_PTx = LED0_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   18     light_init_struct.GPIO_Pins = LED0_GPIO_PIN;
        MOV      R0,#+4096
        STR      R0,[SP, #+8]
//   19     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   20     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   21     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   22 
//   23     light_init_struct.GPIO_PTx = LED1_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   24     light_init_struct.GPIO_Pins = LED1_GPIO_PIN;
        MOV      R0,#+8192
        STR      R0,[SP, #+8]
//   25     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   26     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   27     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   28 
//   29     light_init_struct.GPIO_PTx = LED2_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   30     light_init_struct.GPIO_Pins = LED2_GPIO_PIN;
        MOV      R0,#+16384
        STR      R0,[SP, #+8]
//   31     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   32     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   33     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   34 
//   35     light_init_struct.GPIO_PTx = LED3_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   36     light_init_struct.GPIO_Pins = LED3_GPIO_PIN;
        MOV      R0,#+32768
        STR      R0,[SP, #+8]
//   37     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   38     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   39     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   40 
//   41     light_init_struct.GPIO_PTx = LED4_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   42     light_init_struct.GPIO_Pins = LED4_GPIO_PIN;
        MOVS     R0,#+65536
        STR      R0,[SP, #+8]
//   43     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   44     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   45     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   46 
//   47     light_init_struct.GPIO_PTx = LED5_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   48     light_init_struct.GPIO_Pins = LED5_GPIO_PIN;
        MOVS     R0,#+131072
        STR      R0,[SP, #+8]
//   49     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   50     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   51     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   52 
//   53     light_init_struct.GPIO_PTx = LED6_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   54     light_init_struct.GPIO_Pins = LED6_GPIO_PIN;
        MOVS     R0,#+262144
        STR      R0,[SP, #+8]
//   55     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   56     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   57     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   58 
//   59     light_init_struct.GPIO_PTx = LED7_PORT;
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   60     light_init_struct.GPIO_Pins = LED7_GPIO_PIN;
        MOVS     R0,#+524288
        STR      R0,[SP, #+8]
//   61     light_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   62     light_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   63     LPLD_GPIO_Init(light_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   64 
//   65 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void turn_lights_on(uint8 mask)
//   68 {
turn_lights_on:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   69     int i = 0;
        MOVS     R5,#+0
//   70 
//   71     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??turn_lights_on_0
//   72     {
//   73         if(mask & 0x01)
??turn_lights_on_1:
        LSLS     R0,R4,#+31
        BPL.N    ??turn_lights_on_2
//   74         {
//   75             set_light_1_on_off(i, 1);
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       set_light_1_on_off
//   76         }
//   77         mask = mask >> 1;
??turn_lights_on_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   78     }
        ADDS     R5,R5,#+1
??turn_lights_on_0:
        CMP      R5,#+8
        BLT.N    ??turn_lights_on_1
//   79 }
        POP      {R0,R4,R5,PC}    ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void turn_lights_off(uint8 mask)
//   82 {
turn_lights_off:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   83     int i = 0;
        MOVS     R5,#+0
//   84 
//   85     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??turn_lights_off_0
//   86     {
//   87         if(mask & 0x01)
??turn_lights_off_1:
        LSLS     R0,R4,#+31
        BPL.N    ??turn_lights_off_2
//   88         {
//   89             set_light_1_on_off(i, 0);
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       set_light_1_on_off
//   90         }
//   91         mask = mask >> 1;
??turn_lights_off_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//   92     }
        ADDS     R5,R5,#+1
??turn_lights_off_0:
        CMP      R5,#+8
        BLT.N    ??turn_lights_off_1
//   93 }
        POP      {R0,R4,R5,PC}    ;; return
//   94 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 void set_lights_on_off(uint8 mask)
//   96 {
set_lights_on_off:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   97     int i = 0;
        MOVS     R5,#+0
//   98 
//   99     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??set_lights_on_off_0
//  100     {
//  101         if(mask & 0x01)
//  102         {
//  103             set_light_1_on_off(i, 1);
//  104         }
//  105         else
//  106         {
//  107             set_light_1_on_off(i, 0);
??set_lights_on_off_1:
        MOVS     R1,#+0
        MOVS     R0,R5
        BL       set_light_1_on_off
//  108         }
//  109         mask = mask >> 1;
??set_lights_on_off_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
        ADDS     R5,R5,#+1
??set_lights_on_off_0:
        CMP      R5,#+8
        BGE.N    ??set_lights_on_off_3
        LSLS     R0,R4,#+31
        BPL.N    ??set_lights_on_off_1
        MOVS     R1,#+1
        MOVS     R0,R5
        BL       set_light_1_on_off
        B.N      ??set_lights_on_off_2
//  110     }
//  111 }
??set_lights_on_off_3:
        POP      {R0,R4,R5,PC}    ;; return
//  112 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void set_light_1_on_off(int led_num, uint8 state)
//  114 {
set_light_1_on_off:
        PUSH     {R7,LR}
//  115     switch (led_num)
        CMP      R0,#+0
        BEQ.N    ??set_light_1_on_off_0
        CMP      R0,#+2
        BEQ.N    ??set_light_1_on_off_1
        BCC.N    ??set_light_1_on_off_2
        CMP      R0,#+4
        BEQ.N    ??set_light_1_on_off_3
        BCC.N    ??set_light_1_on_off_4
        CMP      R0,#+6
        BEQ.N    ??set_light_1_on_off_5
        BCC.N    ??set_light_1_on_off_6
        CMP      R0,#+7
        BEQ.N    ??set_light_1_on_off_7
        B.N      ??set_light_1_on_off_8
//  116     {
//  117         case 0: 
//  118                 LPLD_GPIO_Output_b(LED0_PORT, LED0_PIN, (uint8)!state);
??set_light_1_on_off_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_9
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_10
??set_light_1_on_off_9:
        MOVS     R2,#+0
??set_light_1_on_off_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  119                 break;
        B.N      ??set_light_1_on_off_11
//  120         case 1: 
//  121                 LPLD_GPIO_Output_b(LED1_PORT, LED1_PIN, (uint8)!state);
??set_light_1_on_off_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_12
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_13
??set_light_1_on_off_12:
        MOVS     R2,#+0
??set_light_1_on_off_13:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+13
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  122                 break;
        B.N      ??set_light_1_on_off_11
//  123         case 2: 
//  124                 LPLD_GPIO_Output_b(LED2_PORT, LED2_PIN, (uint8)!state);
??set_light_1_on_off_1:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_14
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_15
??set_light_1_on_off_14:
        MOVS     R2,#+0
??set_light_1_on_off_15:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+14
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  125                 break;
        B.N      ??set_light_1_on_off_11
//  126         case 3: 
//  127                 LPLD_GPIO_Output_b(LED3_PORT, LED3_PIN, (uint8)!state);
??set_light_1_on_off_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_16
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_17
??set_light_1_on_off_16:
        MOVS     R2,#+0
??set_light_1_on_off_17:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+15
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  128                 break;
        B.N      ??set_light_1_on_off_11
//  129         case 4: 
//  130                 LPLD_GPIO_Output_b(LED4_PORT, LED4_PIN, (uint8)!state);
??set_light_1_on_off_3:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_18
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_19
??set_light_1_on_off_18:
        MOVS     R2,#+0
??set_light_1_on_off_19:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  131                 break;
        B.N      ??set_light_1_on_off_11
//  132         case 5: 
//  133                 LPLD_GPIO_Output_b(LED5_PORT, LED5_PIN, (uint8)!state);
??set_light_1_on_off_6:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_20
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_21
??set_light_1_on_off_20:
        MOVS     R2,#+0
??set_light_1_on_off_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  134                 break;
        B.N      ??set_light_1_on_off_11
//  135         case 6: 
//  136                 LPLD_GPIO_Output_b(LED6_PORT, LED6_PIN, (uint8)!state);
??set_light_1_on_off_5:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_22
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_23
??set_light_1_on_off_22:
        MOVS     R2,#+0
??set_light_1_on_off_23:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+18
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  137                 break;
        B.N      ??set_light_1_on_off_11
//  138         case 7: 
//  139                 LPLD_GPIO_Output_b(LED7_PORT, LED7_PIN, (uint8)!state);
??set_light_1_on_off_7:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??set_light_1_on_off_24
        MOVS     R2,#+1
        B.N      ??set_light_1_on_off_25
??set_light_1_on_off_24:
        MOVS     R2,#+0
??set_light_1_on_off_25:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+19
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  140                 break;
        B.N      ??set_light_1_on_off_11
//  141         default:
//  142                 break;
//  143     }
//  144 }
??set_light_1_on_off_8:
??set_light_1_on_off_11:
        POP      {R0,PC}          ;; return
//  145 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void toggle_light_1(int led_num)
//  147 {
toggle_light_1:
        PUSH     {R7,LR}
//  148     switch (led_num)
        CMP      R0,#+0
        BEQ.N    ??toggle_light_1_0
        CMP      R0,#+2
        BEQ.N    ??toggle_light_1_1
        BCC.N    ??toggle_light_1_2
        CMP      R0,#+4
        BEQ.N    ??toggle_light_1_3
        BCC.N    ??toggle_light_1_4
        CMP      R0,#+6
        BEQ.N    ??toggle_light_1_5
        BCC.N    ??toggle_light_1_6
        CMP      R0,#+7
        BEQ.N    ??toggle_light_1_7
        B.N      ??toggle_light_1_8
//  149     {
//  150         case 0: 
//  151                 LPLD_GPIO_Toggle_b(LED0_PORT, LED0_PIN);
??toggle_light_1_0:
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  152                 break;
        B.N      ??toggle_light_1_9
//  153         case 1: 
//  154                 LPLD_GPIO_Toggle_b(LED1_PORT, LED1_PIN);
??toggle_light_1_2:
        MOVS     R1,#+13
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  155                 break;
        B.N      ??toggle_light_1_9
//  156         case 2: 
//  157                 LPLD_GPIO_Toggle_b(LED2_PORT, LED2_PIN);
??toggle_light_1_1:
        MOVS     R1,#+14
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  158                 break;
        B.N      ??toggle_light_1_9
//  159         case 3: 
//  160                 LPLD_GPIO_Toggle_b(LED3_PORT, LED3_PIN);
??toggle_light_1_4:
        MOVS     R1,#+15
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  161                 break;
        B.N      ??toggle_light_1_9
//  162         case 4: 
//  163                 LPLD_GPIO_Toggle_b(LED4_PORT, LED4_PIN);
??toggle_light_1_3:
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  164                 break;
        B.N      ??toggle_light_1_9
//  165         case 5: 
//  166                 LPLD_GPIO_Toggle_b(LED5_PORT, LED5_PIN);
??toggle_light_1_6:
        MOVS     R1,#+17
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  167                 break;
        B.N      ??toggle_light_1_9
//  168         case 6: 
//  169                 LPLD_GPIO_Toggle_b(LED6_PORT, LED6_PIN);
??toggle_light_1_5:
        MOVS     R1,#+18
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  170                 break;
        B.N      ??toggle_light_1_9
//  171         case 7: 
//  172                 LPLD_GPIO_Toggle_b(LED7_PORT, LED7_PIN);
??toggle_light_1_7:
        MOVS     R1,#+19
        LDR.N    R0,??DataTable2  ;; 0x400ff080
        BL       LPLD_GPIO_Toggle_b
//  173                 break;
        B.N      ??toggle_light_1_9
//  174         default:
//  175                 break;
//  176     }    
//  177 }
??toggle_light_1_8:
??toggle_light_1_9:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff080
//  178 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 void toggle_lights(uint8 mask)
//  180 {
toggle_lights:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  181     int i = 0;
        MOVS     R5,#+0
//  182 
//  183     for(i = 0; i < LIGHTS_AMOUNT; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??toggle_lights_0
//  184     {
//  185         if(mask & 0x01)
??toggle_lights_1:
        LSLS     R0,R4,#+31
        BPL.N    ??toggle_lights_2
//  186         {
//  187             toggle_light_1(i);
        MOVS     R0,R5
        BL       toggle_light_1
//  188         }
//  189         mask = mask >> 1;
??toggle_lights_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R4,R4,#+1
//  190     }    
        ADDS     R5,R5,#+1
??toggle_lights_0:
        CMP      R5,#+8
        BLT.N    ??toggle_lights_1
//  191 }
        POP      {R0,R4,R5,PC}    ;; return

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
// 820 bytes in section .text
// 
// 820 bytes of CODE memory
//
//Errors: none
//Warnings: none
