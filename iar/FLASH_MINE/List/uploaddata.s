///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:15 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\uploaddata.c                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\uploaddata.c -D LPLD_K60 -lCN              /
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
//                    MINE\List\uploaddata.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME uploaddata

        #define SHT_PROGBITS 0x1

        EXTERN CommUartSendOneByte

        PUBLIC miniAHRS_GetUartQueue
        PUBLIC miniAHRS_GetUartQueueSize
        PUBLIC miniAHRS_InitUartQueue
        PUBLIC miniAHRS_IsUartQueueEmpty
        PUBLIC miniAHRS_PopUartQueue
        PUBLIC miniAHRS_PushUartQueue
        PUBLIC miniAHRS_ReportIMU
        PUBLIC miniAHRS_ReportIMU_Queue
        PUBLIC miniAHRS_ReportMotion
        PUBLIC miniAHRS_ReportMotion_Queue
        PUBLIC miniAHRS_SendOneByte

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Communicate\uploaddata.c
//    1 /****************************************************************************** 
//    2  *       uploaddata.c ----- The upload the state data of quad to upper software *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  uploaddata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/8 16:34:59                                                       *
//   10  ******************************************************************************/
//   11 #include "uploaddata.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static miniAHRS_UartQueue miniAHRS_uart_queue_struct;
miniAHRS_uart_queue_struct:
        DS8 132
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void miniAHRS_InitUartQueue(void)
//   16 {
//   17     int i = 0;
miniAHRS_InitUartQueue:
        MOVS     R0,#+0
//   18     for(i = 0; i < MINIAHRS_UART_QUEUE_SIZE; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??miniAHRS_InitUartQueue_0:
        CMP      R0,#+128
        BGE.N    ??miniAHRS_InitUartQueue_1
//   19     {
//   20         miniAHRS_uart_queue_struct.buff[i] = '\0';
        LDR.W    R1,??DataTable8
        MOVS     R2,#+0
        STRB     R2,[R0, R1]
//   21     }
        ADDS     R0,R0,#+1
        B.N      ??miniAHRS_InitUartQueue_0
