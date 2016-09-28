///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:19 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\decodedata.c                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \Communicate\decodedata.c -D LPLD_K60 -lCN              /
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
//                    MINE\List\decodedata.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME decodedata

        #define SHT_PROGBITS 0x1

        EXTERN CalculateCrc16_HalfByte
        EXTERN ClearUartRecvQueue
        EXTERN GetUartRecvQueueSize
        EXTERN PopUartRecvQueue
        EXTERN PushUartRecvQueue
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memcpy4

        PUBLIC CheckDecodedFlag
        PUBLIC ClearDecodedFlag
        PUBLIC DecodeControlParaData
        PUBLIC DecodePX4FLOWData
        PUBLIC RecvFrame
        PUBLIC SetDecodedFlag
        PUBLIC SetDecodedFlagState

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\Communicate\decodedata.c
//    1 /****************************************************************************** 
//    2  *       decodedata.c ----- Decode the data receved from the uart          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  decodedata.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/23 15:24:46                                                       *
//   10  ******************************************************************************/
//   11 #include "decodedata.h"
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   13 static uint8 s_u8DecodedFlag[6] = {1,1,1,1,1,1};
s_u8DecodedFlag:
        DATA
        DC8 1, 1, 1, 1, 1, 1, 0, 0
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 uint8 RecvFrame(int8 recv, UART_Type * uartx)
//   16 {
RecvFrame:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   17     uint8 ret = 0;
        MOVS     R6,#+0
//   18     static uint8 frame_length = 0;
//   19     static uint8 frame_state_flag = 0;
//   20     static uint8 frame_byte_count = 0;
//   21     static uint8 frame_type = 0;
//   22 
//   23     if(CheckDecodedFlag(uartx) == 1)
        MOVS     R0,R5
        BL       CheckDecodedFlag
        CMP      R0,#+1
        BNE.W    ??RecvFrame_0
//   24     {
//   25         if(frame_state_flag == 0)
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??RecvFrame_1
//   26         {
//   27             if(((uint8)recv) == 0xA5)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+165
        BNE.N    ??RecvFrame_2
//   28             {
//   29                 PushUartRecvQueue(uartx, recv);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//   30                 frame_state_flag = 1;            
        LDR.W    R0,??DataTable2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   31             }
//   32             else
//   33             {
//   34                 ClearUartRecvQueue(uartx);
??RecvFrame_2:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//   35                 frame_state_flag = 0;
        LDR.W    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   36             }
//   37         }
//   38 
//   39         else if(frame_state_flag == 1)
??RecvFrame_1:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??RecvFrame_3
//   40         {
//   41             if(((uint8)recv) == 0x5A)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+90
        BNE.N    ??RecvFrame_4
//   42             {
//   43                 PushUartRecvQueue(uartx, recv);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//   44                 frame_state_flag = 2;
        LDR.W    R0,??DataTable2
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//   45                 frame_byte_count = 0;
        LDR.W    R0,??DataTable2_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   46             }
//   47             else
//   48             {
//   49                 ClearUartRecvQueue(uartx);
??RecvFrame_4:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//   50                 frame_state_flag = 0;
        LDR.W    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   51             }
//   52         }
//   53 
//   54         else if(frame_state_flag == 2)
??RecvFrame_3:
        LDR.W    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??RecvFrame_5
