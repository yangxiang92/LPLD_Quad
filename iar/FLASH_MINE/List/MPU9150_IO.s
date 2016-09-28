///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:34 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MPU9150_IO.c                                        /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MPU9150_IO.c -D LPLD_K60 -lCN                       /
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
//                    MINE\List\MPU9150_IO.s                                  /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MPU9150_IO

        #define SHT_PROGBITS 0x1

        EXTERN Delay5us
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4

        PUBLIC GetData_IO
        PUBLIC GetSDAInput_IO
        PUBLIC I2C_RecvACK_IO
        PUBLIC I2C_RecvByte_IO
        PUBLIC I2C_SendACK_IO
        PUBLIC I2C_SendByte_IO
        PUBLIC I2C_Start_IO
        PUBLIC I2C_Stop_IO
        PUBLIC InitMPU6050_IO
        PUBLIC InitMPU9150_IO
        PUBLIC SetSCLOutput_IO
        PUBLIC SetSDAOutput_IO
        PUBLIC Single_ReadI2C_IO
        PUBLIC Single_WriteI2C_IO

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\MPU9150_IO.c
//    1 /****************************************************************************** 
//    2  *       MPU9150_IO.c ----- The MPU9150 Operation Function use IO          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MPU9150_IO.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/29 17:46:45                                                       *
//   10  ******************************************************************************/
//   11 #include "MPU9150_IO.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void InitMPU9150_IO(void)
//   13 {
InitMPU9150_IO:
        PUSH     {R7,LR}
