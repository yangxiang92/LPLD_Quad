///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:34 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MPU9150.c                                           /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\MPU9150.c -D LPLD_K60 -lCN                          /
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
//                    MINE\List\MPU9150.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MPU9150

        #define SHT_PROGBITS 0x1

        EXTERN I2C_ReadRegMulti
        EXTERN I2C_ReadRegSingle
        EXTERN I2C_WriteRegMulti
        EXTERN I2C_WriteRegSingle
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_I2C_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN delayms

        PUBLIC AK8975C_GetData
        PUBLIC AK8975C_GetRawData
        PUBLIC AK8975C_MultiReadReg
        PUBLIC AK8975C_SingleReadReg
        PUBLIC AK8975C_SingleWriteReg
        PUBLIC AK8975C_StartMeasure
        PUBLIC AK8975C_WaitMeasureComplete
        PUBLIC InitAK8975C
        PUBLIC InitMPU6050
        PUBLIC InitMPU9150
        PUBLIC MPU6050_DMP_MultiReadReg
        PUBLIC MPU6050_DMP_MultiWriteReg
        PUBLIC MPU6050_GetData
        PUBLIC MPU6050_GetRawData
        PUBLIC MPU6050_MultiReadReg
        PUBLIC MPU6050_MultiWriteReg
        PUBLIC MPU6050_SingleReadReg
        PUBLIC MPU6050_SingleWriteReg

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\MPU9150.c
//    1 /****************************************************************************** 
//    2  *       MPU9150.c ----- The Code to use MPU9150          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  MPU9150.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/27 21:51:25                                                       *
//   10  ******************************************************************************/
//   11 #include "MPU9150.h"
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void InitMPU9150(void)
//   14 {
InitMPU9150:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   15     I2C_InitTypeDef MPU9150_I2C_init_struct = {0};
        ADD      R0,SP,#+4
        MOVS     R1,#+16
        BL       __aeabi_memclr4
