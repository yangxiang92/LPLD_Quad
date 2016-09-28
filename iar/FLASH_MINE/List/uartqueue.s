///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:44 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\uartqueue.c                                /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\uartqueue.c -D LPLD_K60 -lCN               /
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
//                    MINE\List\uartqueue.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uartqueue

        #define SHT_PROGBITS 0x1

        EXTERN ClearMyQueue
        EXTERN CreateMyQueue
        EXTERN DestoryMyQueue
        EXTERN GetMyQueueSize
        EXTERN IsMyQueueEmpty
        EXTERN IsMyQueueFull
        EXTERN LPLD_UART_PutChar
        EXTERN PopMyQueue
        EXTERN PushMyQueue

        PUBLIC ClearUartRecvQueue
        PUBLIC DestoryUartQueue
        PUBLIC DestoryUartRecvQueue
        PUBLIC GetUartQueueSize
        PUBLIC GetUartRecvQueue
        PUBLIC GetUartRecvQueueSize
        PUBLIC InitUartQueue
        PUBLIC InitUartRecvQueue
        PUBLIC IsUartQueueEmpty
        PUBLIC IsUartQueueFull
        PUBLIC IsUartRecvQueueEmpty
        PUBLIC IsUartRecvQueueFull
        PUBLIC PopUartQueue
        PUBLIC PopUartRecvQueue
        PUBLIC PushUartQueue
        PUBLIC PushUartRecvQueue
        PUBLIC PutCharUartQueue
        PUBLIC PutStringUartQueue
        PUBLIC SendSeveralUartQueueData
        PUBLIC s_sUARTQueue
        PUBLIC s_sUARTRecvQueue

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Communicate\uartqueue.c
//    1 /****************************************************************************** 
//    2  *       uartqueue.c ----- The code to use queue to send uart data          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  uartqueue.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/13 21:42:53                                                       *
//   10  ******************************************************************************/
//   11 #include "uartqueue.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 MyQueue * s_sUARTQueue[6]={NULL,NULL,NULL,NULL,NULL,NULL};
s_sUARTQueue:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 MyQueue * s_sUARTRecvQueue[6]={NULL,NULL,NULL,NULL,NULL,NULL};
s_sUARTRecvQueue:
        DS8 24
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void InitUartQueue(UART_Type * uartx, int16 buf_size)
//   17 {
InitUartQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   18     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_0
//   19     {
//   20         s_sUARTQueue[0] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+0]
        B.N      ??InitUartQueue_1
//   21     }
//   22     else if(uartx == UART1)
??InitUartQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_2
//   23     {
//   24         s_sUARTQueue[1] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+4]
        B.N      ??InitUartQueue_1
//   25     }
//   26     else if(uartx == UART2)
??InitUartQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_3
//   27     {
//   28         s_sUARTQueue[2] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+8]
        B.N      ??InitUartQueue_1
//   29     }
//   30     else if(uartx == UART3)
??InitUartQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_4
//   31     {
//   32         s_sUARTQueue[3] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+12]
        B.N      ??InitUartQueue_1
//   33     }
//   34     else if(uartx == UART4)
??InitUartQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_5
//   35     {
//   36         s_sUARTQueue[4] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+16]
        B.N      ??InitUartQueue_1
//   37     }
//   38     else if(uartx == UART5)
??InitUartQueue_5:
        LDR.W    R0,??DataTable15_6  ;; 0x400eb000
        CMP      R4,R0
        BNE.N    ??InitUartQueue_1