//   14     static GPIO_InitTypeDef MPU9150_AD0_pin_init_struct;
//   15 
//   16     MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_1  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   17     MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin21;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+2097152
        STR      R1,[R0, #+4]
//   18     MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   19     MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_L;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
//   20     LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);
        LDR.N    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   21 
//   22     MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_1  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   23     MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin2;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+4
        STR      R1,[R0, #+4]
//   24     MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   25     MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_H;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
//   26     LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);
        LDR.N    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   27 
//   28     MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_1  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   29     MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin3;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+8
        STR      R1,[R0, #+4]
//   30     MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   31     MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_H;
        LDR.N    R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
//   32     LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);
        LDR.N    R1,??DataTable3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   33 
//   34 
//   35     InitMPU6050_IO();
        BL       InitMPU6050_IO
//   36 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??MPU9150_AD0_pin_init_struct:
        DS8 20
//   37 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void SetSCLOutput_IO(uint8 state)
//   39 {
SetSCLOutput_IO:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   40     LPLD_GPIO_Output_b(PTB, 2, state);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+2
        LDR.N    R0,??DataTable3_1  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   41 }
        POP      {R4,PC}          ;; return
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void SetSDAOutput_IO(uint8 state)
//   44 {
SetSDAOutput_IO:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   45     LPLD_GPIO_Output_b(PTB, 3, state);
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   46 }
        POP      {R4,PC}          ;; return
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 GetSDAInput_IO(void)
//   49 {
GetSDAInput_IO:
        PUSH     {R7,LR}
//   50     return LPLD_GPIO_Input_b(PTB, 3);
        MOVS     R1,#+3
        LDR.N    R0,??DataTable3_1  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        POP      {R1,PC}          ;; return
//   51 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     ??MPU9150_AD0_pin_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x400ff040
//   52 
//   53 //I2C起始信号

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   54 void I2C_Start_IO()
//   55 {
I2C_Start_IO:
        PUSH     {R7,LR}
//   56     SetSDAOutput_IO(1);                    //拉高数据线
        MOVS     R0,#+1
        BL       SetSDAOutput_IO
//   57     SetSCLOutput_IO(1);                    //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//   58     Delay5us();                 //延时
        BL       Delay5us
//   59     SetSDAOutput_IO(0);                    //产生下降沿
        MOVS     R0,#+0
        BL       SetSDAOutput_IO
//   60     Delay5us();                 //延时
        BL       Delay5us
//   61     SetSCLOutput_IO(0);                    //拉低时钟线
        MOVS     R0,#+0
        BL       SetSCLOutput_IO
//   62 }
        POP      {R0,PC}          ;; return
//   63 //I2C停止信号

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void I2C_Stop_IO()
//   65 {
I2C_Stop_IO:
        PUSH     {R7,LR}
//   66     SetSDAOutput_IO(0);                    //拉低数据线
        MOVS     R0,#+0
        BL       SetSDAOutput_IO
//   67     SetSCLOutput_IO(1);                    //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//   68     Delay5us();                 //延时
        BL       Delay5us
//   69     SetSDAOutput_IO(1);                    //产生上升沿
        MOVS     R0,#+1
        BL       SetSDAOutput_IO
//   70     Delay5us();                 //延时
        BL       Delay5us
//   71 }
        POP      {R0,PC}          ;; return
//   72 //I2C发送应答信号
//   73 //入口参数:ack (0:ACK 1:NAK)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void I2C_SendACK_IO(uint8 ack)
//   75 {
I2C_SendACK_IO:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   76     SetSDAOutput_IO(ack);                  //写应答信号
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetSDAOutput_IO
//   77     SetSCLOutput_IO(1);                    //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//   78     Delay5us();                 //延时
        BL       Delay5us
//   79     SetSCLOutput_IO(0);                    //拉低时钟线
        MOVS     R0,#+0
        BL       SetSCLOutput_IO
//   80     Delay5us();                 //延时
        BL       Delay5us
//   81 }
        POP      {R4,PC}          ;; return
//   82 //I2C接收应答信号

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   83 uint8 I2C_RecvACK_IO()
//   84 {
I2C_RecvACK_IO:
        PUSH     {R4,LR}
//   85     uint8 CY = 0;
        MOVS     R4,#+0
//   86     SetSCLOutput_IO(1);                    //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//   87     Delay5us();                 //延时
        BL       Delay5us
//   88     CY = GetSDAInput_IO();                   //读应答信号
        BL       GetSDAInput_IO
        MOVS     R4,R0
//   89     SetSCLOutput_IO(0);                    //拉低时钟线
        MOVS     R0,#+0
        BL       SetSCLOutput_IO
//   90     Delay5us();                 //延时
        BL       Delay5us
//   91     return CY;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//   92 }
//   93 //向I2C总线发送一个字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void I2C_SendByte_IO(uint8 dat)
//   95 {
I2C_SendByte_IO:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   96     uint8 i;
//   97     for (i=0; i<8; i++)         //8位计数器
        MOVS     R0,#+0
        MOVS     R5,R0
??I2C_SendByte_IO_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BCS.N    ??I2C_SendByte_IO_1
//   98     {
//   99         SetSDAOutput_IO(!!(dat & 0x80));               //送数据口
        UBFX     R0,R4,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetSDAOutput_IO
//  100         dat <<= 1;//移出数据的最高位 
        LSLS     R4,R4,#+1
//  101         SetSCLOutput_IO(1);                //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//  102         Delay5us();             //延时
        BL       Delay5us
//  103         SetSCLOutput_IO(0);                //拉低时钟线
        MOVS     R0,#+0
        BL       SetSCLOutput_IO
//  104         Delay5us();             //延时
        BL       Delay5us
//  105     }
        ADDS     R5,R5,#+1
        B.N      ??I2C_SendByte_IO_0
//  106     I2C_RecvACK_IO();
??I2C_SendByte_IO_1:
        BL       I2C_RecvACK_IO
//  107 }
        POP      {R0,R4,R5,PC}    ;; return
//  108 //从I2C总线接收一个字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  109 uint8 I2C_RecvByte_IO()
//  110 {
I2C_RecvByte_IO:
        PUSH     {R3-R5,LR}
//  111     uint8 i;
//  112     uint8 dat = 0;
        MOVS     R5,#+0
//  113     SetSDAOutput_IO(1);                    //使能内部上拉,准备读取数据,
        MOVS     R0,#+1
        BL       SetSDAOutput_IO
//  114     for (i=0; i<8; i++)         //8位计数器
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C_RecvByte_IO_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??I2C_RecvByte_IO_1
//  115     {
//  116         dat <<= 1;
        LSLS     R5,R5,#+1
//  117         SetSCLOutput_IO(1);                //拉高时钟线
        MOVS     R0,#+1
        BL       SetSCLOutput_IO
//  118         Delay5us();             //延时
        BL       Delay5us
//  119         dat |= GetSDAInput_IO();             //读数据               
        BL       GetSDAInput_IO
        ORRS     R0,R0,R5
        MOVS     R5,R0
//  120         SetSCLOutput_IO(0);                //拉低时钟线
        MOVS     R0,#+0
        BL       SetSCLOutput_IO
//  121         Delay5us();             //延时
        BL       Delay5us
//  122     }
        ADDS     R4,R4,#+1
        B.N      ??I2C_RecvByte_IO_0
//  123     return dat;
??I2C_RecvByte_IO_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  124 }
//  125 //向I2C设备写入一个字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 void Single_WriteI2C_IO(uint8 REG_Address,uint8 REG_data)
//  127 {
Single_WriteI2C_IO:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  128     I2C_Start_IO();                  //起始信号
        BL       I2C_Start_IO
