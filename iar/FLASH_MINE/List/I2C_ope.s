///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:33 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\I2C_ope.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\I2C_ope.c -D LPLD_K60 -lCN                          /
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
//                    MINE\List\I2C_ope.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME I2C_ope

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_Start
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte
        EXTERN delayus

        PUBLIC I2C0_ReadRegMulti
        PUBLIC I2C0_ReadRegSingle
        PUBLIC I2C0_WriteRegMulti
        PUBLIC I2C0_WriteRegSingle
        PUBLIC I2C1_ReadRegMulti
        PUBLIC I2C1_ReadRegSingle
        PUBLIC I2C1_WriteRegMulti
        PUBLIC I2C1_WriteRegSingle
        PUBLIC I2C_ReadRegMulti
        PUBLIC I2C_ReadRegSingle
        PUBLIC I2C_WriteRegMulti
        PUBLIC I2C_WriteRegSingle

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\I2C_ope.c
//    1 /****************************************************************************** 
//    2  *       I2C_ope.c ----- The code to use I2C to read and write reg of device          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  I2C_ope.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/30 21:55:35                                                       *
//   10  ******************************************************************************/
//   11 #include "I2C_ope.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void I2C_WriteRegMulti(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
//   14 {
I2C_WriteRegMulti:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
        LDR      R9,[SP, #+36]
//   15     int i = 0;
        MOVS     R10,#+0
//   16   //发送从机地址
//   17   //I2C产生start信号
//   18   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//   19   //将从机地址写入
//   20   LPLD_I2C_WriteByte(i2cx, dev_address << 1);
        LSLS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   21   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   22   
//   23   //写MMA7660寄存器地址
//   24   LPLD_I2C_WriteByte(i2cx, reg_address);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   25   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   26   
//   27   //向寄存器中写具体数据
//   28   for(i = 0; i < len; i ++)
        MOVS     R0,#+0
        MOV      R10,R0
??I2C_WriteRegMulti_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R10,R7
        BGE.N    ??I2C_WriteRegMulti_1
//   29   {
//   30     LPLD_I2C_WriteByte(i2cx, data[i]);
        LDRB     R1,[R10, R8]
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   31     LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   32   }
        ADDS     R10,R10,#+1
        B.N      ??I2C_WriteRegMulti_0
//   33 
//   34   LPLD_I2C_Stop(i2cx);
??I2C_WriteRegMulti_1:
        MOVS     R0,R4
        BL       LPLD_I2C_Stop
//   35 
//   36   delayus(delay_time);
        MOV      R0,R9
        BL       delayus
//   37 
//   38 }
        POP      {R4-R10,PC}      ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void I2C_WriteRegSingle(I2C_Type * i2cx, uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
//   41 {
I2C_WriteRegSingle:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+24]
//   42   //发送从机地址
//   43   //I2C产生start信号
//   44   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//   45   //将从机地址写入
//   46   LPLD_I2C_WriteByte(i2cx, dev_address << 1);
        LSLS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   47   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   48   
//   49   //写MMA7660寄存器地址
//   50   LPLD_I2C_WriteByte(i2cx, reg_address);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   51   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   52   
//   53   //向寄存器中写具体数据
//   54   LPLD_I2C_WriteByte(i2cx, data);
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//   55   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//   56 
//   57   LPLD_I2C_Stop(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Stop
//   58 
//   59   delayus(delay_time);
        MOV      R0,R8
        BL       delayus