//   39     {
//   40         s_sUARTQueue[5] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_1
        STR      R0,[R1, #+20]
//   41     }
//   42 }
??InitUartQueue_1:
        POP      {R0,R4,R5,PC}    ;; return
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void DestoryUartQueue(UART_Type * uartx)
//   45 {
DestoryUartQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   46     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_0
//   47     {
//   48         DestoryMyQueue(s_sUARTQueue[0]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       DestoryMyQueue
        B.N      ??DestoryUartQueue_1
//   49     }
//   50     else if(uartx == UART1)
??DestoryUartQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_2
//   51     {
//   52         DestoryMyQueue(s_sUARTQueue[1]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       DestoryMyQueue
        B.N      ??DestoryUartQueue_1
//   53     }
//   54     else if(uartx == UART2)
??DestoryUartQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_3
//   55     {
//   56         DestoryMyQueue(s_sUARTQueue[2]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       DestoryMyQueue
        B.N      ??DestoryUartQueue_1
//   57     }
//   58     else if(uartx == UART3)
??DestoryUartQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_4
//   59     {
//   60         DestoryMyQueue(s_sUARTQueue[3]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       DestoryMyQueue
        B.N      ??DestoryUartQueue_1
//   61     }
//   62     else if(uartx == UART4)
??DestoryUartQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_5
//   63     {
//   64         DestoryMyQueue(s_sUARTQueue[4]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       DestoryMyQueue
        B.N      ??DestoryUartQueue_1
//   65     }
//   66     else if(uartx == UART5)
??DestoryUartQueue_5:
        LDR.W    R0,??DataTable15_6  ;; 0x400eb000
        CMP      R4,R0
        BNE.N    ??DestoryUartQueue_1
//   67     {
//   68         DestoryMyQueue(s_sUARTQueue[5]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       DestoryMyQueue
//   69     }    
//   70 }
??DestoryUartQueue_1:
        POP      {R4,PC}          ;; return
//   71 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 int16 GetUartQueueSize(UART_Type* uartx)
//   73 {
GetUartQueueSize:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   74     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??GetUartQueueSize_0
//   75     {
//   76         return GetMyQueueSize(s_sUARTQueue[0]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       GetMyQueueSize
        B.N      ??GetUartQueueSize_1
//   77     }
//   78     else if(uartx == UART1)
??GetUartQueueSize_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??GetUartQueueSize_2
//   79     {
//   80         return GetMyQueueSize(s_sUARTQueue[1]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       GetMyQueueSize
        B.N      ??GetUartQueueSize_1
//   81     }
//   82     else if(uartx == UART2)
??GetUartQueueSize_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??GetUartQueueSize_3
//   83     {
//   84         return GetMyQueueSize(s_sUARTQueue[2]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       GetMyQueueSize
        B.N      ??GetUartQueueSize_1
//   85     }
//   86     else if(uartx == UART3)
??GetUartQueueSize_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??GetUartQueueSize_4
//   87     {
//   88         return GetMyQueueSize(s_sUARTQueue[3]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       GetMyQueueSize
        B.N      ??GetUartQueueSize_1
//   89     }
//   90     else if(uartx == UART4)
??GetUartQueueSize_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??GetUartQueueSize_5
//   91     {
//   92         return GetMyQueueSize(s_sUARTQueue[4]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       GetMyQueueSize
        B.N      ??GetUartQueueSize_1
//   93     }
//   94     else
//   95     {
//   96         return GetMyQueueSize(s_sUARTQueue[5]);
??GetUartQueueSize_5:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       GetMyQueueSize
??GetUartQueueSize_1:
        POP      {R4,PC}          ;; return
//   97     }        
//   98 }
//   99 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 uint8 IsUartQueueEmpty(UART_Type * uartx)
//  101 {
IsUartQueueEmpty:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  102     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??IsUartQueueEmpty_0
//  103     {
//  104         return IsMyQueueEmpty(s_sUARTQueue[0]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       IsMyQueueEmpty
        B.N      ??IsUartQueueEmpty_1
//  105     }
//  106     else if(uartx == UART1)
??IsUartQueueEmpty_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??IsUartQueueEmpty_2
//  107     {
//  108         return IsMyQueueEmpty(s_sUARTQueue[1]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       IsMyQueueEmpty
        B.N      ??IsUartQueueEmpty_1
//  109     }
//  110     else if(uartx == UART2)
??IsUartQueueEmpty_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??IsUartQueueEmpty_3
//  111     {
//  112         return IsMyQueueEmpty(s_sUARTQueue[2]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       IsMyQueueEmpty
        B.N      ??IsUartQueueEmpty_1
//  113     }
//  114     else if(uartx == UART3)
??IsUartQueueEmpty_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??IsUartQueueEmpty_4
//  115     {
//  116         return IsMyQueueEmpty(s_sUARTQueue[3]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       IsMyQueueEmpty
        B.N      ??IsUartQueueEmpty_1
//  117     }
//  118     else if(uartx == UART4)
??IsUartQueueEmpty_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??IsUartQueueEmpty_5
//  119     {
//  120         return IsMyQueueEmpty(s_sUARTQueue[4]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       IsMyQueueEmpty
        B.N      ??IsUartQueueEmpty_1
//  121     }
//  122     else
//  123     {
//  124         return IsMyQueueEmpty(s_sUARTQueue[5]);
??IsUartQueueEmpty_5:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       IsMyQueueEmpty
??IsUartQueueEmpty_1:
        POP      {R4,PC}          ;; return
//  125     }            
//  126 }
//  127 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 uint8 IsUartQueueFull(UART_Type * uartx)
//  129 {
IsUartQueueFull:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  130     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??IsUartQueueFull_0
//  131     {
//  132         return IsMyQueueFull(s_sUARTQueue[0]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       IsMyQueueFull
        B.N      ??IsUartQueueFull_1
//  133     }
//  134     else if(uartx == UART1)
??IsUartQueueFull_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??IsUartQueueFull_2
//  135     {
//  136         return IsMyQueueFull(s_sUARTQueue[1]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       IsMyQueueFull
        B.N      ??IsUartQueueFull_1
//  137     }
//  138     else if(uartx == UART2)
??IsUartQueueFull_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??IsUartQueueFull_3
//  139     {
//  140         return IsMyQueueFull(s_sUARTQueue[2]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       IsMyQueueFull
        B.N      ??IsUartQueueFull_1
//  141     }
//  142     else if(uartx == UART3)
??IsUartQueueFull_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??IsUartQueueFull_4
//  143     {
//  144         return IsMyQueueFull(s_sUARTQueue[3]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       IsMyQueueFull
        B.N      ??IsUartQueueFull_1
//  145     }
//  146     else if(uartx == UART4)
??IsUartQueueFull_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??IsUartQueueFull_5
//  147     {
//  148         return IsMyQueueFull(s_sUARTQueue[4]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       IsMyQueueFull
        B.N      ??IsUartQueueFull_1
//  149     }
//  150     else
//  151     {
//  152         return IsMyQueueFull(s_sUARTQueue[5]);
??IsUartQueueFull_5:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       IsMyQueueFull
??IsUartQueueFull_1:
        POP      {R4,PC}          ;; return
//  153     }                
//  154 }
//  155 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 uint8 PushUartQueue(UART_Type * uartx, int8 data)
//  157 {
PushUartQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  158     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??PushUartQueue_0
//  159     {
//  160         return PushMyQueue(s_sUARTQueue[0], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       PushMyQueue
        B.N      ??PushUartQueue_1
//  161     }
//  162     else if(uartx == UART1)
??PushUartQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??PushUartQueue_2
//  163     {
//  164         return PushMyQueue(s_sUARTQueue[1], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       PushMyQueue
        B.N      ??PushUartQueue_1
//  165     }
//  166     else if(uartx == UART2)
??PushUartQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??PushUartQueue_3
//  167     {
//  168         return PushMyQueue(s_sUARTQueue[2], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       PushMyQueue
        B.N      ??PushUartQueue_1
//  169     }
//  170     else if(uartx == UART3)
??PushUartQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??PushUartQueue_4
//  171     {
//  172         return PushMyQueue(s_sUARTQueue[3], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       PushMyQueue
        B.N      ??PushUartQueue_1
//  173     }
//  174     else if(uartx == UART4)
??PushUartQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??PushUartQueue_5
//  175     {
//  176         return PushMyQueue(s_sUARTQueue[4], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       PushMyQueue
        B.N      ??PushUartQueue_1
//  177     }
//  178     else
//  179     {
//  180         return PushMyQueue(s_sUARTQueue[5], data);
??PushUartQueue_5:
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       PushMyQueue
??PushUartQueue_1:
        POP      {R1,R4,R5,PC}    ;; return
//  181     }                
//  182 }
//  183 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  184 int8 PopUartQueue(UART_Type * uartx)
//  185 {
PopUartQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  186     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??PopUartQueue_0
//  187     {
//  188         return PopMyQueue(s_sUARTQueue[0]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+0]
        BL       PopMyQueue
        B.N      ??PopUartQueue_1
//  189     }
//  190     else if(uartx == UART1)
??PopUartQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??PopUartQueue_2
//  191     {
//  192         return PopMyQueue(s_sUARTQueue[1]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+4]
        BL       PopMyQueue
        B.N      ??PopUartQueue_1
//  193     }
//  194     else if(uartx == UART2)
??PopUartQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??PopUartQueue_3
//  195     {
//  196         return PopMyQueue(s_sUARTQueue[2]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+8]
        BL       PopMyQueue
        B.N      ??PopUartQueue_1
//  197     }
//  198     else if(uartx == UART3)
??PopUartQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??PopUartQueue_4
//  199     {
//  200         return PopMyQueue(s_sUARTQueue[3]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+12]
        BL       PopMyQueue
        B.N      ??PopUartQueue_1
//  201     }
//  202     else if(uartx == UART4)
??PopUartQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??PopUartQueue_5
//  203     {
//  204         return PopMyQueue(s_sUARTQueue[4]);
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+16]
        BL       PopMyQueue
        B.N      ??PopUartQueue_1
