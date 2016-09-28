///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:35 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MS5611.c                                            /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MS5611.c -D LPLD_K60 -lCN                           /
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
//                    MINE\List\MS5611.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MS5611

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_Start
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte
        EXTERN PinNum2GpioPin
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_i2f
        EXTERN __aeabi_ldivmod
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN delayms
        EXTERN delayus

        PUBLIC InitMS5611
        PUBLIC MS5611_Calculate
        PUBLIC MS5611_ConvADC
        PUBLIC MS5611_MultiRead
        PUBLIC MS5611_Read
        PUBLIC MS5611_ReadADC
        PUBLIC MS5611_ReadROM
        PUBLIC MS5611_ReadROM_1
        PUBLIC MS5611_WriteCommand
        PUBLIC MS5611_data_struct

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\MS5611.c
//    1 /****************************************************************************** 
//    2  *       MS5611.c ----- The Driver Function of MS5611(digital pressure sensor)          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MS5611.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/4/2 9:20:03                                                       *
//   10  ******************************************************************************/
//   11 
//   12 #include "MS5611.h"
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   14 MS5611_DataStruct MS5611_data_struct;
MS5611_data_struct:
        DS8 80
//   15 
//   16 /************************************************************************
//   17  * Function         InitMS5611                                              
//   18  * Usage            To Initialize MS5611(pressure sensor)                           
//   19  * Argument         NONE
//   20  * Return value     NONE                                                        
//   21  * Modification History:                                                  
//   22  * 01a 2014/4/2 9:24:51   
//   23  *
//   24  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void InitMS5611 (void) 
//   26 {
InitMS5611:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   27     I2C_InitTypeDef MS5611_I2C_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   28     MS5611_I2C_init_struct.I2C_I2Cx = MS5611_I2C_PORT;
        LDR.N    R0,??DataTable4  ;; 0x40067000
        STR      R0,[SP, #+4]
//   29     MS5611_I2C_init_struct.I2C_ICR = MS5611_SCL_400KHZ;
        MOVS     R0,#+23
        STRB     R0,[SP, #+8]
//   30     MS5611_I2C_init_struct.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//   31     MS5611_I2C_init_struct.I2C_SclPin = MS5611_I2C_SCLPIN;
        MOVS     R0,#+70
        STRB     R0,[SP, #+10]
//   32     MS5611_I2C_init_struct.I2C_SdaPin = MS5611_I2C_SDAPIN;
        MOVS     R0,#+71
        STRB     R0,[SP, #+11]
//   33     MS5611_I2C_init_struct.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   34     MS5611_I2C_init_struct.I2C_OpenDrainEnable = TRUE;    
        MOVS     R0,#+1
        STRB     R0,[SP, #+12]
//   35     LPLD_I2C_Init(MS5611_I2C_init_struct);
        ADD      R0,SP,#+4
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   36 
//   37     GPIO_InitTypeDef MS5611_CSB_pin_init_struct = {0};
        ADD      R0,SP,#+20
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   38     MS5611_CSB_pin_init_struct.GPIO_PTx = MS5611_CSB_PIN_PORT;
        LDR.N    R0,??DataTable4_1  ;; 0x400ff080
        STR      R0,[SP, #+20]
//   39     MS5611_CSB_pin_init_struct.GPIO_Pins = PinNum2GpioPin(MS5611_CSB_PIN_NUM);
        MOVS     R0,#+12
        BL       PinNum2GpioPin
        STR      R0,[SP, #+24]
//   40     MS5611_CSB_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+32]
//   41     MS5611_CSB_pin_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+33]
//   42     LPLD_GPIO_Init(MS5611_CSB_pin_init_struct);
        ADD      R1,SP,#+20
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   43 
//   44     MS5611_WriteCommand(MS5611_RESET);
        MOVS     R0,#+30
        BL       MS5611_WriteCommand
//   45     delayms(10);
        MOVS     R0,#+10
        BL       delayms
//   46 
//   47     MS5611_ReadROM(& MS5611_data_struct);
        LDR.N    R0,??DataTable4_2
        BL       MS5611_ReadROM
//   48     delayms(10);
        MOVS     R0,#+10
        BL       delayms
//   49 
//   50     MS5611_ConvADC(MS5611_D1_OSR_4096);
        MOVS     R0,#+72
        BL       MS5611_ConvADC
//   51     delayms(10);
        MOVS     R0,#+10
        BL       delayms
//   52     MS5611_ReadADC(& MS5611_data_struct, MS5611_ADC_D1);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_2
        BL       MS5611_ReadADC
//   53 
//   54     MS5611_ConvADC(MS5611_D2_OSR_4096);
        MOVS     R0,#+88
        BL       MS5611_ConvADC
//   55     delayms(10);
        MOVS     R0,#+10
        BL       delayms
//   56     MS5611_ReadADC(& MS5611_data_struct, MS5611_ADC_D2);
        MOVS     R1,#+2
        LDR.N    R0,??DataTable4_2
        BL       MS5611_ReadADC
//   57 
//   58     MS5611_Calculate(& MS5611_data_struct);
        LDR.N    R0,??DataTable4_2
        BL       MS5611_Calculate
//   59 }		/* -----  end of function InitMS5611  ----- */
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 void MS5611_WriteCommand (uint8 command) 
//   62 {
MS5611_WriteCommand:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   63   //发送从机地址
//   64   //I2C产生start信号
//   65   LPLD_I2C_Start(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_Start
//   66   //将从机地址写入
//   67   LPLD_I2C_WriteByte(MS5611_I2C_PORT, MS5611_ADRESS << 1);
        MOVS     R1,#+238
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   68   LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   69   
//   70   //写MMA7660寄存器地址
//   71   LPLD_I2C_WriteByte(MS5611_I2C_PORT, command);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//   72   LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//   73 
//   74   LPLD_I2C_Stop(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_Stop
//   75 
//   76   delayus(MS5611_I2C_DELAY_TIME);  
        MOVS     R0,#+5
        BL       delayus
//   77 }		/* -----  end of function MS5611_SingleWriteReg  ----- */
        POP      {R4,PC}          ;; return
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void MS5611_ReadROM(MS5611_DataStruct * COEFF)
//   80 {
MS5611_ReadROM:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   81     uint8 i = 0;
        MOVS     R5,#+0
//   82 
//   83     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??MS5611_ReadROM_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BCS.N    ??MS5611_ReadROM_1
//   84     {
//   85         COEFF->C[i+1] = MS5611_ReadROM_1(i);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_ReadROM_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+1
        STRH     R0,[R1, #+2]
//   86     }
        ADDS     R5,R5,#+1
        B.N      ??MS5611_ReadROM_0
//   87 }
??MS5611_ReadROM_1:
        POP      {R0,R4,R5,PC}    ;; return
//   88 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   89 uint16 MS5611_ReadROM_1(uint8 rom_num)
//   90 {
MS5611_ReadROM_1:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   91     uint8 buf[2]={0,0};
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//   92     uint16 ret = 0;
        MOVS     R5,#+0
//   93     MS5611_WriteCommand(MS5611_PROM_COEFF_1 + rom_num * 2);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R0,R4,#+1
        ADDS     R0,R0,#+162
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_WriteCommand
//   94     MS5611_MultiRead(buf, 2);
        MOVS     R1,#+2
        ADD      R0,SP,#+0
        BL       MS5611_MultiRead
//   95     ret = ((uint16)buf[0] << 8) + buf[1];
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+8
        LDRB     R1,[SP, #+1]
        UXTAB    R0,R0,R1
        MOVS     R5,R0
//   96     
//   97     return ret;
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   98 }
//   99 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 void MS5611_MultiRead(uint8* buf, uint8 data_num)
//  101 {
MS5611_MultiRead:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  102     int i = 0;
        MOVS     R6,#+0
//  103     //发送从机地址
//  104     //I2C产生start信号
//  105     LPLD_I2C_Start(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_Start
//  106     //将从机地址写入
//  107     LPLD_I2C_WriteByte(MS5611_I2C_PORT, (MS5611_ADRESS << 1) + 1);
        MOVS     R1,#+239
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WriteByte
//  108     LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);    
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  109 
//  110     //转换主机模式为读
//  111     LPLD_I2C_SetMasterWR(MS5611_I2C_PORT, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_SetMasterWR
//  112 
//  113     for(i = 0; i < data_num; i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??MS5611_MultiRead_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R6,R5
        BGE.N    ??MS5611_MultiRead_1
//  114     {
//  115         if(i < (data_num-1))
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+1
        CMP      R6,R0
        BGE.N    ??MS5611_MultiRead_2
//  116         {
//  117             /* Turn on ACK */
//  118             MS5611_I2C_PORT->C1 &= (~I2C_C1_TXAK_MASK);
        LDR.N    R0,??DataTable4_3  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0xF7
        LDR.N    R1,??DataTable4_3  ;; 0x40067002
        STRB     R0,[R1, #+0]
        B.N      ??MS5611_MultiRead_3
//  119         }
//  120         else
//  121         {
//  122             /* Turn off ACK */
//  123             MS5611_I2C_PORT->C1 |= I2C_C1_TXAK_MASK;  // ACK NO 
??MS5611_MultiRead_2:
        LDR.N    R0,??DataTable4_3  ;; 0x40067002
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable4_3  ;; 0x40067002
        STRB     R0,[R1, #+0]
//  124         }
//  125 
//  126         //读IIC数据
//  127         if(i == 0)
??MS5611_MultiRead_3:
        CMP      R6,#+0
        BNE.N    ??MS5611_MultiRead_4
//  128         {
//  129             LPLD_I2C_ReadByte(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        B.N      ??MS5611_MultiRead_5
//  130         }
//  131         else
//  132         {
//  133             *buf =LPLD_I2C_ReadByte(MS5611_I2C_PORT);
??MS5611_MultiRead_4:
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        STRB     R0,[R4, #+0]
//  134             buf ++;
        ADDS     R4,R4,#+1
//  135         }
//  136         LPLD_I2C_WaitAck(MS5611_I2C_PORT, I2C_ACK_ON);
??MS5611_MultiRead_5:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_WaitAck
//  137     }
        ADDS     R6,R6,#+1
        B.N      ??MS5611_MultiRead_0
//  138     //发送停止信号
//  139     LPLD_I2C_Stop(MS5611_I2C_PORT);
??MS5611_MultiRead_1:
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_Stop
//  140     *buf = LPLD_I2C_ReadByte(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_ReadByte
        STRB     R0,[R4, #+0]
//  141 
//  142     LPLD_I2C_Stop(MS5611_I2C_PORT);
        LDR.N    R0,??DataTable4  ;; 0x40067000
        BL       LPLD_I2C_Stop
//  143 
//  144     delayus(MS5611_I2C_DELAY_TIME);
        MOVS     R0,#+5
        BL       delayus
//  145 }
        POP      {R4-R6,PC}       ;; return
//  146 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  147 void MS5611_ConvADC(uint8 ADC_conv_mode)
//  148 {
MS5611_ConvADC:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  149     MS5611_WriteCommand(ADC_conv_mode);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_WriteCommand
//  150 }
        POP      {R4,PC}          ;; return
//  151 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  152 void MS5611_ReadADC(MS5611_DataStruct * COEFF, uint8 ADC_sel)
//  153 {
MS5611_ReadADC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  154     uint8 buf[3] = {0};
        ADD      R0,SP,#+0
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  155 
//  156     MS5611_WriteCommand(MS5611_ADC);
        MOVS     R0,#+0
        BL       MS5611_WriteCommand
//  157     MS5611_MultiRead(buf, 3);
        MOVS     R1,#+3
        ADD      R0,SP,#+0
        BL       MS5611_MultiRead
//  158 
//  159     COEFF->D[ADC_sel] = ((uint32)buf[0] << 16) | ((uint32)buf[1] << 8) | ((uint32)buf[2]);
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        LSLS     R1,R1,#+8
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[SP, #+2]
        ORRS     R0,R1,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+2
        STR      R0,[R1, #+16]
//  160 }
        POP      {R0,R4,R5,PC}    ;; return
//  161 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void MS5611_Calculate( MS5611_DataStruct* COEFF )
//  163 {
MS5611_Calculate:
        PUSH     {R4-R9,LR}
        MOVS     R4,R0
//  164   COEFF->dT = (int32)(COEFF->D[2] - (COEFF->C[5]*POW_2_8));          // dT = D2 - C5*2^8
        LDR      R0,[R4, #+24]
        LDRH     R1,[R4, #+10]
        MOV      R2,#+256
        MLS      R0,R2,R1,R0
        STR      R0,[R4, #+28]
//  165   COEFF->rTemp = (int32)(2000 + ((int64_t)COEFF->dT*COEFF->C[6])/POW_2_23);   // Temp = 2000 + dT*C6/2^23
        LDR      R6,[R4, #+28]
        ASRS     R7,R6,#+31
        LDRH     R2,[R4, #+12]
        MOVS     R3,#+0
        UMULL    R0,R1,R2,R6
        MLA      R1,R2,R7,R1
        MLA      R1,R3,R6,R1
        MOVS     R2,#+8388608
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        ADDS     R0,R0,#+2000
        STR      R0,[R4, #+32]
//  166 
//  167   COEFF->OFF = (uint64_t)((uint64_t)COEFF->C[2]*POW_2_16 + ((uint64_t)COEFF->C[4]*COEFF->dT)/POW_2_7);   // OFF = C2*2^16 + (C4*dT)/2^7
        LDRH     R5,[R4, #+4]
        MOVS     R6,#+65536
        LDRH     R2,[R4, #+8]
        MOVS     R3,#+0
        LDR      R0,[R4, #+28]
        ASRS     R1,R0,#+31
        UMULL    R8,R9,R0,R2
        MLA      R9,R0,R3,R9
        MLA      R9,R1,R2,R9
        LSRS     R8,R8,#+7
        ORR      R8,R8,R9, LSL #+25
        LSRS     R9,R9,#+7
        UMLAL    R8,R9,R6,R5
        STRD     R8,R9,[R4, #+40]
//  168   COEFF->SENS = (uint64_t)((uint64_t)COEFF->C[1]*POW_2_15 + ((uint64_t)COEFF->C[3]*COEFF->dT)/POW_2_8);  // SENS = C1*2^15 + (C3*dT)/2^8
        LDRH     R5,[R4, #+2]
        MOV      R6,#+32768
        LDRH     R2,[R4, #+6]
        MOVS     R3,#+0
        LDR      R0,[R4, #+28]
        ASRS     R1,R0,#+31
        UMULL    R8,R9,R0,R2
        MLA      R9,R0,R3,R9
        MLA      R9,R1,R2,R9
        LSRS     R8,R8,#+8
        ORR      R8,R8,R9, LSL #+24
        LSRS     R9,R9,#+8
        UMLAL    R8,R9,R6,R5
        STRD     R8,R9,[R4, #+48]
//  169   COEFF->rPress = (uint32)((COEFF->D[1]*COEFF->SENS)/POW_2_21 - COEFF->OFF)/POW_2_15;  // Press = (D1*SENS/2^21 - OFF)/2^15
        LDR      R0,[R4, #+20]
        MOVS     R1,#+0
        LDRD     R2,R3,[R4, #+48]
        UMULL    R6,R7,R2,R0
        MLA      R7,R2,R1,R7
        MLA      R7,R3,R0,R7
        LSRS     R6,R6,#+21
        ORR      R6,R6,R7, LSL #+11
        LSRS     R7,R7,#+21
        LDRD     R0,R1,[R4, #+40]
        SUBS     R0,R6,R0
        SBCS     R1,R7,R1
        LSRS     R0,R0,#+15
        STR      R0,[R4, #+56]
//  170 
//  171   COEFF->Temp  = (float)(COEFF->rTemp/100.0f);
        LDR      R0,[R4, #+32]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42c80000
        BL       __aeabi_fdiv
        STR      R0,[R4, #+60]
//  172   COEFF->Press = (float)(COEFF->rPress/100.0f);
        LDR      R0,[R4, #+56]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_4  ;; 0x42c80000
        BL       __aeabi_fdiv
        STR      R0,[R4, #+64]
//  173   COEFF->High  = (float)((101333-COEFF->rPress)*9.5238f);
        LDR.N    R0,??DataTable4_5  ;; 0x18bd5
        LDR      R1,[R4, #+56]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable4_6  ;; 0x4118617c
        BL       __aeabi_fmul
        STR      R0,[R4, #+68]
//  174 
//  175   COEFF->HighReady = 1;
        MOVS     R0,#+1
        STRB     R0,[R4, #+72]
//  176 }
        POP      {R4-R9,PC}       ;; return
//  177 
//  178 /*=====================================================================================================*/
//  179 /*=====================================================================================================*
//  180 **函數 : MS5611_Read
//  181 **功能 : MS5611 Read
//  182 **輸入 : Baro, ADC_ConvMode
//  183 **輸出 : None
//  184 **使用 : MS5611_Read(&Baro, MS5611_D1_OSR_4096);
//  185 **=====================================================================================================*/
//  186 /*=====================================================================================================*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 void MS5611_Read( MS5611_DataStruct* COEFF, uint8 ADC_ConvMode )
//  188 {
MS5611_Read:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  189   uint8 ReadFlag = ERROR;
        MOVS     R6,#+0
//  190   static MS5611_Status ReadSta = MS5611_ConvInit;
//  191 
//  192   switch(ReadSta) {
        LDR.N    R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??MS5611_Read_0
        CMP      R0,#+2
        BEQ.N    ??MS5611_Read_1
        BCC.N    ??MS5611_Read_2
        B.N      ??MS5611_Read_3
//  193     case MS5611_ConvInit:
//  194       MS5611_ConvADC(ADC_ConvMode);
??MS5611_Read_0:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_ConvADC
//  195       ReadSta = MS5611_ConvD1;
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  196       break;
        B.N      ??MS5611_Read_3
//  197     case MS5611_ConvD1:
//  198       MS5611_ReadADC(COEFF, MS5611_ADC_D1);
??MS5611_Read_2:
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       MS5611_ReadADC
//  199       MS5611_ConvADC(ADC_ConvMode | 0x10);
        ORRS     R0,R5,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_ConvADC
//  200       ReadSta = MS5611_ConvD2;
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  201       break;
        B.N      ??MS5611_Read_3
//  202     case MS5611_ConvD2:
//  203       MS5611_ReadADC(COEFF, MS5611_ADC_D2);
??MS5611_Read_1:
        MOVS     R1,#+2
        MOVS     R0,R4
        BL       MS5611_ReadADC
//  204       MS5611_ConvADC(ADC_ConvMode);
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MS5611_ConvADC
//  205       ReadFlag = SUCCESS;
        MOVS     R0,#+1
        MOVS     R6,R0
//  206       ReadSta = MS5611_ConvD1;
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  207       break;
//  208   }
//  209 
//  210   if(ReadFlag == SUCCESS)
??MS5611_Read_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??MS5611_Read_4
//  211     MS5611_Calculate(COEFF);
        MOVS     R0,R4
        BL       MS5611_Calculate
//  212 }
??MS5611_Read_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     MS5611_data_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40067002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x18bd5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4118617c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     ??ReadSta

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??ReadSta:
        DS8 1

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
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0

        END
//  213 /*=====================================================================================================*/
//  214 /*=====================================================================================================*/
//  215 
//  216 
// 
//  81 bytes in section .bss
//  42 bytes in section .rodata
// 930 bytes in section .text
// 
// 930 bytes of CODE  memory
//  42 bytes of CONST memory
//  81 bytes of DATA  memory
//
//Errors: none
//Warnings: none