//   55         {
//   56             frame_length = (uint8) recv;
        LDR.W    R0,??DataTable2_2
        STRB     R4,[R0, #+0]
//   57             if((frame_length > 2) && (frame_length < 50))
        LDR.W    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BCC.N    ??RecvFrame_6
        LDR.W    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+50
        BCS.N    ??RecvFrame_6
//   58             {
//   59                 PushUartRecvQueue(uartx, recv);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//   60                 frame_byte_count ++;
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   61                 frame_state_flag = 3;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   62             }
//   63             else
//   64             {
//   65                 ClearUartRecvQueue(uartx);
??RecvFrame_6:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//   66                 frame_state_flag = 0;        
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   67             }
//   68         }
//   69 
//   70         else if(frame_state_flag == 3)
??RecvFrame_5:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??RecvFrame_7
//   71         {
//   72             PushUartRecvQueue(uartx, recv);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//   73             frame_type = (uint8)recv;
        LDR.N    R0,??DataTable2_3
        STRB     R4,[R0, #+0]
//   74             frame_byte_count ++;
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   75             frame_state_flag = 4;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   76         }
//   77 
//   78         else if(frame_state_flag == 4)
??RecvFrame_7:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??RecvFrame_8
//   79         {
//   80             if(frame_byte_count < frame_length )
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??RecvFrame_9
//   81             {
//   82                 if(frame_byte_count == (frame_length - 1))
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_2
        LDRB     R1,[R1, #+0]
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BNE.N    ??RecvFrame_10
//   83                 {
//   84                     frame_state_flag = 5;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//   85                 }            
//   86                 PushUartRecvQueue(uartx, recv);
??RecvFrame_10:
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//   87                 frame_byte_count ++;
        LDR.N    R0,??DataTable2_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
        B.N      ??RecvFrame_0
//   88             }
//   89             else
//   90             {
//   91                 ClearUartRecvQueue(uartx);
??RecvFrame_9:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//   92                 frame_state_flag = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//   93             }
//   94         }    
//   95 
//   96         else if(frame_state_flag == 5)
??RecvFrame_8:
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??RecvFrame_11
//   97         {
//   98             if(((uint8)recv) == 0xAA)
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+170
        BNE.N    ??RecvFrame_12
//   99             {
//  100                 PushUartRecvQueue(uartx, recv);
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       PushUartRecvQueue
//  101                 frame_state_flag = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  102                 ret = frame_type;
        LDR.N    R0,??DataTable2_3
        LDRB     R0,[R0, #+0]
        MOVS     R6,R0
//  103                 ClearDecodedFlag(uartx);
        MOVS     R0,R5
        BL       ClearDecodedFlag
        B.N      ??RecvFrame_0
//  104             }
//  105             else
//  106             {
//  107                 ClearUartRecvQueue(uartx);
??RecvFrame_12:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//  108                 frame_state_flag = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??RecvFrame_0
//  109             }        
//  110         }
//  111 
//  112         else
//  113         {
//  114             ClearUartRecvQueue(uartx);
??RecvFrame_11:
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//  115             frame_state_flag = 0;
        LDR.N    R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  116         }
//  117     }
//  118 
//  119     return ret;
??RecvFrame_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  120 }

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??frame_length:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??frame_state_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??frame_byte_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??frame_type:
        DS8 1
//  121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 uint8 DecodeControlParaData(TransferControlParaData * ctrl_para_data, UART_Type * uartx)
//  123 {
DecodeControlParaData:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+80
        MOVS     R4,R0
        MOVS     R5,R1
//  124     uint8 ret = 1;
        MOVS     R6,#+1
//  125     int i = 0;
        MOVS     R8,#+0
//  126     int8 data_buf[64];
//  127     int16 queue_size = GetUartRecvQueueSize(uartx);
        MOVS     R0,R5
        BL       GetUartRecvQueueSize
        MOVS     R7,R0
//  128     TransferControlParaDataFrame ctrl_data_frame;
//  129 
//  130     if(queue_size != sizeof(TransferControlParaDataFrame))
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+15
        BEQ.N    ??DecodeControlParaData_0
//  131     {
//  132         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  133     }
//  134 
//  135     for(i = 0; i < sizeof(TransferControlParaDataFrame); i++)
??DecodeControlParaData_0:
        MOVS     R0,#+0
        MOV      R8,R0
??DecodeControlParaData_1:
        CMP      R8,#+15
        BCS.N    ??DecodeControlParaData_2
//  136     {
//  137         data_buf[i] = PopUartRecvQueue(uartx);
        MOVS     R0,R5
        BL       PopUartRecvQueue
        ADD      R1,SP,#+16
        STRB     R0,[R8, R1]
//  138     }
        ADDS     R8,R8,#+1
        B.N      ??DecodeControlParaData_1