//   22     miniAHRS_uart_queue_struct.queue_front_pointer = 0;
??miniAHRS_InitUartQueue_1:
        LDR.W    R1,??DataTable8
        MOVS     R2,#+0
        STRH     R2,[R1, #+128]
//   23     miniAHRS_uart_queue_struct.queue_back_pointer = 0;
        LDR.W    R1,??DataTable8
        MOVS     R2,#+0
        STRH     R2,[R1, #+130]
//   24 }
        BX       LR               ;; return
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 int16 miniAHRS_GetUartQueueSize(void)
//   27 {
//   28     int16 diff = 0;
miniAHRS_GetUartQueueSize:
        MOVS     R0,#+0
//   29 
//   30     diff = miniAHRS_uart_queue_struct.queue_front_pointer - miniAHRS_uart_queue_struct.queue_back_pointer;
        LDR.W    R1,??DataTable8
        LDRH     R1,[R1, #+128]
        LDR.W    R2,??DataTable8
        LDRH     R2,[R2, #+130]
        SUBS     R1,R1,R2
        MOVS     R0,R1
//   31 
//   32     if(diff >= 0)
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BPL.N    ??miniAHRS_GetUartQueueSize_0
//   33     {
//   34         diff = diff;
//   35     }
//   36     else
//   37     {
//   38         diff = diff + MINIAHRS_UART_QUEUE_SIZE;
??miniAHRS_GetUartQueueSize_1:
        ADDS     R0,R0,#+128
//   39     }
//   40 
//   41     return diff;
??miniAHRS_GetUartQueueSize_0:
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   42 }
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 uint8 miniAHRS_IsUartQueueEmpty(void)
//   45 {
miniAHRS_IsUartQueueEmpty:
        PUSH     {R7,LR}
//   46     if(miniAHRS_GetUartQueueSize() > 0)
        BL       miniAHRS_GetUartQueueSize
        CMP      R0,#+1
        BLT.N    ??miniAHRS_IsUartQueueEmpty_0
//   47     {
//   48         return 0;
        MOVS     R0,#+0
        B.N      ??miniAHRS_IsUartQueueEmpty_1
//   49     }
//   50     else
//   51     {
//   52         return 1;
??miniAHRS_IsUartQueueEmpty_0:
        MOVS     R0,#+1
??miniAHRS_IsUartQueueEmpty_1:
        POP      {R1,PC}          ;; return
//   53     }
//   54 }
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 miniAHRS_UartQueue * miniAHRS_GetUartQueue(void)
//   57 {
//   58     return &miniAHRS_uart_queue_struct;
miniAHRS_GetUartQueue:
        LDR.W    R0,??DataTable8
        BX       LR               ;; return
//   59 }
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 uint8 miniAHRS_PushUartQueue(uint8 data)
//   62 {
miniAHRS_PushUartQueue:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   63     if(miniAHRS_GetUartQueueSize() < (MINIAHRS_UART_QUEUE_SIZE - 1))
        BL       miniAHRS_GetUartQueueSize
        CMP      R0,#+127
        BGE.N    ??miniAHRS_PushUartQueue_0
//   64     {
//   65         miniAHRS_uart_queue_struct.buff[miniAHRS_uart_queue_struct.queue_front_pointer] = data;
        LDR.W    R0,??DataTable8
        LDRSH    R0,[R0, #+128]
        LDR.W    R1,??DataTable8
        STRB     R4,[R0, R1]
//   66         miniAHRS_uart_queue_struct.queue_front_pointer ++;
        LDR.W    R0,??DataTable8
        LDRH     R0,[R0, #+128]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STRH     R0,[R1, #+128]
//   67         if(miniAHRS_uart_queue_struct.queue_front_pointer >= MINIAHRS_UART_QUEUE_SIZE)
        LDR.W    R0,??DataTable8
        LDRSH    R0,[R0, #+128]
        CMP      R0,#+128
        BLT.N    ??miniAHRS_PushUartQueue_1
//   68         {
//   69             miniAHRS_uart_queue_struct.queue_front_pointer = 0;
        LDR.W    R0,??DataTable8
        MOVS     R1,#+0
        STRH     R1,[R0, #+128]
//   70         }
//   71         return 1;
??miniAHRS_PushUartQueue_1:
        MOVS     R0,#+1
        B.N      ??miniAHRS_PushUartQueue_2
//   72     }
//   73     else
//   74     {
//   75         return 0;
??miniAHRS_PushUartQueue_0:
        MOVS     R0,#+0
??miniAHRS_PushUartQueue_2:
        POP      {R4,PC}          ;; return
//   76     }
//   77 }
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 uint8 miniAHRS_PopUartQueue(void)
//   80 {
miniAHRS_PopUartQueue:
        PUSH     {R4,LR}
//   81     uint8 ret = 0;
        MOVS     R4,#+0
//   82     ret = miniAHRS_uart_queue_struct.buff[miniAHRS_uart_queue_struct.queue_back_pointer];
        LDR.W    R0,??DataTable8
        LDRSH    R0,[R0, #+130]
        LDR.W    R1,??DataTable8
        LDRB     R0,[R0, R1]
        MOVS     R4,R0
//   83 
//   84     if(miniAHRS_GetUartQueueSize() > 0)
        BL       miniAHRS_GetUartQueueSize
        CMP      R0,#+1
        BLT.N    ??miniAHRS_PopUartQueue_0
//   85     {
//   86         miniAHRS_uart_queue_struct.queue_back_pointer ++;
        LDR.W    R0,??DataTable8
        LDRH     R0,[R0, #+130]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable8
        STRH     R0,[R1, #+130]
//   87         if(miniAHRS_uart_queue_struct.queue_back_pointer >= MINIAHRS_UART_QUEUE_SIZE)
        LDR.W    R0,??DataTable8
        LDRSH    R0,[R0, #+130]
        CMP      R0,#+128
        BLT.N    ??miniAHRS_PopUartQueue_0
//   88         {
//   89             miniAHRS_uart_queue_struct.queue_back_pointer = 0;
        LDR.W    R0,??DataTable8
        MOVS     R1,#+0
        STRH     R1,[R0, #+130]
//   90         }
//   91     }    
//   92 
//   93     return ret;
??miniAHRS_PopUartQueue_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   94 }
//   95 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 void miniAHRS_SendOneByte(uint8 ch)
//   97 {
miniAHRS_SendOneByte:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   98     CommUartSendOneByte((int8) ch);
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       CommUartSendOneByte
//   99 }
        POP      {R4,PC}          ;; return
//  100 
//  101 
//  102 /**************************实现函数********************************************
//  103 *函数原型:		void UART1_ReportIMU(int16_t yaw,int16_t pitch,int16_t roll
//  104 				,int16_t alt,int16_t tempr,int16_t press)
//  105 *功　　能:		向上位机发送经过解算后的姿态数据
//  106 输入参数：
//  107 		int16_t yaw 经过解算后的航向角度。单位为0.1度 0 -> 3600  对应 0 -> 360.0度
//  108 		int16_t pitch 解算得到的俯仰角度，单位 0.1度。-900 - 900 对应 -90.0 -> 90.0 度
//  109 		int16_t roll  解算后得到的横滚角度，单位0.1度。 -1800 -> 1800 对应 -180.0  ->  180.0度
//  110 		int16_t alt   气压高度。 单位0.1米。  范围一个整型变量
//  111 		int16_t tempr 温度 。 单位0.1摄氏度   范围：直到你的电路板不能正常工作
//  112 		int16_t press 气压压力。单位10Pa  一个大气压强在101300pa 这个已经超过一个整型的范围。需要除以10再发给上位机
//  113 		int16_t IMUpersec  姿态解算速率。运算IMUpersec每秒。
//  114 输出参数：没有	
//  115 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void miniAHRS_ReportIMU(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec)
//  117 {
miniAHRS_ReportIMU:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRSH    R8,[SP, #+40]
        LDRSH    R9,[SP, #+44]
//  118  	unsigned int temp=0xaF+2;
        MOVS     R10,#+177
//  119 	char ctemp;
//  120 	miniAHRS_SendOneByte(0xa5);
        MOVS     R0,#+165
        BL       miniAHRS_SendOneByte
//  121 	miniAHRS_SendOneByte(0x5a);
        MOVS     R0,#+90
        BL       miniAHRS_SendOneByte
//  122 	miniAHRS_SendOneByte(14+2);
        MOVS     R0,#+16
        BL       miniAHRS_SendOneByte
//  123 	miniAHRS_SendOneByte(0xA1);
        MOVS     R0,#+161
        BL       miniAHRS_SendOneByte
//  124 
//  125 	if(yaw<0)yaw=32768-yaw;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BPL.N    ??miniAHRS_ReportIMU_0
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R4,R0,R4
//  126 	ctemp=yaw>>8;
??miniAHRS_ReportIMU_0:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        MOV      R11,R0
//  127 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  128 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  129 	ctemp=yaw;
        MOVS     R0,R4
        MOV      R11,R0
//  130 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  131 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  132 
//  133 	if(pitch<0)pitch=32768-pitch;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??miniAHRS_ReportIMU_1
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R5,R0,R5
//  134 	ctemp=pitch>>8;
??miniAHRS_ReportIMU_1:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+8
        MOV      R11,R0
//  135 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  136 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  137 	ctemp=pitch;
        MOVS     R0,R5
        MOV      R11,R0
//  138 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  139 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  140 
//  141 	if(roll<0)roll=32768-roll;
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BPL.N    ??miniAHRS_ReportIMU_2
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R6,R0,R6
//  142 	ctemp=roll>>8;
??miniAHRS_ReportIMU_2:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R0,R6,#+8
        MOV      R11,R0
//  143 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  144 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  145 	ctemp=roll;
        MOVS     R0,R6
        MOV      R11,R0
//  146 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  147 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  148 
//  149 	if(alt<0)alt=32768-alt;
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??miniAHRS_ReportIMU_3
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R7,R0,R7
//  150 	ctemp=alt>>8;
??miniAHRS_ReportIMU_3:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ASRS     R0,R7,#+8
        MOV      R11,R0
//  151 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  152 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  153 	ctemp=alt;
        MOVS     R0,R7
        MOV      R11,R0
//  154 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  155 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  156 
//  157 	if(tempr<0)tempr=32768-tempr;
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BPL.N    ??miniAHRS_ReportIMU_4
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R8,R0,R8
//  158 	ctemp=tempr>>8;
??miniAHRS_ReportIMU_4:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ASRS     R0,R8,#+8
        MOV      R11,R0
//  159 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  160 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  161 	ctemp=tempr;
        MOV      R0,R8
        MOV      R11,R0
//  162 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  163 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  164 
//  165 	if(press<0)press=32768-press;
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BPL.N    ??miniAHRS_ReportIMU_5
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R9,R0,R9
//  166 	ctemp=press>>8;
??miniAHRS_ReportIMU_5:
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        ASRS     R0,R9,#+8
        MOV      R11,R0
//  167 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  168 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  169 	ctemp=press;
        MOV      R0,R9
        MOV      R11,R0
//  170 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  171 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  172 
//  173 	miniAHRS_SendOneByte(temp%256);
        MOV      R1,#+256
        UDIV     R0,R10,R1
        MLS      R0,R0,R1,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  174 	miniAHRS_SendOneByte(0xaa);
        MOVS     R0,#+170
        BL       miniAHRS_SendOneByte
//  175 }
        POP      {R0,R4-R11,PC}   ;; return
//  176 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  177 void miniAHRS_ReportIMU_Queue(int16_t yaw,int16_t pitch,int16_t roll,int16_t alt,int16_t tempr,int16_t press,int16_t IMUpersec)
//  178 {
miniAHRS_ReportIMU_Queue:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDRSH    R8,[SP, #+40]
        LDRSH    R9,[SP, #+44]
//  179  	unsigned int temp=0xaF+2;
        MOVS     R10,#+177
//  180 	char ctemp;
//  181 	miniAHRS_PushUartQueue(0xa5);
        MOVS     R0,#+165
        BL       miniAHRS_PushUartQueue
//  182 	miniAHRS_PushUartQueue(0x5a);
        MOVS     R0,#+90
        BL       miniAHRS_PushUartQueue
//  183 	miniAHRS_PushUartQueue(14+2);
        MOVS     R0,#+16
        BL       miniAHRS_PushUartQueue
//  184 	miniAHRS_PushUartQueue(0xA1);
        MOVS     R0,#+161
        BL       miniAHRS_PushUartQueue
//  185 
//  186 	if(yaw<0)yaw=32768-yaw;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_0
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R4,R0,R4
//  187 	ctemp=yaw>>8;
??miniAHRS_ReportIMU_Queue_0:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        MOV      R11,R0
//  188 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  189 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  190 	ctemp=yaw;
        MOVS     R0,R4
        MOV      R11,R0
//  191 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  192 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  193 
//  194 	if(pitch<0)pitch=32768-pitch;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_1
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R5,R0,R5
//  195 	ctemp=pitch>>8;
??miniAHRS_ReportIMU_Queue_1:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+8
        MOV      R11,R0
//  196 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  197 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  198 	ctemp=pitch;
        MOVS     R0,R5
        MOV      R11,R0
//  199 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  200 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  201 
//  202 	if(roll<0)roll=32768-roll;
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_2
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R6,R0,R6
//  203 	ctemp=roll>>8;
??miniAHRS_ReportIMU_Queue_2:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R0,R6,#+8
        MOV      R11,R0
//  204 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  205 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  206 	ctemp=roll;
        MOVS     R0,R6
        MOV      R11,R0
//  207 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  208 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  209 
//  210 	if(alt<0)alt=32768-alt;
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_3
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R7,R0,R7
//  211 	ctemp=alt>>8;
??miniAHRS_ReportIMU_Queue_3:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ASRS     R0,R7,#+8
        MOV      R11,R0
//  212 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  213 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  214 	ctemp=alt;
        MOVS     R0,R7
        MOV      R11,R0
//  215 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  216 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  217 
//  218 	if(tempr<0)tempr=32768-tempr;
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_4
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R8,R0,R8
//  219 	ctemp=tempr>>8;
??miniAHRS_ReportIMU_Queue_4:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ASRS     R0,R8,#+8
        MOV      R11,R0
//  220 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  221 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  222 	ctemp=tempr;
        MOV      R0,R8
        MOV      R11,R0
//  223 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  224 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  225 
//  226 	if(press<0)press=32768-press;
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BPL.N    ??miniAHRS_ReportIMU_Queue_5
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R9,R0,R9
//  227 	ctemp=press>>8;
??miniAHRS_ReportIMU_Queue_5:
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        ASRS     R0,R9,#+8
        MOV      R11,R0
//  228 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  229 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  230 	ctemp=press;
        MOV      R0,R9
        MOV      R11,R0
//  231 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  232 	temp+=ctemp;
        UXTAB    R10,R10,R11
//  233 
//  234 	miniAHRS_PushUartQueue(temp%256);
        MOV      R1,#+256
        UDIV     R0,R10,R1
        MLS      R0,R0,R1,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  235 	miniAHRS_PushUartQueue(0xaa);
        MOVS     R0,#+170
        BL       miniAHRS_PushUartQueue
//  236 }
        POP      {R0,R4-R11,PC}   ;; return
//  237 
//  238 
//  239 /**************************实现函数********************************************
//  240 *函数原型:		void UART1_ReportMotion(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,
//  241 					int16_t hx,int16_t hy,int16_t hz)
//  242 *功　　能:		向上位机发送当前传感器的输出值
//  243 输入参数：
//  244 	int16_t ax  加速度 X轴ADC输出 范围 ：一个有符号整型
//  245 	int16_t ay  加速度 Y轴ADC输出 范围 ：一个有符号整型
//  246 	int16_t az  加速度 Z轴ADC输出 范围 ：一个有符号整型
//  247 	int16_t gx  陀螺仪 X轴ADC输出 范围 ：一个有符号整型
//  248 	int16_t gy  陀螺仪 Y轴ADC输出 范围 ：一个有符号整型
//  249 	int16_t gz  陀螺仪 Z轴ADC输出 范围 ：一个有符号整型
//  250 	int16_t hx  磁罗盘 X轴ADC输出 范围 ：一个有符号整型
//  251 	int16_t hy  磁罗盘 Y轴ADC输出 范围 ：一个有符号整型
//  252 	int16_t hz  磁罗盘 Z轴ADC输出 范围 ：一个有符号整型
//  253 	
//  254 输出参数：没有	
//  255 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void miniAHRS_ReportMotion(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,	int16_t hx,int16_t hy,int16_t hz)
//  257 {
miniAHRS_ReportMotion:
        PUSH     {R0-R2,R4-R11,LR}
        MOVS     R4,R3
        LDRSH    R5,[SP, #+48]
        LDRSH    R6,[SP, #+52]
        LDRSH    R7,[SP, #+56]
        LDRSH    R8,[SP, #+60]
        LDRSH    R9,[SP, #+64]
//  258  	unsigned int temp=0xaF+9;
        MOVS     R11,#+184
//  259 	char ctemp;
//  260 	miniAHRS_SendOneByte(0xa5);
        MOVS     R0,#+165
        BL       miniAHRS_SendOneByte
//  261 	miniAHRS_SendOneByte(0x5a);
        MOVS     R0,#+90
        BL       miniAHRS_SendOneByte
//  262 	miniAHRS_SendOneByte(14+8);
        MOVS     R0,#+22
        BL       miniAHRS_SendOneByte
//  263 	miniAHRS_SendOneByte(0xA2);
        MOVS     R0,#+162
        BL       miniAHRS_SendOneByte
//  264 
//  265 	if(ax<0)ax=32768-ax;
        LDRSH    R0,[SP, #+0]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_0
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+0]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+0]
//  266 	ctemp=ax>>8;
??miniAHRS_ReportMotion_0:
        LDRSH    R0,[SP, #+0]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  267 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  268 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  269 	ctemp=ax;
        LDRH     R0,[SP, #+0]
        MOV      R10,R0
//  270 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  271 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  272 
//  273 	if(ay<0)ay=32768-ay;
        LDRSH    R0,[SP, #+4]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_1
        LDR.W    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+4]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+4]
//  274 	ctemp=ay>>8;
??miniAHRS_ReportMotion_1:
        LDRSH    R0,[SP, #+4]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  275 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  276 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  277 	ctemp=ay;
        LDRH     R0,[SP, #+4]
        MOV      R10,R0
//  278 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  279 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  280 
//  281 	if(az<0)az=32768-az;
        LDRSH    R0,[SP, #+8]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_2
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+8]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+8]
//  282 	ctemp=az>>8;
??miniAHRS_ReportMotion_2:
        LDRSH    R0,[SP, #+8]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  283 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  284 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  285 	ctemp=az;
        LDRH     R0,[SP, #+8]
        MOV      R10,R0
//  286 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  287 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  288 
//  289 	if(gx<0)gx=32768-gx;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BPL.N    ??miniAHRS_ReportMotion_3
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R4,R0,R4
//  290 	ctemp=gx>>8;
??miniAHRS_ReportMotion_3:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        MOV      R10,R0
//  291 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  292 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  293 	ctemp=gx;
        MOVS     R0,R4
        MOV      R10,R0
//  294 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  295 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  296 
//  297 	if(gy<0)gy=32768-gy;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??miniAHRS_ReportMotion_4
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R5,R0,R5
//  298 	ctemp=gy>>8;
??miniAHRS_ReportMotion_4:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+8
        MOV      R10,R0
//  299 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  300 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  301 	ctemp=gy;
        MOVS     R0,R5
        MOV      R10,R0
//  302 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  303 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  304 //-------------------------
//  305 	if(gz<0)gz=32768-gz;
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BPL.N    ??miniAHRS_ReportMotion_5
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R6,R0,R6
//  306 	ctemp=gz>>8;
??miniAHRS_ReportMotion_5:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R0,R6,#+8
        MOV      R10,R0
//  307 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  308 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  309 	ctemp=gz;
        MOVS     R0,R6
        MOV      R10,R0
//  310 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  311 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  312 
//  313 	if(hx<0)hx=32768-hx;
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??miniAHRS_ReportMotion_6
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R7,R0,R7
//  314 	ctemp=hx>>8;
??miniAHRS_ReportMotion_6:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ASRS     R0,R7,#+8
        MOV      R10,R0
//  315 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  316 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  317 	ctemp=hx;
        MOVS     R0,R7
        MOV      R10,R0
//  318 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  319 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  320 
//  321 	if(hy<0)hy=32768-hy;
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BPL.N    ??miniAHRS_ReportMotion_7
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R8,R0,R8
//  322 	ctemp=hy>>8;
??miniAHRS_ReportMotion_7:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ASRS     R0,R8,#+8
        MOV      R10,R0
//  323 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  324 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  325 	ctemp=hy;
        MOV      R0,R8
        MOV      R10,R0
//  326 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  327 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  328 
//  329 	if(hz<0)hz=32768-hz;
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BPL.N    ??miniAHRS_ReportMotion_8
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R9,R0,R9
//  330 	ctemp=hz>>8;
??miniAHRS_ReportMotion_8:
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        ASRS     R0,R9,#+8
        MOV      R10,R0
//  331 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  332 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  333 	ctemp=hz;
        MOV      R0,R9
        MOV      R10,R0
//  334 	miniAHRS_SendOneByte(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  335 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  336 
//  337 	miniAHRS_SendOneByte(temp%256);
        MOV      R1,#+256
        UDIV     R0,R11,R1
        MLS      R0,R0,R1,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  338 	miniAHRS_SendOneByte(0xaa);
        MOVS     R0,#+170
        BL       miniAHRS_SendOneByte
//  339 }
        POP      {R0-R2,R4-R11,PC}  ;; return
//  340 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 void miniAHRS_ReportMotion_Queue(int16_t ax,int16_t ay,int16_t az,int16_t gx,int16_t gy,int16_t gz,	int16_t hx,int16_t hy,int16_t hz)
//  342 {
miniAHRS_ReportMotion_Queue:
        PUSH     {R0-R2,R4-R11,LR}
        MOVS     R4,R3
        LDRSH    R5,[SP, #+48]
        LDRSH    R6,[SP, #+52]
        LDRSH    R7,[SP, #+56]
        LDRSH    R8,[SP, #+60]
        LDRSH    R9,[SP, #+64]
//  343  	unsigned int temp=0xaF+9;
        MOVS     R11,#+184
//  344 	char ctemp;
//  345 	miniAHRS_PushUartQueue(0xa5);
        MOVS     R0,#+165
        BL       miniAHRS_PushUartQueue
//  346 	miniAHRS_PushUartQueue(0x5a);
        MOVS     R0,#+90
        BL       miniAHRS_PushUartQueue
//  347 	miniAHRS_PushUartQueue(14+8);
        MOVS     R0,#+22
        BL       miniAHRS_PushUartQueue
//  348 	miniAHRS_PushUartQueue(0xA2);
        MOVS     R0,#+162
        BL       miniAHRS_PushUartQueue
//  349 
//  350 	if(ax<0)ax=32768-ax;
        LDRSH    R0,[SP, #+0]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_0
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+0]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+0]
//  351 	ctemp=ax>>8;
??miniAHRS_ReportMotion_Queue_0:
        LDRSH    R0,[SP, #+0]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  352 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  353 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  354 	ctemp=ax;
        LDRH     R0,[SP, #+0]
        MOV      R10,R0
//  355 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  356 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  357 
//  358 	if(ay<0)ay=32768-ay;
        LDRSH    R0,[SP, #+4]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_1
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+4]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+4]
//  359 	ctemp=ay>>8;
??miniAHRS_ReportMotion_Queue_1:
        LDRSH    R0,[SP, #+4]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  360 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  361 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  362 	ctemp=ay;
        LDRH     R0,[SP, #+4]
        MOV      R10,R0
//  363 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  364 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  365 
//  366 	if(az<0)az=32768-az;
        LDRSH    R0,[SP, #+8]
        CMP      R0,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_2
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        LDRH     R1,[SP, #+8]
        SUBS     R0,R0,R1
        STRH     R0,[SP, #+8]
//  367 	ctemp=az>>8;
??miniAHRS_ReportMotion_Queue_2:
        LDRSH    R0,[SP, #+8]
        ASRS     R0,R0,#+8
        MOV      R10,R0
//  368 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  369 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  370 	ctemp=az;
        LDRH     R0,[SP, #+8]
        MOV      R10,R0
//  371 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  372 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  373 
//  374 	if(gx<0)gx=32768-gx;
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_3
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R4,R0,R4
//  375 	ctemp=gx>>8;
??miniAHRS_ReportMotion_Queue_3:
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        MOV      R10,R0
//  376 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  377 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  378 	ctemp=gx;
        MOVS     R0,R4
        MOV      R10,R0
//  379 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  380 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  381 
//  382 	if(gy<0)gy=32768-gy;
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_4
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R5,R0,R5
//  383 	ctemp=gy>>8;
??miniAHRS_ReportMotion_Queue_4:
        SXTH     R5,R5            ;; SignExt  R5,R5,#+16,#+16
        ASRS     R0,R5,#+8
        MOV      R10,R0
//  384 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  385 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  386 	ctemp=gy;
        MOVS     R0,R5
        MOV      R10,R0
//  387 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  388 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  389 //-------------------------
//  390 	if(gz<0)gz=32768-gz;
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_5
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R6,R0,R6
//  391 	ctemp=gz>>8;
??miniAHRS_ReportMotion_Queue_5:
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        ASRS     R0,R6,#+8
        MOV      R10,R0
//  392 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  393 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  394 	ctemp=gz;
        MOVS     R0,R6
        MOV      R10,R0
//  395 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  396 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  397 
//  398 	if(hx<0)hx=32768-hx;
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        CMP      R7,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_6
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R7,R0,R7
//  399 	ctemp=hx>>8;
??miniAHRS_ReportMotion_Queue_6:
        SXTH     R7,R7            ;; SignExt  R7,R7,#+16,#+16
        ASRS     R0,R7,#+8
        MOV      R10,R0
//  400 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  401 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  402 	ctemp=hx;
        MOVS     R0,R7
        MOV      R10,R0
//  403 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  404 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  405 
//  406 	if(hy<0)hy=32768-hy;
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        CMP      R8,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_7
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R8,R0,R8
//  407 	ctemp=hy>>8;
??miniAHRS_ReportMotion_Queue_7:
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ASRS     R0,R8,#+8
        MOV      R10,R0
//  408 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  409 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  410 	ctemp=hy;
        MOV      R0,R8
        MOV      R10,R0
//  411 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  412 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  413 
//  414 	if(hz<0)hz=32768-hz;
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BPL.N    ??miniAHRS_ReportMotion_Queue_8
        LDR.N    R0,??DataTable8_1  ;; 0xffff8000
        SUBS     R9,R0,R9
//  415 	ctemp=hz>>8;
??miniAHRS_ReportMotion_Queue_8:
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        ASRS     R0,R9,#+8
        MOV      R10,R0
//  416 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  417 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  418 	ctemp=hz;
        MOV      R0,R9
        MOV      R10,R0
//  419 	miniAHRS_PushUartQueue(ctemp);
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  420 	temp+=ctemp;
        UXTAB    R11,R11,R10
//  421 
//  422 	miniAHRS_PushUartQueue(temp%256);
        MOV      R1,#+256
        UDIV     R0,R11,R1
        MLS      R0,R0,R1,R11
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_PushUartQueue
//  423 	miniAHRS_PushUartQueue(0xaa);
        MOVS     R0,#+170
        BL       miniAHRS_PushUartQueue
//  424 }
        POP      {R0-R2,R4-R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     miniAHRS_uart_queue_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0xffff8000

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  425 
// 
//   132 bytes in section .bss
// 2 100 bytes in section .text
// 
// 2 100 bytes of CODE memory
//   132 bytes of DATA memory
//
//Errors: none
//Warnings: none