//  205     }
//  206     else
//  207     {
//  208         return PopMyQueue(s_sUARTQueue[5]);
??PopUartQueue_5:
        LDR.W    R0,??DataTable15_1
        LDR      R0,[R0, #+20]
        BL       PopMyQueue
??PopUartQueue_1:
        POP      {R4,PC}          ;; return
//  209     }                
//  210 }
//  211 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 uint8 PutCharUartQueue(UART_Type * uartx, int8 ch)
//  213 {
PutCharUartQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  214     return PushUartQueue(uartx, ch);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       PushUartQueue
        POP      {R1,R4,R5,PC}    ;; return
//  215 }
//  216 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 uint8 PutStringUartQueue(UART_Type * uartx, int8 * str)
//  218 {
PutStringUartQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  219     while(*str != '\0')
??PutStringUartQueue_0:
        LDRSB    R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??PutStringUartQueue_1
//  220     {
//  221         if(PutCharUartQueue(uartx, *str))
        LDRSB    R1,[R5, #+0]
        MOVS     R0,R4
        BL       PutCharUartQueue
        CMP      R0,#+0
        BEQ.N    ??PutStringUartQueue_2
//  222         {
//  223             str++;
        ADDS     R5,R5,#+1
        B.N      ??PutStringUartQueue_0
//  224         }
//  225         else
//  226         {
//  227             return 0;
??PutStringUartQueue_2:
        MOVS     R0,#+0
        B.N      ??PutStringUartQueue_3
//  228         }
//  229     }
//  230 
//  231     return 1;
??PutStringUartQueue_1:
        MOVS     R0,#+1
??PutStringUartQueue_3:
        POP      {R1,R4,R5,PC}    ;; return
//  232 }
//  233 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 uint8 SendSeveralUartQueueData(UART_Type * uartx, int num)
//  235 {
SendSeveralUartQueueData:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  236     int i = 0;
        MOVS     R6,#+0
//  237 
//  238     for(i = 0; i < num; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??SendSeveralUartQueueData_0:
        CMP      R6,R5
        BGE.N    ??SendSeveralUartQueueData_1
//  239     {
//  240         if(!IsUartQueueEmpty(uartx))
        MOVS     R0,R4
        BL       IsUartQueueEmpty
        CMP      R0,#+0
        BNE.N    ??SendSeveralUartQueueData_2
//  241         {
//  242             LPLD_UART_PutChar(uartx, PopUartQueue(uartx));
        MOVS     R0,R4
        BL       PopUartQueue
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_UART_PutChar
//  243         }
        ADDS     R6,R6,#+1
        B.N      ??SendSeveralUartQueueData_0
//  244         else
//  245         {
//  246             return 0;
??SendSeveralUartQueueData_2:
        MOVS     R0,#+0
        B.N      ??SendSeveralUartQueueData_3
//  247         }
//  248     }
//  249 
//  250     return 1;
??SendSeveralUartQueueData_1:
        MOVS     R0,#+1
??SendSeveralUartQueueData_3:
        POP      {R4-R6,PC}       ;; return
//  251 }
//  252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void InitUartRecvQueue(UART_Type * uartx, int16 buf_size)
//  254 {
InitUartRecvQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  255     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_0
//  256     {
//  257         s_sUARTRecvQueue[0] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+0]
        B.N      ??InitUartRecvQueue_1
//  258     }
//  259     else if(uartx == UART1)
??InitUartRecvQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_2
//  260     {
//  261         s_sUARTRecvQueue[1] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+4]
        B.N      ??InitUartRecvQueue_1
//  262     }
//  263     else if(uartx == UART2)
??InitUartRecvQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_3
//  264     {
//  265         s_sUARTRecvQueue[2] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+8]
        B.N      ??InitUartRecvQueue_1
//  266     }
//  267     else if(uartx == UART3)
??InitUartRecvQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_4
//  268     {
//  269         s_sUARTRecvQueue[3] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+12]
        B.N      ??InitUartRecvQueue_1
//  270     }
//  271     else if(uartx == UART4)
??InitUartRecvQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_5
//  272     {
//  273         s_sUARTRecvQueue[4] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+16]
        B.N      ??InitUartRecvQueue_1
//  274     }
//  275     else if(uartx == UART5)
??InitUartRecvQueue_5:
        LDR.W    R0,??DataTable15_6  ;; 0x400eb000
        CMP      R4,R0
        BNE.N    ??InitUartRecvQueue_1
//  276     {
//  277         s_sUARTRecvQueue[5] = CreateMyQueue(buf_size);
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       CreateMyQueue
        LDR.W    R1,??DataTable15_7
        STR      R0,[R1, #+20]
//  278     }
//  279 }
??InitUartRecvQueue_1:
        POP      {R0,R4,R5,PC}    ;; return
//  280 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 void DestoryUartRecvQueue(UART_Type * uartx)
//  282 {
DestoryUartRecvQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  283     if(uartx == UART0)
        LDR.W    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_0
//  284     {
//  285         DestoryMyQueue(s_sUARTRecvQueue[0]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       DestoryMyQueue
        B.N      ??DestoryUartRecvQueue_1
//  286     }
//  287     else if(uartx == UART1)
??DestoryUartRecvQueue_0:
        LDR.W    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_2
//  288     {
//  289         DestoryMyQueue(s_sUARTRecvQueue[1]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       DestoryMyQueue
        B.N      ??DestoryUartRecvQueue_1
//  290     }
//  291     else if(uartx == UART2)
??DestoryUartRecvQueue_2:
        LDR.W    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_3
//  292     {
//  293         DestoryMyQueue(s_sUARTRecvQueue[2]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       DestoryMyQueue
        B.N      ??DestoryUartRecvQueue_1
//  294     }
//  295     else if(uartx == UART3)
??DestoryUartRecvQueue_3:
        LDR.W    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_4
//  296     {
//  297         DestoryMyQueue(s_sUARTRecvQueue[3]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       DestoryMyQueue
        B.N      ??DestoryUartRecvQueue_1
//  298     }
//  299     else if(uartx == UART4)
??DestoryUartRecvQueue_4:
        LDR.W    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_5
//  300     {
//  301         DestoryMyQueue(s_sUARTRecvQueue[4]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       DestoryMyQueue
        B.N      ??DestoryUartRecvQueue_1
//  302     }
//  303     else if(uartx == UART5)
??DestoryUartRecvQueue_5:
        LDR.W    R0,??DataTable15_6  ;; 0x400eb000
        CMP      R4,R0
        BNE.N    ??DestoryUartRecvQueue_1
//  304     {
//  305         DestoryMyQueue(s_sUARTRecvQueue[5]);
        LDR.W    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       DestoryMyQueue
//  306     }    
//  307 }
??DestoryUartRecvQueue_1:
        POP      {R4,PC}          ;; return
//  308 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  309 int16 GetUartRecvQueueSize(UART_Type* uartx)
//  310 {
GetUartRecvQueueSize:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  311     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??GetUartRecvQueueSize_0
//  312     {
//  313         return GetMyQueueSize(s_sUARTRecvQueue[0]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       GetMyQueueSize
        B.N      ??GetUartRecvQueueSize_1
//  314     }
//  315     else if(uartx == UART1)
??GetUartRecvQueueSize_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??GetUartRecvQueueSize_2
//  316     {
//  317         return GetMyQueueSize(s_sUARTRecvQueue[1]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       GetMyQueueSize
        B.N      ??GetUartRecvQueueSize_1
//  318     }
//  319     else if(uartx == UART2)
??GetUartRecvQueueSize_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??GetUartRecvQueueSize_3
//  320     {
//  321         return GetMyQueueSize(s_sUARTRecvQueue[2]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       GetMyQueueSize
        B.N      ??GetUartRecvQueueSize_1
//  322     }
//  323     else if(uartx == UART3)
??GetUartRecvQueueSize_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??GetUartRecvQueueSize_4
//  324     {
//  325         return GetMyQueueSize(s_sUARTRecvQueue[3]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       GetMyQueueSize
        B.N      ??GetUartRecvQueueSize_1
//  326     }
//  327     else if(uartx == UART4)
??GetUartRecvQueueSize_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??GetUartRecvQueueSize_5
//  328     {
//  329         return GetMyQueueSize(s_sUARTRecvQueue[4]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       GetMyQueueSize
        B.N      ??GetUartRecvQueueSize_1
//  330     }
//  331     else
//  332     {
//  333         return GetMyQueueSize(s_sUARTRecvQueue[5]);
??GetUartRecvQueueSize_5:
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       GetMyQueueSize
??GetUartRecvQueueSize_1:
        POP      {R4,PC}          ;; return
//  334     }        
//  335 }
//  336 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  337 uint8 IsUartRecvQueueEmpty(UART_Type * uartx)
//  338 {
IsUartRecvQueueEmpty:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  339     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueEmpty_0
//  340     {
//  341         return IsMyQueueEmpty(s_sUARTRecvQueue[0]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       IsMyQueueEmpty
        B.N      ??IsUartRecvQueueEmpty_1
//  342     }
//  343     else if(uartx == UART1)
??IsUartRecvQueueEmpty_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueEmpty_2
//  344     {
//  345         return IsMyQueueEmpty(s_sUARTRecvQueue[1]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       IsMyQueueEmpty
        B.N      ??IsUartRecvQueueEmpty_1
//  346     }
//  347     else if(uartx == UART2)
??IsUartRecvQueueEmpty_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueEmpty_3
//  348     {
//  349         return IsMyQueueEmpty(s_sUARTRecvQueue[2]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       IsMyQueueEmpty
        B.N      ??IsUartRecvQueueEmpty_1
//  350     }
//  351     else if(uartx == UART3)
??IsUartRecvQueueEmpty_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueEmpty_4
//  352     {
//  353         return IsMyQueueEmpty(s_sUARTRecvQueue[3]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       IsMyQueueEmpty
        B.N      ??IsUartRecvQueueEmpty_1
//  354     }
//  355     else if(uartx == UART4)
??IsUartRecvQueueEmpty_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueEmpty_5
//  356     {
//  357         return IsMyQueueEmpty(s_sUARTRecvQueue[4]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       IsMyQueueEmpty
        B.N      ??IsUartRecvQueueEmpty_1
//  358     }
//  359     else
//  360     {
//  361         return IsMyQueueEmpty(s_sUARTRecvQueue[5]);
??IsUartRecvQueueEmpty_5:
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       IsMyQueueEmpty
??IsUartRecvQueueEmpty_1:
        POP      {R4,PC}          ;; return
//  362     }            
//  363 }
//  364 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  365 uint8 IsUartRecvQueueFull(UART_Type * uartx)
//  366 {
IsUartRecvQueueFull:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  367     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueFull_0
//  368     {
//  369         return IsMyQueueFull(s_sUARTRecvQueue[0]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       IsMyQueueFull
        B.N      ??IsUartRecvQueueFull_1
//  370     }
//  371     else if(uartx == UART1)
??IsUartRecvQueueFull_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueFull_2
//  372     {
//  373         return IsMyQueueFull(s_sUARTRecvQueue[1]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       IsMyQueueFull
        B.N      ??IsUartRecvQueueFull_1
//  374     }
//  375     else if(uartx == UART2)
??IsUartRecvQueueFull_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueFull_3
//  376     {
//  377         return IsMyQueueFull(s_sUARTRecvQueue[2]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       IsMyQueueFull
        B.N      ??IsUartRecvQueueFull_1
//  378     }
//  379     else if(uartx == UART3)
??IsUartRecvQueueFull_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueFull_4
//  380     {
//  381         return IsMyQueueFull(s_sUARTRecvQueue[3]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       IsMyQueueFull
        B.N      ??IsUartRecvQueueFull_1
//  382     }
//  383     else if(uartx == UART4)
??IsUartRecvQueueFull_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??IsUartRecvQueueFull_5
//  384     {
//  385         return IsMyQueueFull(s_sUARTRecvQueue[4]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       IsMyQueueFull
        B.N      ??IsUartRecvQueueFull_1
//  386     }
//  387     else
//  388     {
//  389         return IsMyQueueFull(s_sUARTRecvQueue[5]);
??IsUartRecvQueueFull_5:
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       IsMyQueueFull
??IsUartRecvQueueFull_1:
        POP      {R4,PC}          ;; return
//  390     }                
//  391 }
//  392 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  393 uint8 PushUartRecvQueue(UART_Type * uartx, int8 data)
//  394 {
PushUartRecvQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  395     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??PushUartRecvQueue_0
//  396     {
//  397         return PushMyQueue(s_sUARTRecvQueue[0], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       PushMyQueue
        B.N      ??PushUartRecvQueue_1
//  398     }
//  399     else if(uartx == UART1)
??PushUartRecvQueue_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??PushUartRecvQueue_2
//  400     {
//  401         return PushMyQueue(s_sUARTRecvQueue[1], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       PushMyQueue
        B.N      ??PushUartRecvQueue_1
//  402     }
//  403     else if(uartx == UART2)
??PushUartRecvQueue_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??PushUartRecvQueue_3
//  404     {
//  405         return PushMyQueue(s_sUARTRecvQueue[2], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       PushMyQueue
        B.N      ??PushUartRecvQueue_1
//  406     }
//  407     else if(uartx == UART3)
??PushUartRecvQueue_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??PushUartRecvQueue_4
//  408     {
//  409         return PushMyQueue(s_sUARTRecvQueue[3], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       PushMyQueue
        B.N      ??PushUartRecvQueue_1
//  410     }
//  411     else if(uartx == UART4)
??PushUartRecvQueue_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??PushUartRecvQueue_5
//  412     {
//  413         return PushMyQueue(s_sUARTRecvQueue[4], data);
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       PushMyQueue
        B.N      ??PushUartRecvQueue_1
//  414     }
//  415     else
//  416     {
//  417         return PushMyQueue(s_sUARTRecvQueue[5], data);
??PushUartRecvQueue_5:
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       PushMyQueue
??PushUartRecvQueue_1:
        POP      {R1,R4,R5,PC}    ;; return
//  418     }                
//  419 }
//  420 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 int8 PopUartRecvQueue(UART_Type * uartx)
//  422 {
PopUartRecvQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  423     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??PopUartRecvQueue_0
//  424     {
//  425         return PopMyQueue(s_sUARTRecvQueue[0]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       PopMyQueue
        B.N      ??PopUartRecvQueue_1
//  426     }
//  427     else if(uartx == UART1)
??PopUartRecvQueue_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??PopUartRecvQueue_2
//  428     {
//  429         return PopMyQueue(s_sUARTRecvQueue[1]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       PopMyQueue
        B.N      ??PopUartRecvQueue_1
//  430     }
//  431     else if(uartx == UART2)
??PopUartRecvQueue_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??PopUartRecvQueue_3
//  432     {
//  433         return PopMyQueue(s_sUARTRecvQueue[2]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       PopMyQueue
        B.N      ??PopUartRecvQueue_1
//  434     }
//  435     else if(uartx == UART3)
??PopUartRecvQueue_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??PopUartRecvQueue_4
//  436     {
//  437         return PopMyQueue(s_sUARTRecvQueue[3]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       PopMyQueue
        B.N      ??PopUartRecvQueue_1
//  438     }
//  439     else if(uartx == UART4)
??PopUartRecvQueue_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??PopUartRecvQueue_5
//  440     {
//  441         return PopMyQueue(s_sUARTRecvQueue[4]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       PopMyQueue
        B.N      ??PopUartRecvQueue_1
//  442     }
//  443     else
//  444     {
//  445         return PopMyQueue(s_sUARTRecvQueue[5]);
??PopUartRecvQueue_5:
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       PopMyQueue
??PopUartRecvQueue_1:
        POP      {R4,PC}          ;; return
//  446     }                
//  447 }
//  448 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  449 void ClearUartRecvQueue(UART_Type * uartx)
//  450 {
ClearUartRecvQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  451     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_0
//  452     {
//  453         ClearMyQueue(s_sUARTRecvQueue[0]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        BL       ClearMyQueue
        B.N      ??ClearUartRecvQueue_1
//  454     }
//  455     else if(uartx == UART1)
??ClearUartRecvQueue_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_2
//  456     {
//  457         ClearMyQueue(s_sUARTRecvQueue[1]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        BL       ClearMyQueue
        B.N      ??ClearUartRecvQueue_1
//  458     }
//  459     else if(uartx == UART2)
??ClearUartRecvQueue_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_3
//  460     {
//  461         ClearMyQueue(s_sUARTRecvQueue[2]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        BL       ClearMyQueue
        B.N      ??ClearUartRecvQueue_1
//  462     }
//  463     else if(uartx == UART3)
??ClearUartRecvQueue_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_4
//  464     {
//  465         ClearMyQueue(s_sUARTRecvQueue[3]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        BL       ClearMyQueue
        B.N      ??ClearUartRecvQueue_1
//  466     }
//  467     else if(uartx == UART4)
??ClearUartRecvQueue_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_5
//  468     {
//  469         ClearMyQueue(s_sUARTRecvQueue[4]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        BL       ClearMyQueue
        B.N      ??ClearUartRecvQueue_1
//  470     }
//  471     else if(uartx == UART5)
??ClearUartRecvQueue_5:
        LDR.N    R0,??DataTable15_6  ;; 0x400eb000
        CMP      R4,R0
        BNE.N    ??ClearUartRecvQueue_1
//  472     {
//  473         ClearMyQueue(s_sUARTRecvQueue[5]);
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
        BL       ClearMyQueue
//  474     }    
//  475 }
??ClearUartRecvQueue_1:
        POP      {R4,PC}          ;; return
//  476 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  477 MyQueue * GetUartRecvQueue(UART_Type * uartx)
//  478 {
GetUartRecvQueue:
        MOVS     R1,R0
//  479     if(uartx == UART0)
        LDR.N    R0,??DataTable15  ;; 0x4006a000
        CMP      R1,R0
        BNE.N    ??GetUartRecvQueue_0
//  480     {
//  481         return s_sUARTRecvQueue[0];
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+0]
        B.N      ??GetUartRecvQueue_1
//  482     }
//  483     else if(uartx == UART1)
??GetUartRecvQueue_0:
        LDR.N    R0,??DataTable15_2  ;; 0x4006b000
        CMP      R1,R0
        BNE.N    ??GetUartRecvQueue_2
//  484     {
//  485         return s_sUARTRecvQueue[1];
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+4]
        B.N      ??GetUartRecvQueue_1
//  486     }
//  487     else if(uartx == UART2)
??GetUartRecvQueue_2:
        LDR.N    R0,??DataTable15_3  ;; 0x4006c000
        CMP      R1,R0
        BNE.N    ??GetUartRecvQueue_3
//  488     {
//  489         return s_sUARTRecvQueue[2];
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+8]
        B.N      ??GetUartRecvQueue_1
