///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:21 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\uart.c                                              /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\uart.c -D LPLD_K60 -lCN                             /
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
//                    MINE\List\uart.s                                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uart

        #define SHT_PROGBITS 0x1

        EXTERN AddSpeedToPosition
        EXTERN DecodeControlParaData
        EXTERN DecodePX4FLOWData
        EXTERN FlowFilterGetCurrentFlowComp
        EXTERN Flow_RefreshRawData
        EXTERN GetSystemClockMs
        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN LPLD_UART_PutCharArr
        EXTERN PutStringUartQueue
        EXTERN RecvFrame
        EXTERN ToggleLights
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2f
        EXTERN g_u32LostSignalTimerCnt
        EXTERN sprintf

        PUBLIC CommUartSendByteArr
        PUBLIC CommUartSendOneByte
        PUBLIC CommUartSendString
        PUBLIC CommunicateUartRxIsr
        PUBLIC DebugUartRxIsr
        PUBLIC GPSUartRxIsr
        PUBLIC InitCommunicateUart
        PUBLIC InitDebugUart
        PUBLIC InitGPSUart
        PUBLIC g_f32DebugPitch
        PUBLIC g_f32DebugRoll
        PUBLIC g_f32DebugThrottle
        PUBLIC g_f32DebugYaw
        PUBLIC g_f32XPosition
        PUBLIC g_f32YPosition
        PUBLIC g_sPx4flowData
        PUBLIC g_u32DebugPWM
        PUBLIC g_u8FlowNewData
        PUBLIC g_ulFlowTime

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\uart.c
//    1 /****************************************************************************** 
//    2  *       uart.c ----- The uart Function          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  uart.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/22 18:25:24                                                       *
//   10  ******************************************************************************/
//   11 #include "uart.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 uint32 g_u32DebugPWM[4] = {0,0,0,0};
g_u32DebugPWM:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 float g_f32DebugYaw = 0;
g_f32DebugYaw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 float g_f32DebugRoll = 0;
g_f32DebugRoll:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 float g_f32DebugPitch = 0;
g_f32DebugPitch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   17 float g_f32DebugThrottle = 0;
g_f32DebugThrottle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 PX4FLOW_Data g_sPx4flowData = {0};
g_sPx4flowData:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   19 uint8 g_u8FlowNewData = 0;
g_u8FlowNewData:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 unsigned long g_ulFlowTime = 0;
g_ulFlowTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   21 float g_f32XPosition = 0;
g_f32XPosition:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   22 float g_f32YPosition = 0;
g_f32YPosition:
        DS8 4
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void InitDebugUart(void)
//   25 {
InitDebugUart:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   26     UART_InitTypeDef debug_uart_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   27     debug_uart_init_struct.UART_Uartx    = DEBUG_UART;
        LDR.W    R0,??DataTable7  ;; 0x400ea000
        STR      R0,[SP, #+4]
//   28     debug_uart_init_struct.UART_BaudRate = DEBUG_UART_BAUDRATE;
        MOVS     R0,#+115200
        STR      R0,[SP, #+8]
//   29     debug_uart_init_struct.UART_RxPin    = DEBUG_UART_RX_PIN;
        MOVS     R0,#+149
        STRB     R0,[SP, #+13]
//   30     debug_uart_init_struct.UART_TxPin    = DEBUG_UART_TX_PIN;
        MOVS     R0,#+148
        STRB     R0,[SP, #+12]
//   31     debug_uart_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+14]
//   32     debug_uart_init_struct.UART_RxIsr = DebugUartRxIsr;
        ADR.W    R0,DebugUartRxIsr
        STR      R0,[SP, #+16]
//   33     LPLD_UART_Init(debug_uart_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   34     
//   35     LPLD_UART_EnableIrq(debug_uart_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   36 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void InitCommunicateUart(void)
//   39 {
InitCommunicateUart:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   40     UART_InitTypeDef communicate_uart_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   41     communicate_uart_init_struct.UART_Uartx     = COMMUNICATE_UART;
        LDR.W    R0,??DataTable7_1  ;; 0x4006c000
        STR      R0,[SP, #+4]
//   42     communicate_uart_init_struct.UART_BaudRate  = COMMUNICATE_UART_BAUDRATE;
        MOVS     R0,#+115200
        STR      R0,[SP, #+8]
//   43     communicate_uart_init_struct.UART_RxPin     = COMMUNICATE_UART_RX_PIN;
        MOVS     R0,#+94
        STRB     R0,[SP, #+13]
//   44     communicate_uart_init_struct.UART_TxPin     = COMMUNICATE_UART_TX_PIN;
        MOVS     R0,#+95
        STRB     R0,[SP, #+12]
//   45     //communicate_uart_init_struct.UART_RxIntEnable = TRUE;
//   46     //communicate_uart_init_struct.UART_RxIsr = CommunicateUartRxIsr;
//   47     LPLD_UART_Init(communicate_uart_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   48 
//   49     //LPLD_UART_EnableIrq(communicate_uart_init_struct);
//   50 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void InitGPSUart(void)
//   53 {
InitGPSUart:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   54     UART_InitTypeDef GPS_uart_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   55     GPS_uart_init_struct.UART_Uartx     = GPS_UART;
        LDR.W    R0,??DataTable7_2  ;; 0x400eb000
        STR      R0,[SP, #+4]
//   56     GPS_uart_init_struct.UART_BaudRate  = GPS_UART_BAUDRATE;
        MOVS     R0,#+115200
        STR      R0,[SP, #+8]
//   57     GPS_uart_init_struct.UART_RxPin     = GPS_UART_RX_PIN;
        MOVS     R0,#+100
        STRB     R0,[SP, #+13]
//   58     GPS_uart_init_struct.UART_TxPin     = GPS_UART_TX_PIN;
        MOVS     R0,#+101
        STRB     R0,[SP, #+12]
//   59     GPS_uart_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+14]
//   60     GPS_uart_init_struct.UART_RxIsr = GPSUartRxIsr;
        ADR.W    R0,GPSUartRxIsr
        STR      R0,[SP, #+16]
//   61     LPLD_UART_Init(GPS_uart_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   62 
//   63     LPLD_UART_EnableIrq(GPS_uart_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   64 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   65 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void CommUartSendOneByte(int8 data)
//   67 {
CommUartSendOneByte:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   68     LPLD_UART_PutChar(COMMUNICATE_UART, data);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7_1  ;; 0x4006c000
        BL       LPLD_UART_PutChar
//   69 }
        POP      {R4,PC}          ;; return
//   70 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void CommUartSendByteArr(int8 * data_arr, int32 num)
//   72 {
CommUartSendByteArr:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   73     LPLD_UART_PutCharArr(COMMUNICATE_UART, data_arr, num);
        MOVS     R2,R5
        MOVS     R1,R4
        LDR.N    R0,??DataTable7_1  ;; 0x4006c000
        BL       LPLD_UART_PutCharArr
//   74 }
        POP      {R0,R4,R5,PC}    ;; return
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void CommUartSendString(int8 * string)
//   77 {
CommUartSendString:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   78     while(*string != '\0')
??CommUartSendString_0:
        LDRSB    R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??CommUartSendString_1
//   79     {
//   80         CommUartSendOneByte(*string);
        LDRSB    R0,[R4, #+0]
        BL       CommUartSendOneByte
//   81         string++;
        ADDS     R4,R4,#+1
        B.N      ??CommUartSendString_0
//   82     }
//   83 }
??CommUartSendString_1:
        POP      {R4,PC}          ;; return
//   84 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void CommunicateUartRxIsr(void)
//   86 {
CommunicateUartRxIsr:
        PUSH     {R4,LR}
//   87     int8 recv;
//   88   
//   89     recv = LPLD_UART_GetChar(COMMUNICATE_UART);
        LDR.N    R0,??DataTable7_1  ;; 0x4006c000
        BL       LPLD_UART_GetChar
        MOVS     R4,R0
//   90     //LPLD_UART_PutChar(COMMUNICATE_UART, recv);  
//   91     LPLD_UART_PutChar(COMMUNICATE_UART, recv); 
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_1  ;; 0x4006c000
        BL       LPLD_UART_PutChar
//   92     ToggleLights(0x02);
        MOVS     R0,#+2
        BL       ToggleLights
//   93 }
        POP      {R4,PC}          ;; return
//   94 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   95 void DebugUartRxIsr(void)
//   96 {
DebugUartRxIsr:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+132
//   97     int8 str_buf[128];
//   98     int8 recv;
//   99     int i = 0;
        MOVS     R5,#+0
//  100   
//  101     recv = LPLD_UART_GetChar(DEBUG_UART);
        LDR.N    R0,??DataTable7  ;; 0x400ea000
        BL       LPLD_UART_GetChar
        MOVS     R4,R0
//  102     //LPLD_UART_PutChar(DEBUG_UART, recv); 
//  103     ToggleLights(0x01);
        MOVS     R0,#+1
        BL       ToggleLights
//  104 
//  105     switch(recv)
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+32
        BEQ.W    ??DebugUartRxIsr_0
        CMP      R0,#+97
        BEQ.N    ??DebugUartRxIsr_1
        CMP      R0,#+100
        BEQ.N    ??DebugUartRxIsr_2
        CMP      R0,#+101
        BEQ.N    ??DebugUartRxIsr_3
        CMP      R0,#+102
        BEQ.N    ??DebugUartRxIsr_4
        CMP      R0,#+104
        BEQ.N    ??DebugUartRxIsr_5
        CMP      R0,#+105
        BEQ.N    ??DebugUartRxIsr_6
        CMP      R0,#+106
        BEQ.N    ??DebugUartRxIsr_7
        CMP      R0,#+107
        BEQ.N    ??DebugUartRxIsr_8
        CMP      R0,#+108
        BEQ.N    ??DebugUartRxIsr_9
        CMP      R0,#+111
        BEQ.N    ??DebugUartRxIsr_10
        CMP      R0,#+113
        BEQ.N    ??DebugUartRxIsr_11
        CMP      R0,#+114
        BEQ.N    ??DebugUartRxIsr_12
        CMP      R0,#+115
        BEQ.N    ??DebugUartRxIsr_13
        CMP      R0,#+117
        BEQ.N    ??DebugUartRxIsr_14
        CMP      R0,#+119
        BEQ.N    ??DebugUartRxIsr_15
        CMP      R0,#+121
        BEQ.N    ??DebugUartRxIsr_16
        B.N      ??DebugUartRxIsr_17
//  106     {
//  107         case 'q': g_u32DebugPWM[0] += 1;
??DebugUartRxIsr_11:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  108                   i = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  109                   break;
        B.N      ??DebugUartRxIsr_18
//  110         case 'a': g_u32DebugPWM[0] -= 1;
??DebugUartRxIsr_1:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+0]
//  111                   i = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  112                   break;
        B.N      ??DebugUartRxIsr_18
//  113         case 'y': g_u32DebugPWM[0] = 100;
??DebugUartRxIsr_16:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+100
        STR      R1,[R0, #+0]
//  114                   i = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  115                   break;
        B.N      ??DebugUartRxIsr_18
//  116         case 'h': g_u32DebugPWM[0] = 0;
??DebugUartRxIsr_5:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  117                   i = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  118                   break;
        B.N      ??DebugUartRxIsr_18
//  119         case 'w': g_u32DebugPWM[1] += 1;
??DebugUartRxIsr_15:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+4]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+4]
//  120                   i = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  121                   break;
        B.N      ??DebugUartRxIsr_18
//  122         case 's': g_u32DebugPWM[1] -= 1;
??DebugUartRxIsr_13:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+4]
//  123                   i = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  124                   break;
        B.N      ??DebugUartRxIsr_18
//  125         case 'u': g_u32DebugPWM[1] = 100;
??DebugUartRxIsr_14:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+100
        STR      R1,[R0, #+4]
//  126                   i = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  127                   break;
        B.N      ??DebugUartRxIsr_18
//  128         case 'j': g_u32DebugPWM[1] = 0;
??DebugUartRxIsr_7:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  129                   i = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  130                   break;
        B.N      ??DebugUartRxIsr_18
//  131         case 'e': g_u32DebugPWM[2] += 1;
??DebugUartRxIsr_3:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+8]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+8]
//  132                   i = 2;
        MOVS     R0,#+2
        MOVS     R5,R0
//  133                   break;
        B.N      ??DebugUartRxIsr_18
//  134         case 'd': g_u32DebugPWM[2] -= 1;
??DebugUartRxIsr_2:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+8]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+8]
//  135                   i = 2;
        MOVS     R0,#+2
        MOVS     R5,R0
//  136                   break;
        B.N      ??DebugUartRxIsr_18
//  137         case 'i': g_u32DebugPWM[2] = 100;
??DebugUartRxIsr_6:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+100
        STR      R1,[R0, #+8]
//  138                   i = 2;
        MOVS     R0,#+2
        MOVS     R5,R0
//  139                   break;
        B.N      ??DebugUartRxIsr_18
//  140         case 'k': g_u32DebugPWM[2] = 0;
??DebugUartRxIsr_8:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  141                   i = 2;
        MOVS     R0,#+2
        MOVS     R5,R0
//  142                   break;
        B.N      ??DebugUartRxIsr_18
//  143         case 'r': g_u32DebugPWM[3] += 1;
??DebugUartRxIsr_12:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+12]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+12]
//  144                   i = 3;
        MOVS     R0,#+3
        MOVS     R5,R0
//  145                   break;
        B.N      ??DebugUartRxIsr_18
//  146         case 'f': g_u32DebugPWM[3] -= 1;
??DebugUartRxIsr_4:
        LDR.N    R0,??DataTable7_3
        LDR      R0,[R0, #+12]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        STR      R0,[R1, #+12]
//  147                   i = 3;
        MOVS     R0,#+3
        MOVS     R5,R0
//  148                   break;
        B.N      ??DebugUartRxIsr_18
//  149         case 'o': g_u32DebugPWM[3] = 100;
??DebugUartRxIsr_10:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+100
        STR      R1,[R0, #+12]
//  150                   i = 3;
        MOVS     R0,#+3
        MOVS     R5,R0
//  151                   break;
        B.N      ??DebugUartRxIsr_18
//  152         case 'l': g_u32DebugPWM[3] = 0;
??DebugUartRxIsr_9:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  153                   i = 3;
        MOVS     R0,#+3
        MOVS     R5,R0
//  154                   break;
        B.N      ??DebugUartRxIsr_18
//  155         case ' ': g_u32DebugPWM[0] = 0;
??DebugUartRxIsr_0:
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  156                   g_u32DebugPWM[1] = 0;
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  157                   g_u32DebugPWM[2] = 0;
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  158                   g_u32DebugPWM[3] = 0;
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//  159                   i = 4;
        MOVS     R0,#+4
        MOVS     R5,R0
//  160                   break;
        B.N      ??DebugUartRxIsr_18
//  161         default:  break;
//  162     }    
//  163 
//  164     if(i < 4)
??DebugUartRxIsr_17:
??DebugUartRxIsr_18:
        CMP      R5,#+4
        BGE.N    ??DebugUartRxIsr_19
//  165     {
//  166         sprintf(str_buf, "PWM%d: %d\n\r", i, g_u32DebugPWM[i]);
        LDR.N    R0,??DataTable7_3
        LDR      R3,[R0, R5, LSL #+2]
        MOVS     R2,R5
        LDR.N    R1,??DataTable7_4
        ADD      R0,SP,#+0
        BL       sprintf
//  167         PutStringUartQueue(DEBUG_UART, str_buf);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7  ;; 0x400ea000
        BL       PutStringUartQueue
        B.N      ??DebugUartRxIsr_20
//  168 //        printf("PWM%d: %d\n\r", i, g_u32DebugPWM[i]);
//  169     }
//  170     else
//  171     {
//  172         sprintf(str_buf, "PWM ALL: 0\n\r");
??DebugUartRxIsr_19:
        LDR.N    R1,??DataTable7_5
        ADD      R0,SP,#+0
        BL       sprintf
//  173         PutStringUartQueue(DEBUG_UART, str_buf);      
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable7  ;; 0x400ea000
        BL       PutStringUartQueue
//  174 //        printf("PWM ALL: 0\n\r");
//  175     }
//  176 
//  177 }
??DebugUartRxIsr_20:
        ADD      SP,SP,#+132
        POP      {R4,R5,PC}       ;; return
//  178 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  179 void GPSUartRxIsr(void)
//  180 {
GPSUartRxIsr:
        PUSH     {R0-R8,LR}
//  181     int8 recv;
//  182     //int8 str_buf[128];
//  183     TransferControlParaData ctrl_para_data;
//  184 
//  185     recv = LPLD_UART_GetChar(GPS_UART);
        LDR.N    R0,??DataTable7_2  ;; 0x400eb000
        BL       LPLD_UART_GetChar
        MOV      R8,R0
//  186     //LPLD_UART_PutChar(COMMUNICATE_UART, recv);  
//  187     //LPLD_UART_PutChar(GPS_UART, recv); 
//  188     ToggleLights(0x04);
        MOVS     R0,#+4
        BL       ToggleLights
//  189 
//  190     uint8 frame_type = RecvFrame(recv, GPS_UART);
        LDR.N    R1,??DataTable7_2  ;; 0x400eb000
        MOV      R0,R8
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       RecvFrame
        MOVS     R4,R0
//  191 
//  192     if(frame_type == 0x01)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??GPSUartRxIsr_0
//  193     {
//  194         if(DecodeControlParaData(&ctrl_para_data, GPS_UART) == 1)
        LDR.N    R1,??DataTable7_2  ;; 0x400eb000
        ADD      R0,SP,#+8
        BL       DecodeControlParaData
        CMP      R0,#+1
        BNE.W    ??GPSUartRxIsr_1
//  195         {
//  196             ToggleLights(0x08);
        MOVS     R0,#+8
        BL       ToggleLights
//  197             g_u32LostSignalTimerCnt = 0;
        LDR.N    R0,??DataTable7_6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  198             g_f32DebugYaw = (float)(ctrl_para_data.yaw) / 10;
        LDRSH    R0,[SP, #+8]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable7_7  ;; 0x41200000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_8
        STR      R0,[R1, #+0]
//  199             g_f32DebugPitch = (float)(ctrl_para_data.pitch) / 10;
        LDRSH    R0,[SP, #+10]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable7_7  ;; 0x41200000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_9
        STR      R0,[R1, #+0]
//  200             g_f32DebugRoll = (float)(ctrl_para_data.roll) / 10;
        LDRSH    R0,[SP, #+12]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable7_7  ;; 0x41200000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+0]
//  201             g_f32DebugThrottle = (float)(ctrl_para_data.throttle) / 100;            
        LDRSH    R0,[SP, #+14]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable7_11  ;; 0x42c80000
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable7_12
        STR      R0,[R1, #+0]
        B.N      ??GPSUartRxIsr_1
//  202         }
//  203     }
//  204     else if(frame_type == 0x03)
??GPSUartRxIsr_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??GPSUartRxIsr_1
//  205     {
//  206         if(DecodePX4FLOWData(&g_sPx4flowData, GPS_UART) == 1)
        LDR.N    R1,??DataTable7_2  ;; 0x400eb000
        LDR.N    R0,??DataTable7_13
        BL       DecodePX4FLOWData
        CMP      R0,#+1
        BNE.N    ??GPSUartRxIsr_1
//  207         {
//  208             ToggleLights(0x08);
        MOVS     R0,#+8
        BL       ToggleLights
//  209             g_u8FlowNewData = 1;
        LDR.N    R0,??DataTable7_14
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  210             if(Flow_RefreshRawData() == 1)
        BL       Flow_RefreshRawData
        CMP      R0,#+1
        BNE.N    ??GPSUartRxIsr_1
//  211             {
//  212                 static unsigned long last_flow_time_tag = 0;
//  213                 unsigned long flow_time_tag = GetSystemClockMs();
        BL       GetSystemClockMs
        MOVS     R5,R0
//  214                 g_ulFlowTime = flow_time_tag - last_flow_time_tag;
        LDR.N    R0,??DataTable7_15
        LDR      R0,[R0, #+0]
        SUBS     R0,R5,R0
        LDR.N    R1,??DataTable7_16
        STR      R0,[R1, #+0]
//  215                 last_flow_time_tag = flow_time_tag;
        LDR.N    R0,??DataTable7_15
        STR      R5,[R0, #+0]
//  216                 float x_speed_to_input = FlowFilterGetCurrentFlowComp()[0];
        BL       FlowFilterGetCurrentFlowComp
        LDR      R6,[R0, #+0]
//  217                 float y_speed_to_input = FlowFilterGetCurrentFlowComp()[1];
        BL       FlowFilterGetCurrentFlowComp
        LDR      R7,[R0, #+4]
//  218                 if((fabs(x_speed_to_input/g_sPx4flowData.ground_distance) < 0.015))
        MOVS     R0,R6
        LDR.N    R1,??DataTable7_13
        LDR      R1,[R1, #+16]
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        LDR.N    R2,??DataTable7_17  ;; 0xeb851eb8
        LDR.N    R3,??DataTable7_18  ;; 0x3f8eb851
        BL       __aeabi_cdcmple
        BCS.N    ??GPSUartRxIsr_2
//  219                 {
//  220                     x_speed_to_input = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  221                 }
//  222                 if((fabs(y_speed_to_input/g_sPx4flowData.ground_distance) < 0.015))
??GPSUartRxIsr_2:
        MOVS     R0,R7
        LDR.N    R1,??DataTable7_13
        LDR      R1,[R1, #+16]
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        BICS     R1,R1,#0x80000000
        LDR.N    R2,??DataTable7_17  ;; 0xeb851eb8
        LDR.N    R3,??DataTable7_18  ;; 0x3f8eb851
        BL       __aeabi_cdcmple
        BCS.N    ??GPSUartRxIsr_3
//  223                 {
//  224                     y_speed_to_input = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  225                 }                
//  226                 AddSpeedToPosition(x_speed_to_input, y_speed_to_input, 0, (float)g_ulFlowTime / 1000.0f, &g_f32XPosition, &g_f32YPosition);                
??GPSUartRxIsr_3:
        LDR.N    R0,??DataTable7_19
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable7_20
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable7_21  ;; 0x447a0000
        BL       __aeabi_fdiv
        MOVS     R3,R0
        MOVS     R2,#+0
        MOVS     R1,R7
        MOVS     R0,R6
        BL       AddSpeedToPosition
//  227             }
//  228         }
//  229     }
//  230 
//  231     /*switch(recv)
//  232     {
//  233         case 'a': g_f32DebugRoll += 0.5;
//  234                   break;
//  235         case 'd': g_f32DebugRoll -= 0.5;
//  236                   break;
//  237         case 'w': g_f32DebugPitch -= 0.5;
//  238                   break;
//  239         case 's': g_f32DebugPitch += 0.5;
//  240                   break;
//  241         case 'j': g_f32DebugYaw -= 0.5;
//  242                   break;
//  243         case 'l': g_f32DebugYaw += 0.5;
//  244                   break;
//  245         case 'i': g_f32DebugThrottle += 0.01;
//  246                   break;
//  247         case 'k': g_f32DebugThrottle -= 0.01;
//  248                   break;
//  249         case 'b': g_f32DebugYaw = 0;
//  250                   g_f32DebugPitch = 0;
//  251                   g_f32DebugRoll = 0;
//  252                   break;
//  253         case ' ': g_f32DebugThrottle = 0;
//  254                   break;
//  255         case 'y': g_f32DebugThrottle = 0.6;
//  256                   break;
//  257         case 'n': g_f32DebugThrottle = 0.4;
//  258                   break;
//  259         case 'o': g_f32DebugThrottle = 0.5;
//  260                   break;                  
//  261         case 'g': g_f32DebugThrottle = 1;
//  262                   break;
//  263         default:  break;
//  264     }          
//  265     sprintf(str_buf, "Yaw:%d\tPitch:%d\tRoll:%d\tThrottle:%d\t\n\r", (int)(g_f32DebugYaw * 10), (int)(g_f32DebugPitch * 10), (int)(g_f32DebugRoll * 10), (int)(g_f32DebugThrottle * 100));
//  266     PutStringUartQueue(GPS_UART, str_buf);   */
//  267 }
??GPSUartRxIsr_1:
        POP      {R0-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     g_u32DebugPWM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     `?<Constant "PWM%d: %d\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     `?<Constant "PWM ALL: 0\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     g_u32LostSignalTimerCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     g_f32DebugYaw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     g_f32DebugPitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     g_f32DebugRoll

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     g_f32DebugThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     g_sPx4flowData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     g_u8FlowNewData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     ??last_flow_time_tag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     g_ulFlowTime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x3f8eb851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     g_f32YPosition

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     g_f32XPosition

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     0x447a0000

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??last_flow_time_tag:
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

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM%d: %d\\n\\r">`:
        DATA
        DC8 "PWM%d: %d\012\015"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "PWM ALL: 0\\n\\r">`:
        DATA
        DC8 "PWM ALL: 0\012\015"
        DC8 0, 0, 0

        END
//  268 
// 
//    69 bytes in section .bss
//    88 bytes in section .rodata
// 1 120 bytes in section .text
// 
// 1 120 bytes of CODE  memory
//    88 bytes of CONST memory
//    69 bytes of DATA  memory
//
//Errors: none
//Warnings: none
