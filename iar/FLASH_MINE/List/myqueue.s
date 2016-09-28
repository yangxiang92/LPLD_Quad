///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:40 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\myqueue.c                                  /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\myqueue.c -D LPLD_K60 -lCN                 /
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
//                    MINE\List\myqueue.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME myqueue

        #define SHT_PROGBITS 0x1

        EXTERN free
        EXTERN malloc

        PUBLIC ClearMyQueue
        PUBLIC CreateMyQueue
        PUBLIC DestoryMyQueue
        PUBLIC GetMyQueueSize
        PUBLIC IsMyQueueEmpty
        PUBLIC IsMyQueueFull
        PUBLIC PopMyQueue
        PUBLIC PushMyQueue

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Communicate\myqueue.c
//    1 /****************************************************************************** 
//    2  *       myqueue.c ----- The queue data structure algorithm          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  myqueue.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/12 9:25:13                                                       *
//   10  ******************************************************************************/
//   11 #include "myqueue.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 MyQueue * CreateMyQueue(uint16 buf_size)
//   14 {
CreateMyQueue:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   15     MyQueue * ret_queue;
//   16     int i = 0;
        MOVS     R6,#+0
//   17 
//   18     ret_queue = (MyQueue *)malloc(sizeof(MyQueue));
        MOVS     R0,#+12
        BL       malloc
        MOVS     R5,R0