//  129     I2C_SendByte_IO(MPU6050_ADDRESS_IO);   //发送设备地址+写信号
        MOVS     R0,#+208
        BL       I2C_SendByte_IO
//  130     I2C_SendByte_IO(REG_Address);    //内部寄存器地址，
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C_SendByte_IO
//  131     I2C_SendByte_IO(REG_data);       //内部寄存器数据，
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C_SendByte_IO
//  132     I2C_Stop_IO();                   //发送停止信号
        BL       I2C_Stop_IO
//  133 }
        POP      {R0,R4,R5,PC}    ;; return
//  134 //从I2C设备读取一个字节数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 uint8 Single_ReadI2C_IO(uint8 REG_Address)
//  136 {
Single_ReadI2C_IO:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  137 	uint8 REG_data;
//  138 	I2C_Start_IO();                   //起始信号
        BL       I2C_Start_IO
//  139 	I2C_SendByte_IO(MPU6050_ADDRESS_IO);    //发送设备地址+写信号
        MOVS     R0,#+208
        BL       I2C_SendByte_IO
//  140 	I2C_SendByte_IO(REG_Address);     //发送存储单元地址，从0开始	
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C_SendByte_IO
//  141 	I2C_Start_IO();                   //起始信号
        BL       I2C_Start_IO
//  142 	I2C_SendByte_IO(MPU6050_ADDRESS_IO+1);  //发送设备地址+读信号
        MOVS     R0,#+209
        BL       I2C_SendByte_IO
//  143 	REG_data=I2C_RecvByte_IO();       //读出寄存器数据
        BL       I2C_RecvByte_IO
        MOVS     R5,R0
//  144 	I2C_SendACK_IO(1);                //接收应答信号
        MOVS     R0,#+1
        BL       I2C_SendACK_IO
//  145 	I2C_Stop_IO();                    //停止信号
        BL       I2C_Stop_IO
//  146 	return REG_data;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  147 }
//  148 //初始化MPU6050

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void InitMPU6050_IO()
//  150 {
InitMPU6050_IO:
        PUSH     {R7,LR}
//  151 	Single_WriteI2C_IO(MPU6050_PWR_MGMT_1, 0x00);	//解除休眠状态
        MOVS     R1,#+0
        MOVS     R0,#+107
        BL       Single_WriteI2C_IO
//  152 	Single_WriteI2C_IO(MPU6050_SMPLRT_DIV, 0x07);
        MOVS     R1,#+7
        MOVS     R0,#+25
        BL       Single_WriteI2C_IO
//  153 	Single_WriteI2C_IO(MPU6050_CONFIG, 0x06);
        MOVS     R1,#+6
        MOVS     R0,#+26
        BL       Single_WriteI2C_IO
//  154 	Single_WriteI2C_IO(MPU6050_GYRO_CONFIG, 0x18);
        MOVS     R1,#+24
        MOVS     R0,#+27
        BL       Single_WriteI2C_IO
//  155 	Single_WriteI2C_IO(MPU6050_ACCEL_CONFIG, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+28
        BL       Single_WriteI2C_IO
//  156 }
        POP      {R0,PC}          ;; return
//  157 //合成数据

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  158 int GetData_IO(uint8 REG_Address)
//  159 {
GetData_IO:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
//  160     uint16 result = 0;
        MOVS     R5,#+0
//  161     int16 ret = 0;
        MOVS     R6,#+0
//  162 
//  163 	uint8 H,L;
//  164 	H=Single_ReadI2C_IO(REG_Address);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Single_ReadI2C_IO
        MOVS     R7,R0
//  165 	L=Single_ReadI2C_IO(REG_Address+1);
        ADDS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Single_ReadI2C_IO
        MOV      R8,R0
//  166 	result = (H<<8)+L;   //合成数据
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+8
        UXTAB    R0,R0,R8
        MOVS     R5,R0
//  167 
//  168     ret = (int16)result;
        MOVS     R6,R5
//  169 
//  170     return ret;
        SXTH     R6,R6            ;; SignExt  R6,R6,#+16,#+16
        MOVS     R0,R6
        POP      {R4-R8,PC}       ;; return
//  171 }

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
//  20 bytes in section .bss
// 630 bytes in section .text
// 
// 630 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