//  490     }
//  491     else if(uartx == UART3)
??GetUartRecvQueue_3:
        LDR.N    R0,??DataTable15_4  ;; 0x4006d000
        CMP      R1,R0
        BNE.N    ??GetUartRecvQueue_4
//  492     {
//  493         return s_sUARTRecvQueue[3];
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+12]
        B.N      ??GetUartRecvQueue_1
//  494     }
//  495     else if(uartx == UART4)
??GetUartRecvQueue_4:
        LDR.N    R0,??DataTable15_5  ;; 0x400ea000
        CMP      R1,R0
        BNE.N    ??GetUartRecvQueue_5
//  496     {
//  497         return s_sUARTRecvQueue[4];
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+16]
        B.N      ??GetUartRecvQueue_1
//  498     }
//  499     else
//  500     {
//  501         return s_sUARTRecvQueue[5];
??GetUartRecvQueue_5:
        LDR.N    R0,??DataTable15_7
        LDR      R0,[R0, #+20]
??GetUartRecvQueue_1:
        BX       LR               ;; return
//  502     }      
//  503 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     s_sUARTQueue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     s_sUARTRecvQueue

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
//    48 bytes in section .bss
// 1 962 bytes in section .text
// 
// 1 962 bytes of CODE memory
//    48 bytes of DATA memory
//
//Errors: none
//Warnings: none