//   19     ret_queue->buff_size = buf_size;
        STRH     R4,[R5, #+8]
//   20     ret_queue->buff = (int8 *)malloc(ret_queue->buff_size * sizeof(int8));
        LDRH     R0,[R5, #+8]
        BL       malloc
        STR      R0,[R5, #+0]
//   21     for(i = 0; i < ret_queue->buff_size; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??CreateMyQueue_0:
        LDRH     R0,[R5, #+8]
        CMP      R6,R0
        BGE.N    ??CreateMyQueue_1
//   22     {
//   23         ret_queue->buff[i] = '\0';
        LDR      R0,[R5, #+0]
        MOVS     R1,#+0
        STRB     R1,[R6, R0]
//   24     }
        ADDS     R6,R6,#+1
        B.N      ??CreateMyQueue_0
//   25     ret_queue->front_pointer = 0;
??CreateMyQueue_1:
        MOVS     R0,#+0
        STRH     R0,[R5, #+4]
//   26     ret_queue->back_pointer = 0;
        MOVS     R0,#+0
        STRH     R0,[R5, #+6]
//   27     
//   28     return ret_queue;
        MOVS     R0,R5
        POP      {R4-R6,PC}       ;; return
//   29 }
//   30 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void DestoryMyQueue(MyQueue * queue)
//   32 {
DestoryMyQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   33     free(queue->buff);
        LDR      R0,[R4, #+0]
        BL       free
//   34     free(queue);
        MOVS     R0,R4
        BL       free
//   35 }
        POP      {R4,PC}          ;; return
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 int16 GetMyQueueSize(MyQueue * queue)
//   38 {
GetMyQueueSize:
        MOVS     R1,R0
//   39     int16 diff = 0;
        MOVS     R0,#+0
//   40 
//   41     diff = queue->front_pointer - queue->back_pointer;
        LDRH     R2,[R1, #+4]
        LDRH     R3,[R1, #+6]
        SUBS     R2,R2,R3
        MOVS     R0,R2
//   42 
//   43     if(diff >= 0)
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??GetMyQueueSize_0
//   44     {
//   45         diff = diff;
//   46     }
//   47     else
//   48     {
//   49         diff = diff + queue->buff_size;
??GetMyQueueSize_1:
        LDRSH    R2,[R1, #+8]
        ADDS     R0,R2,R0
//   50     }
//   51 
//   52     return diff;
??GetMyQueueSize_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   53 }
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 uint8 IsMyQueueEmpty(MyQueue * queue)
//   56 {
IsMyQueueEmpty:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   57     if(GetMyQueueSize(queue) > 0)
        MOVS     R0,R4
        BL       GetMyQueueSize
        CMP      R0,#+1
        BLT.N    ??IsMyQueueEmpty_0
//   58     {
//   59         return 0;
        MOVS     R0,#+0
        B.N      ??IsMyQueueEmpty_1
//   60     }
//   61     else
//   62     {
//   63         return 1;
??IsMyQueueEmpty_0:
        MOVS     R0,#+1
??IsMyQueueEmpty_1:
        POP      {R4,PC}          ;; return
//   64     }
//   65 }
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 uint8 IsMyQueueFull(MyQueue * queue)
//   68 {
IsMyQueueFull:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   69     if(GetMyQueueSize(queue) < (queue->buff_size-1))
        MOVS     R0,R4
        BL       GetMyQueueSize
        LDRH     R1,[R4, #+8]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BGE.N    ??IsMyQueueFull_0
//   70     {
//   71         return 0;
        MOVS     R0,#+0
        B.N      ??IsMyQueueFull_1
//   72     }
//   73     else
//   74     {
//   75         return 1;
??IsMyQueueFull_0:
        MOVS     R0,#+1
??IsMyQueueFull_1:
        POP      {R4,PC}          ;; return
//   76     }
//   77 }
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 uint8 PushMyQueue(MyQueue * queue, int8 data)
//   80 {
PushMyQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   81     if(!IsMyQueueFull(queue))
        MOVS     R0,R4
        BL       IsMyQueueFull
        CMP      R0,#+0
        BNE.N    ??PushMyQueue_0
//   82     {
//   83         queue->buff[queue->front_pointer] = data;
        LDRSH    R0,[R4, #+4]
        LDR      R1,[R4, #+0]
        STRB     R5,[R0, R1]
//   84         queue->front_pointer ++;
        LDRH     R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+4]
//   85         if(queue->front_pointer >= queue->buff_size)
        LDRSH    R0,[R4, #+4]
        LDRH     R1,[R4, #+8]
        CMP      R0,R1
        BLT.N    ??PushMyQueue_1
//   86         {
//   87             queue->front_pointer = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+4]
//   88         }
//   89         return 1;
??PushMyQueue_1:
        MOVS     R0,#+1
        B.N      ??PushMyQueue_2
//   90     }
//   91     else
//   92     {
//   93         return 0;
??PushMyQueue_0:
        MOVS     R0,#+0
??PushMyQueue_2:
        POP      {R1,R4,R5,PC}    ;; return
//   94     }
//   95 }
//   96 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 int8 PopMyQueue(MyQueue * queue)
//   98 {
PopMyQueue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   99     int8 ret = 0;
        MOVS     R5,#+0
//  100 
//  101     ret = queue->buff[queue->back_pointer];
        LDRSH    R0,[R4, #+6]
        LDR      R1,[R4, #+0]
        LDRSB    R0,[R0, R1]
        MOVS     R5,R0
//  102 
//  103     if(!IsMyQueueEmpty(queue))
        MOVS     R0,R4
        BL       IsMyQueueEmpty
        CMP      R0,#+0
        BNE.N    ??PopMyQueue_0
//  104     {
//  105         queue->back_pointer ++;
        LDRH     R0,[R4, #+6]
        ADDS     R0,R0,#+1
        STRH     R0,[R4, #+6]
//  106         if(queue->back_pointer >= (queue->buff_size))
        LDRSH    R0,[R4, #+6]
        LDRH     R1,[R4, #+8]
        CMP      R0,R1
        BLT.N    ??PopMyQueue_0
//  107         {
//  108             queue->back_pointer = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+6]
//  109         }
//  110     }
//  111 
//  112     return ret;
??PopMyQueue_0:
        MOVS     R0,R5
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  113 }
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void ClearMyQueue(MyQueue * queue)
//  116 {
//  117     queue->front_pointer = queue->back_pointer;
ClearMyQueue:
        LDRH     R1,[R0, #+6]
        STRH     R1,[R0, #+4]
//  118 }
        BX       LR               ;; return

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
// 260 bytes in section .text
// 
// 260 bytes of CODE memory
//
//Errors: none
//Warnings: none