//   16     GPIO_InitTypeDef MPU9150_AD0_pin_init_struct = {0};
        ADD      R0,SP,#+20
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   17 
//   18     MPU9150_I2C_init_struct.I2C_I2Cx = MPU9150_I2C_PORT;
        LDR.N    R0,??DataTable9  ;; 0x40066000
        STR      R0,[SP, #+4]
//   19     MPU9150_I2C_init_struct.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//   20     MPU9150_I2C_init_struct.I2C_ICR  = MPU9150_SCL_400KHZ;
        MOVS     R0,#+23
        STRB     R0,[SP, #+8]
//   21     MPU9150_I2C_init_struct.I2C_SclPin = MPU9150_I2C_SCLPIN;
        MOVS     R0,#+34
        STRB     R0,[SP, #+10]
//   22     MPU9150_I2C_init_struct.I2C_SdaPin = MPU9150_I2C_SDAPIN;
        MOVS     R0,#+35
        STRB     R0,[SP, #+11]
//   23     MPU9150_I2C_init_struct.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   24     MPU9150_I2C_init_struct.I2C_OpenDrainEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+12]
//   25     LPLD_I2C_Init(MPU9150_I2C_init_struct);
        ADD      R0,SP,#+4
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   26 
//   27     MPU9150_AD0_pin_init_struct.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable9_1  ;; 0x400ff040
        STR      R0,[SP, #+20]
//   28     MPU9150_AD0_pin_init_struct.GPIO_Pins = GPIO_Pin21;
        MOVS     R0,#+2097152
        STR      R0,[SP, #+24]
//   29     MPU9150_AD0_pin_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+32]
//   30     MPU9150_AD0_pin_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+33]
//   31     LPLD_GPIO_Init(MPU9150_AD0_pin_init_struct);
        ADD      R1,SP,#+20
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   32     
//   33     delayms(10);
        MOVS     R0,#+10
        BL       delayms
//   34 
//   35     InitMPU6050();
        BL       InitMPU6050
//   36     InitAK8975C();
        BL       InitAK8975C
//   37 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   38 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 int16 MPU6050_GetData(uint8 reg_address)
//   40 {
MPU6050_GetData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   41     int16 ret = 0;
        MOVS     R5,#+0
//   42     uint8 buf[2] = {0,0};
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//   43 
//   44     MPU6050_MultiReadReg(reg_address, 2, buf);
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_MultiReadReg
//   45 
//   46     ret = (int16)(((uint16)buf[0] << 8) + buf[1]);
        LDRB     R0,[SP, #+0]
        LSLS     R0,R0,#+8
        LDRB     R1,[SP, #+1]
        UXTAB    R0,R0,R1
        MOVS     R5,R0
//   47 
//   48     return ret;
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   49 }
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void MPU6050_GetRawData(int16* raw_data)
//   52 {
MPU6050_GetRawData:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
//   53     int i = 0;
        MOVS     R5,#+0
//   54     uint8 buf[14];
//   55 
//   56     MPU6050_MultiReadReg(0x3b, 14, buf);
        ADD      R2,SP,#+0
        MOVS     R1,#+14
        MOVS     R0,#+59
        BL       MPU6050_MultiReadReg
//   57 
//   58     for(i = 0; i < 7; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??MPU6050_GetRawData_0:
        CMP      R5,#+7
        BGE.N    ??MPU6050_GetRawData_1
//   59     {
//   60         raw_data[i] = (int16)(((uint16)buf[2*i] << 8) + (uint16)buf[2*i+1]);
        ADD      R0,SP,#+0
        LDRB     R0,[R0, R5, LSL #+1]
        LSLS     R0,R0,#+8
        ADD      R1,SP,#+0
        ADDS     R1,R1,R5, LSL #+1
        LDRB     R1,[R1, #+1]
        UXTAB    R0,R0,R1
        STRH     R0,[R4, R5, LSL #+1]
//   61     }
        ADDS     R5,R5,#+1
        B.N      ??MPU6050_GetRawData_0
//   62 }
??MPU6050_GetRawData_1:
        ADD      SP,SP,#+20
        POP      {R4,R5,PC}       ;; return
//   63 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 void MPU6050_SingleWriteReg(uint8 reg_address, uint8 data)
//   65 {
MPU6050_SingleWriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   66     I2C_WriteRegSingle(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, data, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_WriteRegSingle
//   67 }
        POP      {R0,R4,R5,PC}    ;; return
//   68 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 uint8 MPU6050_SingleReadReg(uint8 reg_address)
//   70 {
MPU6050_SingleReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   71     return I2C_ReadRegSingle(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, MPU9150_I2C_DELAY_TIME);
        MOVS     R3,#+2
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_ReadRegSingle
        POP      {R4,PC}          ;; return
//   72 }  
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void MPU6050_MultiWriteReg(uint8 reg_address, uint8 len, uint8 * data)
//   75 {
MPU6050_MultiWriteReg:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   76     I2C_WriteRegMulti(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, len, data, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_WriteRegMulti
//   77 }
        POP      {R0,R1,R4-R6,PC}  ;; return
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void MPU6050_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf)
//   80 {
MPU6050_MultiReadReg:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   81     I2C_ReadRegMulti(MPU9150_I2C_PORT, MPU6050_ADDRESS, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+104
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_ReadRegMulti
//   82 }  
        POP      {R0,R1,R4-R6,PC}  ;; return
//   83 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 uint8 MPU6050_DMP_MultiWriteReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * data)
//   85 {
MPU6050_DMP_MultiWriteReg:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   86     I2C_WriteRegMulti(MPU9150_I2C_PORT, dev_address, reg_address, len, data, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_WriteRegMulti
//   87     return 0;
        MOVS     R0,#+0
        POP      {R1-R7,PC}       ;; return
//   88 }
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 uint8 MPU6050_DMP_MultiReadReg(uint8 dev_address, uint8 reg_address, uint8 len, uint8 * buf)
//   91 {
MPU6050_DMP_MultiReadReg:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   92     I2C_ReadRegMulti(MPU9150_I2C_PORT, dev_address, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        STR      R7,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_ReadRegMulti
//   93     return 0;
        MOVS     R0,#+0
        POP      {R1-R7,PC}       ;; return
//   94 }  
//   95 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   96 void InitMPU6050(void)
//   97 {
InitMPU6050:
        PUSH     {R7,LR}
//   98     MPU6050_SingleWriteReg(MPU6050_PWR_MGMT_1, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+107
        BL       MPU6050_SingleWriteReg
//   99     //MPU6050_SingleWriteReg(MPU6050_SMPLRT_DIV, 0x07);
//  100     MPU6050_SingleWriteReg(MPU6050_SMPLRT_DIV, 0x01);    
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       MPU6050_SingleWriteReg
//  101     MPU6050_SingleWriteReg(MPU6050_CONFIG, 0x06);
        MOVS     R1,#+6
        MOVS     R0,#+26
        BL       MPU6050_SingleWriteReg
//  102     MPU6050_SingleWriteReg(MPU6050_GYRO_CONFIG, 0x18);
        MOVS     R1,#+24
        MOVS     R0,#+27
        BL       MPU6050_SingleWriteReg
//  103     MPU6050_SingleWriteReg(MPU6050_ACCEL_CONFIG, 0x01);    
        MOVS     R1,#+1
        MOVS     R0,#+28
        BL       MPU6050_SingleWriteReg
//  104 }
        POP      {R0,PC}          ;; return
//  105 
//  106 
//  107 
//  108 
//  109 /************************************************************************
//  110  * Function         AK8975C_SingleWriteReg                                              
//  111  * Usage            To Write a Reg to AK8975C(electrical compass)                           
//  112  * Argument         reg_address:    The address of the reg you want to write into
//  113  *                  data:           The data you want to write
//  114  * Return value     NONE                                                
//  115  * Modification History:                                                
//  116  * 01a 2014/4/1 20:40:30   
//  117  *
//  118  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void AK8975C_SingleWriteReg (uint8 reg_address, uint8 data) 
//  120 {
AK8975C_SingleWriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  121     I2C_WriteRegSingle(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, data, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+12
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_WriteRegSingle
//  122 }		/* -----  end of function AK8975C_SingleWriteReg  ----- */
        POP      {R0,R4,R5,PC}    ;; return
//  123 
//  124 
//  125 /************************************************************************
//  126  * Function         AK8975C_SingleReadReg                                              
//  127  * Usage            To Read a Reg from AK8975C(electrical compass)                           
//  128  * Argument         reg_address:    The address of the data you want to read                                                
//  129  * Return value     (uint8)         The data you read from the reg_address                                                
//  130  * Modification History:                                                
//  131  * 01a 2014/4/1 20:46:27   
//  132  *
//  133  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 uint8 AK8975C_SingleReadReg (uint8 reg_address) 
//  135 {
AK8975C_SingleReadReg:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  136     return I2C_ReadRegSingle(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, MPU9150_I2C_DELAY_TIME);
        MOVS     R3,#+2
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+12
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_ReadRegSingle
        POP      {R4,PC}          ;; return
//  137 }		/* -----  end of function AK8975C_SingleReadReg  ----- */
//  138 
//  139 
//  140 /************************************************************************
//  141  * Function         InitAK8975C                                              
//  142  * Usage            To Initialize AK8975C(electrical compass)                           
//  143  * Argument         NONE                                                
//  144  * Return value     NONE                                                
//  145  * Modification History:                                                
//  146  * 01a 2014/4/1 20:48:49   
//  147  *
//  148  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void InitAK8975C (void) 
//  150 {
InitAK8975C:
        PUSH     {R7,LR}
//  151     MPU6050_SingleWriteReg(0x37, 0x02);
        MOVS     R1,#+2
        MOVS     R0,#+55
        BL       MPU6050_SingleWriteReg
//  152     AK8975C_SingleWriteReg(AK8975C_CNTL, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       AK8975C_SingleWriteReg
//  153 }		/* -----  end of function InitAK8975C  ----- */
        POP      {R0,PC}          ;; return
//  154 
//  155 /************************************************************************
//  156  * Function         AK8975C_GetData                                              
//  157  * Usage            Get Sensor Data from the AK8975C                           
//  158  * Argument         reg_address:The address of the sensor data you want to read(16-bits)                                                
//  159  * Return value     (int16) The sensor data you want to get                                                
//  160  * Modification History:                                                
//  161  * 01a 2014/4/1 20:54:59   
//  162  *
//  163  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 int16 AK8975C_GetData (uint8 reg_address) 
//  165 {
AK8975C_GetData:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  166     int ret = 0;
        MOVS     R5,#+0
//  167 
//  168     uint8 H,L;
//  169     L = AK8975C_SingleReadReg(reg_address);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       AK8975C_SingleReadReg
        MOVS     R7,R0
//  170     H = AK8975C_SingleReadReg(reg_address+1);
        ADDS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       AK8975C_SingleReadReg
        MOVS     R6,R0
//  171 
//  172     ret =  (int16)((H<<8) + L);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+8
        UXTAB    R0,R0,R7
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        MOVS     R5,R0
//  173 
//  174     return ret;    
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4-R7,PC}    ;; return
//  175 }		/* -----  end of function AK8975C_GetData  ----- */
//  176 
//  177 /************************************************************************
//  178  * Function         AK8975C_StartMeasure                                              
//  179  * Usage            Start Measure The Megenito                           
//  180  * Argument         NONE                                                
//  181  * Return value     NONE                                                
//  182  * Modification History:                                                
//  183  * 01a 2014/4/1 22:07:59   
//  184  *
//  185  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void AK8975C_StartMeasure (void) 
//  187 {
AK8975C_StartMeasure:
        PUSH     {R7,LR}
//  188     AK8975C_SingleWriteReg(AK8975C_CNTL, 0x01);    
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       AK8975C_SingleWriteReg
//  189 }		/* -----  end of function AK9875C_StartMeasure  ----- */
        POP      {R0,PC}          ;; return
//  190 
//  191 
//  192 /************************************************************************
//  193  * Function         AK8975C_WaitMeasureComplete                                              
//  194  * Usage            Wait AK8975C Measurement Complete                           
//  195  * Argument         NONE                                                
//  196  * Return value     (uint8) whether over time(0 not over, 1 over)                                                
//  197  * Modification History:                                                
//  198  * 01a 2014/4/1 22:08:58   
//  199  *
//  200  ************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 uint8 AK8975C_WaitMeasureComplete (void) 
//  202 {
AK8975C_WaitMeasureComplete:
        PUSH     {R3-R5,LR}
//  203     int i = 0;
        MOVS     R4,#+0
//  204 
//  205     uint8 ret = 0;
        MOVS     R5,#+0
//  206     while(AK8975C_SingleReadReg(0x02) != 0x01)
??AK8975C_WaitMeasureComplete_0:
        MOVS     R0,#+2
        BL       AK8975C_SingleReadReg
        CMP      R0,#+1
        BEQ.N    ??AK8975C_WaitMeasureComplete_1
//  207     {
//  208         i ++;
        ADDS     R4,R4,#+1
//  209         if(i > 2000)
        CMP      R4,#+2000
        BLE.N    ??AK8975C_WaitMeasureComplete_0
//  210         {
//  211             ret = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  212             break;
//  213         }
//  214     }
//  215     ret = 0;
??AK8975C_WaitMeasureComplete_1:
        MOVS     R0,#+0
        MOVS     R5,R0
//  216 
//  217     return ret;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  218 }		/* -----  end of function AK9875C_WaitMeasureComplete  ----- */
//  219 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 void AK8975C_MultiReadReg(uint8 reg_address, uint8 len, uint8 * buf)
//  221 {
AK8975C_MultiReadReg:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  222     I2C_ReadRegMulti(MPU9150_I2C_PORT, AK8975C_ADDRESS, reg_address, len, buf, MPU9150_I2C_DELAY_TIME);
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+12
        LDR.N    R0,??DataTable9  ;; 0x40066000
        BL       I2C_ReadRegMulti
//  223 }  
        POP      {R0,R1,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x400ff040
//  224 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void AK8975C_GetRawData(int16* raw_data)
//  226 {
AK8975C_GetRawData:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
//  227     int i = 0;
        MOVS     R5,#+0
//  228     uint8 buf[6];
//  229 
//  230     AK8975C_MultiReadReg(0x03, 6, buf);
        ADD      R2,SP,#+0
        MOVS     R1,#+6
        MOVS     R0,#+3
        BL       AK8975C_MultiReadReg
//  231 
//  232     for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??AK8975C_GetRawData_0:
        CMP      R5,#+3
        BGE.N    ??AK8975C_GetRawData_1
//  233     {
//  234         raw_data[i] = (int16)(((uint16)buf[2*i+1] << 8) + (uint16)buf[2*i]);
        ADD      R0,SP,#+0
        ADDS     R0,R0,R5, LSL #+1
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+8
        ADD      R1,SP,#+0
        LDRB     R1,[R1, R5, LSL #+1]
        UXTAB    R0,R0,R1
        STRH     R0,[R4, R5, LSL #+1]
//  235     }
        ADDS     R5,R5,#+1
        B.N      ??AK8975C_GetRawData_0
//  236 }
??AK8975C_GetRawData_1:
        POP      {R0-R2,R4,R5,PC}  ;; return

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

        END
// 
//  38 bytes in section .rodata
// 722 bytes in section .text
// 
// 722 bytes of CODE  memory
//  38 bytes of CONST memory
//
//Errors: none
//Warnings: none