//   60 }
        POP      {R4-R8,PC}       ;; return
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void I2C_ReadRegMulti(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
//   63 {
I2C_ReadRegMulti:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
        LDR      R9,[SP, #+36]
//   64     int i =0;
        MOVS     R10,#+0
//   65 /*     for(i = 0; i < len; i ++)
//   66     {
//   67       //发送从机地址
//   68       //I2C产生start信号
//   69       LPLD_I2C_Start(i2cx);
//   70       //将从机地址写入
//   71       LPLD_I2C_WriteByte(i2cx, dev_address << 1);
//   72       LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
//   73 
//   74       //写MMA7660寄存器地址
//   75       LPLD_I2C_WriteByte(i2cx, reg_address + i);
//   76       LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
//   77 
//   78       //再次产生开始信号
//   79       LPLD_I2C_ReStart(i2cx);
//   80 
//   81       //发送从机地址和读取位
//   82       LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
//   83       LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
//   84 
//   85       //转换主机模式为读
//   86       LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);
//   87 
//   88       //关闭应答ACK
//   89       LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//关闭ACK
//   90 
//   91       //读IIC数据
//   92       *buf =LPLD_I2C_ReadByte(i2cx);
//   93       LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
//   94 
//   95       //发送停止信号
//   96       LPLD_I2C_Stop(i2cx);
//   97 
//   98       //读IIC数据
//   99       *buf = LPLD_I2C_ReadByte(i2cx);
//  100 
//  101       buf++;
//  102 
//  103       delayus(delay_time);
//  104     }*/
//  105 
//  106     //发送从机地址
//  107     //I2C产生start信号
//  108     LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//  109     //将从机地址写入
//  110     LPLD_I2C_WriteByte(i2cx, dev_address << 1);
        LSLS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  111     LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  112 
//  113     //写MMA7660寄存器地址
//  114     LPLD_I2C_WriteByte(i2cx, reg_address + i);
        ADDS     R1,R10,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  115     LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  116 
//  117     //再次产生开始信号
//  118     LPLD_I2C_ReStart(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReStart
//  119 
//  120     //发送从机地址和读取位
//  121     LPLD_I2C_WriteByte(i2cx, (dev_address << 1) + 1);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+1
        ADDS     R1,R0,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  122     LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  123 
//  124     //转换主机模式为读
//  125     LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_SetMasterWR
//  126 
//  127     for(i = 0; i < len; i++)
        MOVS     R0,#+0
        MOV      R10,R0
??I2C_ReadRegMulti_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R10,R7
        BGE.N    ??I2C_ReadRegMulti_1
//  128     {
//  129         if(i < (len-1))
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        SUBS     R0,R7,#+1
        CMP      R10,R0
        BGE.N    ??I2C_ReadRegMulti_2
//  130         {
//  131             /* Turn on ACK */
//  132             i2cx->C1 &= (~I2C_C1_TXAK_MASK);
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xF7
        STRB     R0,[R4, #+2]
        B.N      ??I2C_ReadRegMulti_3
//  133         }
//  134         else
//  135         {
//  136             /* Turn off ACK */
//  137             i2cx->C1 |= I2C_C1_TXAK_MASK;            
??I2C_ReadRegMulti_2:
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x8
        STRB     R0,[R4, #+2]
//  138         }
//  139 
//  140         //读IIC数据
//  141         if(i == 0)
??I2C_ReadRegMulti_3:
        CMP      R10,#+0
        BNE.N    ??I2C_ReadRegMulti_4
//  142         {
//  143             LPLD_I2C_ReadByte(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReadByte
        B.N      ??I2C_ReadRegMulti_5
//  144         }
//  145         else
//  146         {
//  147             *buf =LPLD_I2C_ReadByte(i2cx);
??I2C_ReadRegMulti_4:
        MOVS     R0,R4
        BL       LPLD_I2C_ReadByte
        STRB     R0,[R8, #+0]
//  148             buf ++;
        ADDS     R8,R8,#+1
//  149         }
//  150         LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
??I2C_ReadRegMulti_5:
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  151     }
        ADDS     R10,R10,#+1
        B.N      ??I2C_ReadRegMulti_0
//  152     //发送停止信号
//  153     LPLD_I2C_Stop(i2cx);
??I2C_ReadRegMulti_1:
        MOVS     R0,R4
        BL       LPLD_I2C_Stop
//  154     *buf = LPLD_I2C_ReadByte(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReadByte
        STRB     R0,[R8, #+0]
//  155 
//  156     delayus(delay_time); 
        MOV      R0,R9
        BL       delayus
//  157 }  
        POP      {R4-R10,PC}      ;; return
//  158 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 uint8 I2C_ReadRegSingle(I2C_Type* i2cx, uint8 dev_address, uint8 reg_address, uint32 delay_time)
//  160 {
I2C_ReadRegSingle:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  161   uint8 result;
//  162 
//  163   //发送从机地址
//  164   //I2C产生start信号
//  165   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//  166   //将从机地址写入
//  167   LPLD_I2C_WriteByte(i2cx, dev_address << 1);
        LSLS     R1,R5,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  168   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  169 
//  170   //写MMA7660寄存器地址
//  171   LPLD_I2C_WriteByte(i2cx, reg_address);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  172   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  173 
//  174   //再次产生开始信号
//  175   LPLD_I2C_ReStart(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReStart
//  176 
//  177   //发送从机地址和读取位
//  178   LPLD_I2C_WriteByte(i2cx, (dev_address << 1) | 0x01);
        LSLS     R0,R5,#+1
        ORRS     R1,R0,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  179   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  180 
//  181   //转换主机模式为读
//  182   LPLD_I2C_SetMasterWR(i2cx, I2C_MRSW);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_SetMasterWR
//  183 
//  184   //关闭应答ACK
//  185   LPLD_I2C_WaitAck(i2cx, I2C_ACK_OFF);//关闭ACK
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  186 
//  187   //读IIC数据
//  188   result =LPLD_I2C_ReadByte(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReadByte
        MOV      R8,R0
//  189   LPLD_I2C_WaitAck(i2cx, I2C_ACK_ON);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       LPLD_I2C_WaitAck
//  190 
//  191   //发送停止信号
//  192   LPLD_I2C_Stop(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Stop
//  193 
//  194   //读IIC数据
//  195   result = LPLD_I2C_ReadByte(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_ReadByte
        MOV      R8,R0
//  196 
//  197   delayus(delay_time);
        MOVS     R0,R7
        BL       delayus
//  198 
//  199   return result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return
//  200 
//  201 }  
//  202 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  203 void I2C0_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
//  204 {
I2C0_WriteRegMulti:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  205     I2C_WriteRegMulti(I2C0, dev_address, reg_address, len, data, delay_time);
        STR      R8,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7  ;; 0x40066000
        BL       I2C_WriteRegMulti
//  206 }
        POP      {R0,R1,R4-R8,PC}  ;; return
//  207 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void I2C1_WriteRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data, uint32 delay_time)
//  209 {
I2C1_WriteRegMulti:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  210     I2C_WriteRegMulti(I2C1, dev_address, reg_address, len, data, delay_time);
        STR      R8,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_1  ;; 0x40067000
        BL       I2C_WriteRegMulti
//  211 }
        POP      {R0,R1,R4-R8,PC}  ;; return
//  212 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void I2C0_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
//  214 {
I2C0_WriteRegSingle:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  215     I2C_WriteRegSingle(I2C0, dev_address, reg_address, data, delay_time);
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7  ;; 0x40066000
        BL       I2C_WriteRegSingle
//  216 }
        POP      {R0,R4-R7,PC}    ;; return
//  217 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  218 void I2C1_WriteRegSingle(uint8 dev_address, uint8 reg_address, uint8 data, uint32 delay_time)
//  219 {
I2C1_WriteRegSingle:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  220     I2C_WriteRegSingle(I2C1, dev_address, reg_address, data, delay_time);
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_1  ;; 0x40067000
        BL       I2C_WriteRegSingle
//  221 }
        POP      {R0,R4-R7,PC}    ;; return
//  222 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  223 void I2C0_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
//  224 {
I2C0_ReadRegMulti:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  225     I2C_ReadRegMulti(I2C0, dev_address, reg_address, len, buf, delay_time);
        STR      R8,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7  ;; 0x40066000
        BL       I2C_ReadRegMulti
//  226 }
        POP      {R0,R1,R4-R8,PC}  ;; return
//  227 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void I2C1_ReadRegMulti(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf, uint32 delay_time)
//  229 {
I2C1_ReadRegMulti:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  230     I2C_ReadRegMulti(I2C1, dev_address, reg_address, len, buf, delay_time);
        STR      R8,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_1  ;; 0x40067000
        BL       I2C_ReadRegMulti
//  231 }
        POP      {R0,R1,R4-R8,PC}  ;; return
//  232 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  233 uint8 I2C0_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time)
//  234 {
I2C0_ReadRegSingle:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  235     return I2C_ReadRegSingle(I2C0, dev_address, reg_address, delay_time);
        MOVS     R3,R6
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7  ;; 0x40066000
        BL       I2C_ReadRegSingle
        POP      {R4-R6,PC}       ;; return
//  236 }
//  237 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 uint8 I2C1_ReadRegSingle(uint8 dev_address, uint8 reg_address, uint32 delay_time)
//  239 {
I2C1_ReadRegSingle:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  240     return I2C_ReadRegSingle(I2C1, dev_address, reg_address, delay_time);
        MOVS     R3,R6
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable7_1  ;; 0x40067000
        BL       I2C_ReadRegSingle
        POP      {R4-R6,PC}       ;; return
//  241 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40067000

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
// 858 bytes in section .text
// 
// 858 bytes of CODE memory
//
//Errors: none
//Warnings: none