//  139 
//  140     ctrl_data_frame = *((TransferControlParaDataFrame*)data_buf);
??DecodeControlParaData_2:
        ADD      R0,SP,#+0
        ADD      R1,SP,#+16
        MOVS     R2,#+15
        BL       __aeabi_memcpy4
//  141 
//  142     if(ctrl_data_frame.frame_type != 0x01)
        LDRB     R0,[SP, #+3]
        CMP      R0,#+1
        BEQ.N    ??DecodeControlParaData_3
//  143     {
//  144         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  145     }
//  146     if(ctrl_data_frame.header1 != 0xA5)
??DecodeControlParaData_3:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+165
        BEQ.N    ??DecodeControlParaData_4
//  147     {
//  148         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  149     }
//  150     if(ctrl_data_frame.header2 != 0x5A)
??DecodeControlParaData_4:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+90
        BEQ.N    ??DecodeControlParaData_5
//  151     {
//  152         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  153     }
//  154     if(ctrl_data_frame.frame_size != sizeof(TransferControlParaDataFrame) - 3)
??DecodeControlParaData_5:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+12
        BEQ.N    ??DecodeControlParaData_6
//  155     {
//  156         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  157     }
//  158     if(ctrl_data_frame.ender != 0xAA)
??DecodeControlParaData_6:
        LDRB     R0,[SP, #+14]
        CMP      R0,#+170
        BEQ.N    ??DecodeControlParaData_7
//  159     {
//  160         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  161     }
//  162     if(CalculateCrc16_HalfByte((uint8 *)(&ctrl_data_frame) + 2, sizeof(TransferControlParaDataFrame) - 3) != 0)
??DecodeControlParaData_7:
        MOVS     R1,#+12
        ADD      R0,SP,#+2
        BL       CalculateCrc16_HalfByte
        CMP      R0,#+0
        BEQ.N    ??DecodeControlParaData_8
//  163     {
//  164         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  165     }
//  166 
//  167     SetDecodedFlag(uartx);
??DecodeControlParaData_8:
        MOVS     R0,R5
        BL       SetDecodedFlag
//  168     ClearUartRecvQueue(uartx);   
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//  169     if(ret == 1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??DecodeControlParaData_9
//  170     { 
//  171         *ctrl_para_data = ctrl_data_frame.data;
        LDRD     R0,R1,[SP, #+4]
        STRD     R0,R1,[R4, #+0]
//  172     }
//  173     return ret;
??DecodeControlParaData_9:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+80
        POP      {R4-R8,PC}       ;; return
//  174 }
//  175 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  176 uint8 DecodePX4FLOWData(PX4FLOW_Data * p_px4flow_data, UART_Type * uartx)
//  177 {
DecodePX4FLOWData:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+92
        MOVS     R4,R0
        MOVS     R5,R1
//  178     uint8 ret = 1;
        MOVS     R6,#+1
//  179     int i = 0;
        MOVS     R7,#+0
//  180     int8 data_buf[64];
//  181     int16 queue_size = GetUartRecvQueueSize(uartx);
        MOVS     R0,R5
        BL       GetUartRecvQueueSize
        MOV      R8,R0
//  182     int16 frame_size = sizeof(PX4FLOW_DataFrame);
        MOVS     R9,#+27
//  183     PX4FLOW_DataFrame px4flow_data_frame;
//  184 
//  185     if(queue_size != frame_size)
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R8,R9
        BEQ.N    ??DecodePX4FLOWData_0
//  186     {
//  187         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  188     }
//  189 
//  190     for(i = 0; i < frame_size; i++)
??DecodePX4FLOWData_0:
        MOVS     R0,#+0
        MOVS     R7,R0
??DecodePX4FLOWData_1:
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        CMP      R7,R9
        BGE.N    ??DecodePX4FLOWData_2
//  191     {
//  192         data_buf[i] = PopUartRecvQueue(uartx);
        MOVS     R0,R5
        BL       PopUartRecvQueue
        ADD      R1,SP,#+28
        STRB     R0,[R7, R1]
//  193     }
        ADDS     R7,R7,#+1
        B.N      ??DecodePX4FLOWData_1
//  194 
//  195     px4flow_data_frame = *((PX4FLOW_DataFrame*)data_buf);
??DecodePX4FLOWData_2:
        ADD      R0,SP,#+0
        ADD      R1,SP,#+28
        MOVS     R2,#+27
        BL       __aeabi_memcpy4
//  196 
//  197     if(px4flow_data_frame.frame_type != 0x03)
        LDRB     R0,[SP, #+3]
        CMP      R0,#+3
        BEQ.N    ??DecodePX4FLOWData_3
//  198     {
//  199         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  200     }
//  201     if(px4flow_data_frame.header1 != 0xA5)
??DecodePX4FLOWData_3:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+165
        BEQ.N    ??DecodePX4FLOWData_4
//  202     {
//  203         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  204     }
//  205     if(px4flow_data_frame.header2 != 0x5A)
??DecodePX4FLOWData_4:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+90
        BEQ.N    ??DecodePX4FLOWData_5
//  206     {
//  207         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  208     }
//  209     if(px4flow_data_frame.frame_size != frame_size - 3)
??DecodePX4FLOWData_5:
        LDRB     R0,[SP, #+2]
        SXTH     R9,R9            ;; SignExt  R9,R9,#+16,#+16
        SUBS     R1,R9,#+3
        CMP      R0,R1
        BEQ.N    ??DecodePX4FLOWData_6
//  210     {
//  211         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  212     }
//  213     if(px4flow_data_frame.ender != 0xAA)
??DecodePX4FLOWData_6:
        LDRB     R0,[SP, #+26]
        CMP      R0,#+170
        BEQ.N    ??DecodePX4FLOWData_7
//  214     {
//  215         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  216     }
//  217     if(CalculateCrc16_HalfByte((uint8 *)(&px4flow_data_frame) + 2, frame_size - 3) != 0)
??DecodePX4FLOWData_7:
        SUBS     R1,R9,#+3
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ADD      R0,SP,#+2
        BL       CalculateCrc16_HalfByte
        CMP      R0,#+0
        BEQ.N    ??DecodePX4FLOWData_8
//  218     {
//  219         ret = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  220     }
//  221 
//  222     SetDecodedFlag(uartx);
??DecodePX4FLOWData_8:
        MOVS     R0,R5
        BL       SetDecodedFlag
//  223     ClearUartRecvQueue(uartx);   
        MOVS     R0,R5
        BL       ClearUartRecvQueue
//  224     if(ret == 1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??DecodePX4FLOWData_9
//  225     { 
//  226         *p_px4flow_data = px4flow_data_frame.data;
        MOVS     R0,R4
        ADD      R1,SP,#+4
        MOVS     R2,#+20
        BL       __aeabi_memcpy
//  227     }
//  228     return ret;
??DecodePX4FLOWData_9:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+92
        POP      {R4-R9,PC}       ;; return
//  229 }
//  230 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  231 uint8 CheckDecodedFlag(UART_Type * uartx)
//  232 {
CheckDecodedFlag:
        MOVS     R1,R0
//  233     if(uartx == UART0)
        LDR.N    R0,??DataTable2_4  ;; 0x4006a000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_0
//  234     {
//  235         return s_u8DecodedFlag[0];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+0]
        B.N      ??CheckDecodedFlag_1
//  236     }
//  237     else if(uartx == UART1)
??CheckDecodedFlag_0:
        LDR.N    R0,??DataTable2_6  ;; 0x4006b000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_2
//  238     {
//  239         return s_u8DecodedFlag[1];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+1]
        B.N      ??CheckDecodedFlag_1
//  240     }
//  241     else if(uartx == UART2)
??CheckDecodedFlag_2:
        LDR.N    R0,??DataTable2_7  ;; 0x4006c000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_3
//  242     {
//  243         return s_u8DecodedFlag[2];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+2]
        B.N      ??CheckDecodedFlag_1
//  244     }
//  245     else if(uartx == UART3)
??CheckDecodedFlag_3:
        LDR.N    R0,??DataTable2_8  ;; 0x4006d000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_4
//  246     {
//  247         return s_u8DecodedFlag[3];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+3]
        B.N      ??CheckDecodedFlag_1
//  248     }
//  249     else if(uartx == UART4)
??CheckDecodedFlag_4:
        LDR.N    R0,??DataTable2_9  ;; 0x400ea000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_5
//  250     {
//  251         return s_u8DecodedFlag[4];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+4]
        B.N      ??CheckDecodedFlag_1
//  252     }
//  253     else if(uartx == UART5)
??CheckDecodedFlag_5:
        LDR.N    R0,??DataTable2_10  ;; 0x400eb000
        CMP      R1,R0
        BNE.N    ??CheckDecodedFlag_6
//  254     {
//  255         return s_u8DecodedFlag[5];
        LDR.N    R0,??DataTable2_5
        LDRB     R0,[R0, #+5]
        B.N      ??CheckDecodedFlag_1
//  256     }
//  257     else 
//  258     {
//  259         return 0;
??CheckDecodedFlag_6:
        MOVS     R0,#+0
??CheckDecodedFlag_1:
        BX       LR               ;; return
//  260     }
//  261 }
//  262 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 void SetDecodedFlagState(UART_Type * uartx, uint8 state)
//  264 {
//  265     if(uartx == UART0)
SetDecodedFlagState:
        LDR.N    R2,??DataTable2_4  ;; 0x4006a000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_0
//  266     {
//  267         s_u8DecodedFlag[0] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+0]
        B.N      ??SetDecodedFlagState_1
//  268     }
//  269     else if(uartx == UART1)
??SetDecodedFlagState_0:
        LDR.N    R2,??DataTable2_6  ;; 0x4006b000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_2
//  270     {
//  271         s_u8DecodedFlag[1] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+1]
        B.N      ??SetDecodedFlagState_1
//  272     }
//  273     else if(uartx == UART2)
??SetDecodedFlagState_2:
        LDR.N    R2,??DataTable2_7  ;; 0x4006c000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_3
//  274     {
//  275         s_u8DecodedFlag[2] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+2]
        B.N      ??SetDecodedFlagState_1
//  276     }
//  277     else if(uartx == UART3)
??SetDecodedFlagState_3:
        LDR.N    R2,??DataTable2_8  ;; 0x4006d000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_4
//  278     {
//  279         s_u8DecodedFlag[3] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+3]
        B.N      ??SetDecodedFlagState_1
//  280     }
//  281     else if(uartx == UART4)
??SetDecodedFlagState_4:
        LDR.N    R2,??DataTable2_9  ;; 0x400ea000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_5
//  282     {
//  283         s_u8DecodedFlag[4] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+4]
        B.N      ??SetDecodedFlagState_1
//  284     }
//  285     else if(uartx == UART5)
??SetDecodedFlagState_5:
        LDR.N    R2,??DataTable2_10  ;; 0x400eb000
        CMP      R0,R2
        BNE.N    ??SetDecodedFlagState_1
//  286     {
//  287         s_u8DecodedFlag[5] = state;
        LDR.N    R2,??DataTable2_5
        STRB     R1,[R2, #+5]
//  288     }
//  289 }
??SetDecodedFlagState_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ??frame_state_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ??frame_byte_count

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ??frame_length

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ??frame_type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     s_u8DecodedFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     0x400eb000
//  290 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  291 void SetDecodedFlag(UART_Type * uartx)
//  292 {
SetDecodedFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  293     SetDecodedFlagState(uartx, 1);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       SetDecodedFlagState
//  294 }
        POP      {R4,PC}          ;; return
//  295 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  296 void ClearDecodedFlag(UART_Type * uartx)
//  297 {
ClearDecodedFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  298     SetDecodedFlagState(uartx, 0);
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       SetDecodedFlagState
//  299 }
        POP      {R4,PC}          ;; return

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
//     4 bytes in section .bss
//     8 bytes in section .data
// 1 022 bytes in section .text
// 
// 1 022 bytes of CODE memory
//    12 bytes of DATA memory
//
//Errors: none
//Warnings: none
