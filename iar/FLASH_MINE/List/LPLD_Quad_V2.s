///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    08/Aug/2014  19:52:17 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \LPLD_Quad_V2.c                                         /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app /
//                    \LPLD_Quad_V2.c -D LPLD_K60 -lCN                        /
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
//                    MINE\List\LPLD_Quad_V2.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LPLD_Quad_V2

        #define SHT_PROGBITS 0x1

        EXTERN ADNS3080_GetRawData
        EXTERN ADNS3080_IntegratePixel
        EXTERN ADNS3080_IntergratePositionWithGyrAttitude
        EXTERN ADNS3080_RefreshRawData
        EXTERN AK8975C_InitRawData
        EXTERN AK8975C_RefreshRawData
        EXTERN ApplyQuadParam
        EXTERN AttitudeInit
        EXTERN CheckLastSystemSettingTheSame
        EXTERN CtrlCancelModeWithMask
        EXTERN CtrlEvent
        EXTERN CtrlSetBaseThrottle
        EXTERN CtrlSetMode
        EXTERN CtrlSetModeWithMask
        EXTERN CtrlSetTargetEulerAttitude
        EXTERN CtrlSetTargetHeight
        EXTERN CtrlSetTargetPosition
        EXTERN GetAccGyrOffsetOpe
        EXTERN GetAccOffsetOpe
        EXTERN GetAttitude
        EXTERN GetControlData
        EXTERN GetControlParameter
        EXTERN GetEulerAttitude
        EXTERN GetGyrOffsetOpe
        EXTERN GetQuadParamInRam
        EXTERN GetSystemSettingOnSwitch
        EXTERN InitADNS3080_SPI
        EXTERN InitAltitude
        EXTERN InitBatteryVoltageMeasurement
        EXTERN InitBuzzer
        EXTERN InitCommunicateUart
        EXTERN InitControl
        EXTERN InitDebugUart
        EXTERN InitFlashRom
        EXTERN InitGPSUart
        EXTERN InitHCSR04
        EXTERN InitLight
        EXTERN InitMPU9150
        EXTERN InitMS5611
        EXTERN InitQuadParam
        EXTERN InitSixRotorPWM
        EXTERN InitSwitches
        EXTERN InitTimer
        EXTERN InitUartQueue
        EXTERN InitUartRecvQueue
        EXTERN InitWFLY_RC
        EXTERN IsUartQueueEmpty
        EXTERN MPU6050_GetCalibratedGyr
        EXTERN MPU6050_InitRawData
        EXTERN MPU6050_RefreshRawData
        EXTERN MS5611_RefreshData
        EXTERN PWMOutOneESC
        EXTERN PutStringUartQueue
        EXTERN ReadSwitches
        EXTERN RefreshAttitude
        EXTERN SaveQuadParamToFlash
        EXTERN SaveThisSystemSettingToFlash
        EXTERN SendSeveralUartQueueData
        EXTERN SetBuzzerMode
        EXTERN SetLightsOnOff
        EXTERN ToggleLights
        EXTERN TriggerBatteryADC
        EXTERN TurnOnLights
        EXTERN WFLY_RC_GetCH5OnOff
        EXTERN WFLY_RC_GetMaxRangeOpe
        EXTERN WFLY_RC_GetOffsetOpe
        EXTERN WFLY_RC_GetPitchRatio
        EXTERN WFLY_RC_GetRollRatio
        EXTERN WFLY_RC_GetThrottleRatio
        EXTERN WFLY_RC_GetYawRatio
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_ui2f
        EXTERN delayms
        EXTERN g_f32ADNS3080PixelPosition
        EXTERN g_f32DebugPitch
        EXTERN g_f32DebugRoll
        EXTERN g_f32DebugThrottle
        EXTERN g_f32DebugYaw
        EXTERN g_f32FiltedAltitude
        EXTERN g_i16AccOffset
        EXTERN g_i16GyrOffset
        EXTERN g_i32ADNS3080PixelSum
        EXTERN g_sAK8975CRawData
        EXTERN g_sMPU6050RawData
        EXTERN g_sMS5611DataCopy
        EXTERN g_sQuadSystemFlag
        EXTERN g_sonar_measure_distance_mm
        EXTERN g_timer_cnt
        EXTERN g_u32DebugPWM
        EXTERN g_u32LostSignalTimerCnt
        EXTERN g_u32ProgramPeriodTimerCnt
        EXTERN g_u32WFLY_RC_max_range
        EXTERN g_u32WFLY_RC_offset
        EXTERN gc_f32LandingThrottle
        EXTERN gc_f32MaxRCHeight
        EXTERN gc_f32MaxRCPitchAngle
        EXTERN gc_f32MaxRCRollAngle
        EXTERN gc_f32MaxRCThrottle
        EXTERN gc_f32MaxRCYawAngle
        EXTERN gc_f32RCThrottleDeadZone
        EXTERN miniAHRS_InitUartQueue
        EXTERN miniAHRS_IsUartQueueEmpty
        EXTERN miniAHRS_PopUartQueue
        EXTERN miniAHRS_ReportIMU_Queue
        EXTERN miniAHRS_ReportMotion_Queue
        EXTERN miniAHRS_SendOneByte
        EXTERN quaternion_converQuaternionToYawPitchRoll
        EXTERN sprintf

        PUBLIC InitHW
        PUBLIC Test
        PUBLIC main

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\app\LPLD_Quad_V2.c
//    1 /**
//    2  * --------------基于"拉普兰德K60底层库V3"的工程（LPLD_Quad_V2）-----------------
//    3  * @file LPLD_Quad_V2.c
//    4  * @version 0.0
//    5  * @date 2013-9-29
//    6  * @brief 关于该工程的描述
//    7  *
//    8  * 版权所有:北京拉普兰德电子技术有限公司
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * 硬件平台:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * 本工程基于"拉普兰德K60底层库V3"开发，
//   14  * 所有开源代码均在"lib"文件夹下，用户不必更改该目录下代码，
//   15  * 所有用户工程需保存在"project"文件夹下，以工程名定义文件夹名，
//   16  * 底层库使用方法见相关文档。 
//   17  *
//   18  */
//   19 #include "LPLD_Quad_V2.h"
//   20 
//   21 void Test(void);
//   22 void InitHW(void);
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void main (void)
//   25 {
main:
        SUB      SP,SP,#+24
//   26     int i = 0;
        MOVS     R4,#+0
//   27 
//   28     InitHW();
        BL       InitHW
//   29     Test();
        BL       Test
//   30     
//   31     GetAccGyrOffsetOpe();
        BL       GetAccGyrOffsetOpe
//   32 
//   33     MPU6050_InitRawData();
        BL       MPU6050_InitRawData
//   34     AK8975C_InitRawData();
        BL       AK8975C_InitRawData
//   35     AttitudeInit();    
        BL       AttitudeInit
//   36     miniAHRS_InitUartQueue();
        BL       miniAHRS_InitUartQueue
//   37     float yaw, pitch, roll;    
//   38     while(1)
//   39     {
//   40         while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
??main_0:
??main_1:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BCC.N    ??main_1
//   41         {
//   42 
//   43         }
//   44         g_u32ProgramPeriodTimerCnt = 0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   45         
//   46         TriggerBatteryADC();
        BL       TriggerBatteryADC
//   47         MPU6050_RefreshRawData(); 
        BL       MPU6050_RefreshRawData
//   48         AK8975C_RefreshRawData();
        BL       AK8975C_RefreshRawData
//   49         MS5611_RefreshData();
        BL       MS5611_RefreshData
//   50         RefreshAttitude();
        BL       RefreshAttitude
//   51        
//   52         yaw = GetEulerAttitude()->yaw * 10; 
        BL       GetEulerAttitude
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R5,R0
//   53         pitch = GetEulerAttitude()->pitch * 10; 
        BL       GetEulerAttitude
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R6,R0
//   54         roll = GetEulerAttitude()->roll * 10;
        BL       GetEulerAttitude
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R7,R0
//   55 
//   56         PWMOutOneESC(1, g_u32DebugPWM[0]);
        LDR.W    R0,??DataTable1_3
        LDR      R1,[R0, #+0]
        MOVS     R0,#+1
        BL       PWMOutOneESC
//   57         PWMOutOneESC(2, g_u32DebugPWM[1]);
        LDR.W    R0,??DataTable1_3
        LDR      R1,[R0, #+4]
        MOVS     R0,#+2
        BL       PWMOutOneESC
//   58         PWMOutOneESC(3, g_u32DebugPWM[2]);
        LDR.W    R0,??DataTable1_3
        LDR      R1,[R0, #+8]
        MOVS     R0,#+3
        BL       PWMOutOneESC
//   59         PWMOutOneESC(4, g_u32DebugPWM[3]);
        LDR.W    R0,??DataTable1_3
        LDR      R1,[R0, #+12]
        MOVS     R0,#+4
        BL       PWMOutOneESC
//   60 
//   61 
//   62 
//   63 #ifdef MINIAHRS_CLIENT_USE
//   64         if(!miniAHRS_IsUartQueueEmpty())
        BL       miniAHRS_IsUartQueueEmpty
        CMP      R0,#+0
        BNE.N    ??main_2
//   65         {
//   66             for(i = 0; i < 5; i ++)
        MOVS     R0,#+0
        MOVS     R4,R0
??main_3:
        CMP      R4,#+5
        BGE.N    ??main_0
//   67             {
//   68                 if(!miniAHRS_IsUartQueueEmpty())
        BL       miniAHRS_IsUartQueueEmpty
        CMP      R0,#+0
        BNE.N    ??main_4
//   69                 {
//   70                     miniAHRS_SendOneByte(miniAHRS_PopUartQueue());            
        BL       miniAHRS_PopUartQueue
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//   71                 }
//   72             }
??main_4:
        ADDS     R4,R4,#+1
        B.N      ??main_3
//   73         }
//   74         else
//   75         {
//   76            miniAHRS_ReportIMU_Queue((int)(GetEulerAttitude()->yaw * 10), (int)(GetEulerAttitude()->pitch * 10), (int)(GetEulerAttitude()->roll * 10), (int)g_sMS5611DataCopy.High, (int)(g_sMS5611DataCopy.Temp * 10), (int)(g_sMS5611DataCopy.Press * 10), 200); 
??main_2:
        BL       GetEulerAttitude
        MOV      R8,R0
        BL       GetEulerAttitude
        MOV      R9,R0
        BL       GetEulerAttitude
        MOV      R10,R0
        MOVS     R0,#+200
        STR      R0,[SP, #+8]
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+64]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+60]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_4
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2iz
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOV      R11,R3
        LDR      R0,[R8, #+8]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R11
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R8,R2
        MOV      R11,R3
        LDR      R0,[R9, #+4]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOV      R3,R11
        MOV      R2,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R8,R1
        MOV      R9,R2
        MOV      R11,R3
        LDR      R0,[R10, #+0]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R3,R11
        MOV      R2,R9
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       miniAHRS_ReportIMU_Queue
//   77            miniAHRS_ReportMotion_Queue(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
        LDR.W    R0,??DataTable1_6
        LDRSH    R0,[R0, #+4]
        STR      R0,[SP, #+16]
        LDR.W    R0,??DataTable1_6
        LDRSH    R0,[R0, #+2]
        STR      R0,[SP, #+12]
        LDR.W    R0,??DataTable1_6
        LDRSH    R0,[R0, #+0]
        STR      R0,[SP, #+8]
        LDR.W    R0,??DataTable1_7
        LDRSH    R0,[R0, #+12]
        STR      R0,[SP, #+4]
        LDR.W    R0,??DataTable1_7
        LDRSH    R0,[R0, #+10]
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable1_7
        LDRSH    R3,[R0, #+8]
        LDR.W    R0,??DataTable1_7
        LDRSH    R2,[R0, #+4]
        LDR.W    R0,??DataTable1_7
        LDRSH    R1,[R0, #+2]
        LDR.W    R0,??DataTable1_7
        LDRSH    R0,[R0, #+0]
        BL       miniAHRS_ReportMotion_Queue
        B.N      ??main_0
//   78         }
//   79 #endif
//   80        
//   81     }    
//   82 }
//   83 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 void Test(void)
//   85 {
Test:
        SUB      SP,SP,#+272
//   86     int i = 0;
        MOVS     R5,#+0
//   87     int8 str_buff[128];
//   88     int program_running_count = 0;
        MOVS     R7,#+0
//   89     int max_program_period_time = 0;
        MOVS     R4,#+0
//   90 
//   91     //ADNS3080_ImageTest(DEBUG_UART);
//   92     
//   93     //////////////////////////////////////////////////////////////////////////////////////
//   94     GetSystemSettingOnSwitch();
        BL       GetSystemSettingOnSwitch
//   95 
//   96     if(!CheckLastSystemSettingTheSame())
        BL       CheckLastSystemSettingTheSame
        CMP      R0,#+0
        BNE.N    ??Test_0
//   97     {
//   98         g_sQuadSystemFlag.switch_setting_unvalid = 1;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
//   99     }
//  100 
//  101     if(g_sQuadSystemFlag.switch_setting_unvalid)
??Test_0:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??Test_1
//  102     {
//  103         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  104         while(!!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
??Test_2:
        MOVS     R0,#+128
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??Test_3
//  105         {
//  106             SetLightsOnOff(ReadSwitches(0x7F));
        MOVS     R0,#+127
        BL       ReadSwitches
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetLightsOnOff
        B.N      ??Test_2
//  107         }
//  108         while(!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
??Test_3:
        MOVS     R0,#+128
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_4
//  109         {
//  110             SetLightsOnOff(ReadSwitches(0x7F));
        MOVS     R0,#+127
        BL       ReadSwitches
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetLightsOnOff
        B.N      ??Test_3
//  111         }
//  112         SetBuzzerMode(0);
??Test_4:
        MOVS     R0,#+0
        BL       SetBuzzerMode
        B.N      ??Test_5
//  113     }
//  114     else
//  115     {
//  116         SetBuzzerMode(4);
??Test_1:
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  117         while(!ReadSwitches(WAITTING_COMFIRM_SYSTEM_SETTING_SWITCH_BIT_MASK))
??Test_6:
        MOVS     R0,#+128
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_7
//  118         {
//  119             SetLightsOnOff(ReadSwitches(0x7F));
        MOVS     R0,#+127
        BL       ReadSwitches
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SetLightsOnOff
        B.N      ??Test_6
//  120         }
//  121         SetBuzzerMode(0);
??Test_7:
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  122         GetSystemSettingOnSwitch(); 
        BL       GetSystemSettingOnSwitch
//  123     }
//  124 
//  125     SetLightsOnOff(0x00);
??Test_5:
        MOVS     R0,#+0
        BL       SetLightsOnOff
//  126 
//  127     GetSystemSettingOnSwitch(); 
        BL       GetSystemSettingOnSwitch
//  128     g_sQuadSystemFlag.switch_setting_unvalid = 0;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  129 
//  130     if(!SaveThisSystemSettingToFlash())
        BL       SaveThisSystemSettingToFlash
        CMP      R0,#+0
        BNE.N    ??Test_8
//  131     {
//  132         g_sQuadSystemFlag.save_system_setting_error = 1;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??Test_9
//  133     }
//  134     else
//  135     {
//  136         g_sQuadSystemFlag.save_system_setting_error = 0;
??Test_8:
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  137     }
//  138 
//  139     //////////////////////////////////////////////////////////////////////////////
//  140     
//  141     if(!InitQuadParam())
??Test_9:
        BL       InitQuadParam
        CMP      R0,#+0
        BNE.N    ??Test_10
//  142     {
//  143         g_sQuadSystemFlag.flash_param_error = 1;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  144     }    
//  145     
//  146     if(g_sQuadSystemFlag.flash_param_error && g_sQuadSystemFlag.sys_setting.save_default_param_to_flash)
??Test_10:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Test_11
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??Test_11
//  147     {
//  148         SetLightsOnOff(WAITTING_SAVE_DEFAULT_PARAM_TO_FLASH_LED_HINT);
        MOVS     R0,#+79
        BL       SetLightsOnOff
//  149         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  150         while(ReadSwitches(SAVE_DEFAULT_PARAM_TO_FLASH_SWITCH_BIT_MASK));
??Test_12:
        MOVS     R0,#+64
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_12
//  151         SaveQuadParamToFlash(*GetQuadParamInRam());
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       SaveQuadParamToFlash
//  152         SetBuzzerMode(0);        
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  153     }
//  154    
//  155     if(g_sQuadSystemFlag.sys_setting.acc_getoffset && g_sQuadSystemFlag.sys_setting.gyr_getoffset)
??Test_11:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BEQ.N    ??Test_13
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??Test_13
//  156     {
//  157         SetLightsOnOff(WAITTING_START_GET_ACC_GYR_OFFSET_OPE_LED_HINT);
        MOVS     R0,#+243
        BL       SetLightsOnOff
//  158         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  159         while(ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK) || ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK));
??Test_14:
        MOVS     R0,#+2
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_14
        MOVS     R0,#+1
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_14
//  160         GetAccGyrOffsetOpe();
        BL       GetAccGyrOffsetOpe
//  161         for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Test_15:
        CMP      R5,#+3
        BGE.N    ??Test_16
//  162         {
//  163             GetQuadParamInRam()->acc_offset[i] = g_i16AccOffset[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+1
        LDR.W    R1,??DataTable1_9
        LDRH     R1,[R1, R5, LSL #+1]
        STRH     R1,[R0, #+1]
//  164             GetQuadParamInRam()->gyr_offset[i] = g_i16GyrOffset[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+1
        LDR.W    R1,??DataTable1_10
        LDRH     R1,[R1, R5, LSL #+1]
        STRH     R1,[R0, #+19]
//  165         }
        ADDS     R5,R5,#+1
        B.N      ??Test_15
//  166         SaveQuadParamToFlash(*GetQuadParamInRam());
??Test_16:
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       SaveQuadParamToFlash
//  167         SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
        B.N      ??Test_17
//  168     }
//  169     else if(g_sQuadSystemFlag.sys_setting.acc_getoffset)
??Test_13:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BEQ.N    ??Test_18
//  170     {
//  171         SetLightsOnOff(WAITTING_START_GET_ACC_OFFSET_OPE_LED_HINT);
        MOVS     R0,#+242
        BL       SetLightsOnOff
//  172         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  173         while(ReadSwitches(GET_ACC_OFFSET_SWITCH_BIT_MASK));
??Test_19:
        MOVS     R0,#+2
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_19
//  174         GetAccOffsetOpe();
        BL       GetAccOffsetOpe
//  175         for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Test_20:
        CMP      R5,#+3
        BGE.N    ??Test_21
//  176         {
//  177             GetQuadParamInRam()->acc_offset[i] = g_i16AccOffset[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+1
        LDR.W    R1,??DataTable1_9
        LDRH     R1,[R1, R5, LSL #+1]
        STRH     R1,[R0, #+1]
//  178         }        
        ADDS     R5,R5,#+1
        B.N      ??Test_20
//  179         SaveQuadParamToFlash(*GetQuadParamInRam());
??Test_21:
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       SaveQuadParamToFlash
//  180         SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
        B.N      ??Test_17
//  181     }
//  182     else if(g_sQuadSystemFlag.sys_setting.gyr_getoffset)
??Test_18:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??Test_17
//  183     {
//  184         SetLightsOnOff(WAITTING_START_GET_GYR_OFFSET_OPE_LED_HINT);
        MOVS     R0,#+241
        BL       SetLightsOnOff
//  185         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  186         while(ReadSwitches(GET_GYR_OFFSET_SWITCH_BIT_MASK));
??Test_22:
        MOVS     R0,#+1
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_22
//  187         GetGyrOffsetOpe();
        BL       GetGyrOffsetOpe
//  188         for(i = 0; i < 3; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Test_23:
        CMP      R5,#+3
        BGE.N    ??Test_24
//  189         {
//  190             GetQuadParamInRam()->gyr_offset[i] = g_i16GyrOffset[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+1
        LDR.W    R1,??DataTable1_10
        LDRH     R1,[R1, R5, LSL #+1]
        STRH     R1,[R0, #+19]
//  191         }
        ADDS     R5,R5,#+1
        B.N      ??Test_23
//  192         SaveQuadParamToFlash(*GetQuadParamInRam());
??Test_24:
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       SaveQuadParamToFlash
//  193         SetBuzzerMode(0);        
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  194     }
//  195     
//  196     if(g_sQuadSystemFlag.sys_setting.WFLY_RC_getoffset)
??Test_17:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??Test_25
//  197     {
//  198         SetLightsOnOff(WAITTING_START_GET_WFLY_RC_OFFSET_LED_HINT);
        MOVS     R0,#+244
        BL       SetLightsOnOff
//  199         SetBuzzerMode(4);
        MOVS     R0,#+4
        BL       SetBuzzerMode
//  200         while(ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
??Test_26:
        MOVS     R0,#+4
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_26
//  201         WFLY_RC_GetOffsetOpe();
        BL       WFLY_RC_GetOffsetOpe
//  202         while(!ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
??Test_27:
        MOVS     R0,#+4
        BL       ReadSwitches
        CMP      R0,#+0
        BEQ.N    ??Test_27
//  203         SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//  204         delayms(400);
        MOV      R0,#+400
        BL       delayms
//  205         while(ReadSwitches(GET_WFLY_RC_OFFSET_SWITCH_BIT_MASK));
??Test_28:
        MOVS     R0,#+4
        BL       ReadSwitches
        CMP      R0,#+0
        BNE.N    ??Test_28
//  206         WFLY_RC_GetMaxRangeOpe();
        BL       WFLY_RC_GetMaxRangeOpe
//  207         for(i = 0; i < 4; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Test_29:
        CMP      R5,#+4
        BGE.N    ??Test_30
//  208         {
//  209             GetQuadParamInRam()->WFLY_RC_offset[i] = g_u32WFLY_RC_offset[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+2
        LDR.W    R1,??DataTable1_11
        LDR      R1,[R1, R5, LSL #+2]
        STR      R1,[R0, #+55]
//  210             GetQuadParamInRam()->WFLY_RC_max_range[i] = g_u32WFLY_RC_max_range[i];
        BL       GetQuadParamInRam
        ADDS     R0,R0,R5, LSL #+2
        LDR.W    R1,??DataTable1_12
        LDR      R1,[R1, R5, LSL #+2]
        STR      R1,[R0, #+71]
//  211         }     
        ADDS     R5,R5,#+1
        B.N      ??Test_29
//  212         SaveQuadParamToFlash(*GetQuadParamInRam());
??Test_30:
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       SaveQuadParamToFlash
//  213         SetBuzzerMode(0);
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  214     }
//  215 
//  216     ApplyQuadParam(*GetQuadParamInRam());
??Test_25:
        BL       GetQuadParamInRam
        MOVS     R1,R0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+157
        BL       __aeabi_memcpy
        POP      {R0-R3}
        BL       ApplyQuadParam
//  217 
//  218     SetLightsOnOff(0x00);
        MOVS     R0,#+0
        BL       SetLightsOnOff
//  219 
//  220     ///////////////////////////////////////////////////////////////////////////////////////
//  221 
//  222     InitUartQueue(GPS_UART, 128);
        MOVS     R1,#+128
        LDR.W    R0,??DataTable1_13  ;; 0x400eb000
        BL       InitUartQueue
//  223     InitUartQueue(COMMUNICATE_UART, 128);
        MOVS     R1,#+128
        LDR.W    R0,??DataTable1_14  ;; 0x4006c000
        BL       InitUartQueue
//  224     InitUartQueue(DEBUG_UART, 128);
        MOVS     R1,#+128
        LDR.W    R0,??DataTable1_15  ;; 0x400ea000
        BL       InitUartQueue
//  225     InitUartRecvQueue(GPS_UART, 64);
        MOVS     R1,#+64
        LDR.W    R0,??DataTable1_13  ;; 0x400eb000
        BL       InitUartRecvQueue
//  226     miniAHRS_InitUartQueue();
        BL       miniAHRS_InitUartQueue
//  227 
//  228     MPU6050_InitRawData();
        BL       MPU6050_InitRawData
//  229     if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??Test_31
//  230     {
//  231         AK8975C_InitRawData();
        BL       AK8975C_InitRawData
//  232     }
//  233     AttitudeInit();    
??Test_31:
        BL       AttitudeInit
//  234     InitAltitude();
        BL       InitAltitude
//  235     InitControl();
        BL       InitControl
//  236 
//  237     if(g_sQuadSystemFlag.flash_param_error)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Test_32
//  238     {
//  239         TurnOnLights(FLASH_PARAM_ERROR_LED_LIGHT_BIT_MASK);
        MOVS     R0,#+32
        BL       TurnOnLights
//  240     } 
//  241 
//  242     float yaw, pitch, roll; 
//  243     g_u32ProgramPeriodTimerCnt = 0;
??Test_32:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  244     while(1)
//  245     {
//  246         if(g_sQuadSystemFlag.flash_param_error)
??Test_33:
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Test_34
//  247         {
//  248             TurnOnLights(FLASH_PARAM_ERROR_LED_LIGHT_BIT_MASK);
        MOVS     R0,#+32
        BL       TurnOnLights
//  249         }
//  250         if(g_u32ProgramPeriodTimerCnt >= PROGRAM_PERIOD_MS)
??Test_34:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BCC.N    ??Test_35
//  251         {
//  252             TurnOnLights(PROGRAM_RUNNING_OVER_TIME_LIGHT_BIT_MASK);
        MOVS     R0,#+64
        BL       TurnOnLights
//  253         }
//  254         else
//  255         {
//  256             //TurnOffLights(PROGRAM_RUNNING_OVER_TIME_LIGHT_BIT_MASK);
//  257         }        
//  258         if(g_u32ProgramPeriodTimerCnt > max_program_period_time)
??Test_35:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R4,R0
        BCS.N    ??Test_36
//  259         {
//  260             max_program_period_time = g_u32ProgramPeriodTimerCnt;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//  261         }               
//  262         while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
??Test_36:
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+4
        BCC.N    ??Test_36
//  263         {
//  264 
//  265         }
//  266         g_u32ProgramPeriodTimerCnt = 0;
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  267 
//  268         if(program_running_count < PROGRAM_RUNNING_PERIOD_MS / PROGRAM_PERIOD_MS)
        CMP      R7,#+62
        BGE.N    ??Test_37
//  269         {
//  270             program_running_count ++;
        ADDS     R7,R7,#+1
        B.N      ??Test_38
//  271         }
//  272         else
//  273         {
//  274             ToggleLights(PROGRAM_RUNNING_LED_LIGHT_BIT_MASK);
??Test_37:
        MOVS     R0,#+128
        BL       ToggleLights
//  275             program_running_count = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  276         }
//  277         
//  278         TriggerBatteryADC();
??Test_38:
        BL       TriggerBatteryADC
//  279         MS5611_RefreshData();
        BL       MS5611_RefreshData
//  280         MPU6050_RefreshRawData(); 
        BL       MPU6050_RefreshRawData
//  281         if(g_sQuadSystemFlag.sys_setting.use_ak8975c)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??Test_39
//  282         {
//  283             AK8975C_RefreshRawData();
        BL       AK8975C_RefreshRawData
//  284         }
//  285 //        Flow_RefreshRawData();
//  286         RefreshAttitude();
??Test_39:
        BL       RefreshAttitude
//  287         ADNS3080_RefreshRawData();
        BL       ADNS3080_RefreshRawData
//  288         ADNS3080_IntegratePixel(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y);
        BL       ADNS3080_GetRawData
        MOV      R8,R0
        BL       ADNS3080_GetRawData
        LDRSB    R1,[R8, #+2]
        LDRSB    R0,[R0, #+1]
        BL       ADNS3080_IntegratePixel
//  289         //ADNS3080_IntegratePosition(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, ((float)g_sonar_measure_distance_mm / 1000));
//  290         float gyr[3]; 
//  291         MPU6050_GetCalibratedGyr(gyr);
        ADD      R0,SP,#+28
        BL       MPU6050_GetCalibratedGyr
//  292         ADNS3080_IntergratePositionWithGyrAttitude(ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, gyr[0], gyr[1], GetEulerAttitude()->yaw/57.2957795f, ((float)g_sonar_measure_distance_mm / 1000));
        BL       GetEulerAttitude
        MOV      R8,R0
        BL       ADNS3080_GetRawData
        MOV      R9,R0
        BL       ADNS3080_GetRawData
        MOV      R10,R0
        LDR.W    R0,??DataTable1_16
        LDRH     R0,[R0, #+0]
        BL       __aeabi_ui2f
        LDR.W    R1,??DataTable1_17  ;; 0x447a0000
        BL       __aeabi_fdiv
        STR      R0,[SP, #+4]
        LDR      R0,[R8, #+0]
        LDR.W    R1,??DataTable1_18  ;; 0x42652ee1
        BL       __aeabi_fdiv
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+32]
        LDR      R2,[SP, #+28]
        LDRSB    R1,[R9, #+2]
        LDRSB    R0,[R10, #+1]
        BL       ADNS3080_IntergratePositionWithGyrAttitude
//  293        
//  294         yaw = GetEulerAttitude()->yaw * 10; 
        BL       GetEulerAttitude
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        STR      R0,[SP, #+24]
//  295         pitch = GetEulerAttitude()->pitch * 10; 
        BL       GetEulerAttitude
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        STR      R0,[SP, #+20]
//  296         roll = GetEulerAttitude()->roll * 10;
        BL       GetEulerAttitude
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        MOVS     R6,R0
//  297 
//  298         /*float ypr[3];
//  299         if(((int)fabs(GetEulerAttitude()->pitch) >= 30) || ((int)fabs(GetEulerAttitude()->roll) >= 30) || (g_sQuadSystemFlag.incline_halt_flag == 1))
//  300         {
//  301             SetBuzzerMode(1);
//  302             g_sQuadSystemFlag.incline_halt_flag = 1;
//  303             for(i = 0; i < 3; i++)
//  304             {
//  305                 ypr[i] = 0;
//  306             }  
//  307             GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
//  308             GetControlParameter()->lock_attitude_struct.baseThrottle = 0;
//  309         }
//  310         else if((g_u32LostSignalTimerCnt > LOST_SIGNAL_LIMIT_TIME_MS) && (g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0))
//  311         {
//  312             SetBuzzerMode(2);
//  313             for(i = 0; i < 3; i++)
//  314             {
//  315                 ypr[i] = 0;
//  316             }
//  317             GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);    
//  318             GetControlParameter()->lock_attitude_struct.baseThrottle = 0.4;            
//  319         }
//  320         else
//  321         {
//  322             SetBuzzerMode(0);
//  323             if(g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0)
//  324             {
//  325                 ypr[0] = g_f32DebugYaw;
//  326                 ypr[1] = g_f32DebugPitch;
//  327                 ypr[2] = g_f32DebugRoll;  
//  328                 GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);
//  329                 GetControlParameter()->lock_attitude_struct.baseThrottle = g_f32DebugThrottle; 
//  330             }
//  331             else
//  332             {
//  333                 ypr[0] = WFLY_RC_GetYawRatio() * 10;
//  334                 ypr[1] = WFLY_RC_GetPitchRatio() * 10;
//  335                 ypr[2] = WFLY_RC_GetRollRatio() * 10;  
//  336                 if(g_sQuadSystemFlag.sys_setting.lock_height)
//  337                 {
//  338                     GetControlParameter()->lock_attitude_struct.baseThrottle = CtrlGetLockTargetHeightThrottle(0);
//  339                 }
//  340                 else
//  341                 {
//  342                     GetControlParameter()->lock_attitude_struct.baseThrottle = WFLY_RC_GetThrottleRatio() * 0.60; 
//  343                 }
//  344                 GetControlParameter()->lock_attitude_struct.targetAttitude = quaternion_converYawPitchRollToQuaternion(ypr);                
//  345             }
//  346         }
//  347         CtrlLockTargetAttitude();*/
//  348 
//  349         if(g_sQuadSystemFlag.sys_setting.use_WFLY_RC == 0)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BNE.N    ??Test_40
//  350         {
//  351             if((g_u32LostSignalTimerCnt > LOST_SIGNAL_LIMIT_TIME_MS) && (g_u32LostSignalTimerCnt < (LOST_SIGNAL_LIMIT_TIME_MS + LANDING_TIME_MS)))
        LDR.W    R0,??DataTable1_19
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BCC.N    ??Test_41
        LDR.W    R0,??DataTable1_19
        LDR      R0,[R0, #+0]
        MOVW     R1,#+4500
        CMP      R0,R1
        BCS.N    ??Test_41
//  352             {
//  353                 SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//  354                 g_sQuadSystemFlag.lost_signal = 1;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
//  355                 CtrlSetTargetEulerAttitude(0, 0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       CtrlSetTargetEulerAttitude
//  356                 CtrlSetBaseThrottle(gc_f32LandingThrottle);
        LDR.W    R0,??DataTable1_20
        LDR      R0,[R0, #+0]
        BL       CtrlSetBaseThrottle
//  357                 CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
        MOVS     R0,#+1
        BL       CtrlSetMode
        B.N      ??Test_42
//  358             }
//  359             else if(g_u32LostSignalTimerCnt > (LOST_SIGNAL_LIMIT_TIME_MS + LANDING_TIME_MS))
??Test_41:
        LDR.W    R0,??DataTable1_19
        LDR      R0,[R0, #+0]
        MOVW     R1,#+4501
        CMP      R0,R1
        BCC.N    ??Test_43
//  360             {
//  361                 SetBuzzerMode(2);
        MOVS     R0,#+2
        BL       SetBuzzerMode
//  362                 g_sQuadSystemFlag.lost_signal = 1;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
//  363                 GetControlParameter()->mode = CTRL_MODE_HALT;
        BL       GetControlParameter
        MOVS     R1,#+0
        STRB     R1,[R0, #+56]
        B.N      ??Test_42
//  364             }
//  365             else
//  366             {
//  367                 SetBuzzerMode(0);
??Test_43:
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  368                 g_sQuadSystemFlag.lost_signal = 0;
        LDR.W    R0,??DataTable1_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  369                 CtrlSetTargetEulerAttitude(g_f32DebugYaw, g_f32DebugPitch, g_f32DebugRoll); 
        LDR.W    R0,??DataTable1_21
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable1_22
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable1_23
        LDR      R0,[R0, #+0]
        BL       CtrlSetTargetEulerAttitude
//  370                 if(g_sQuadSystemFlag.sys_setting.lock_height)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??Test_44
//  371                 {
//  372                     CtrlSetTargetHeight(g_f32DebugThrottle);
        LDR.W    R0,??DataTable1_24
        LDR      R0,[R0, #+0]
        BL       CtrlSetTargetHeight
//  373                     CtrlSetMode(CTRL_MODE_LOCK_HEIGHT_ATTITUDE);
        MOVS     R0,#+3
        BL       CtrlSetMode
        B.N      ??Test_42
//  374                 }
//  375                 else
//  376                 {
//  377                     CtrlSetBaseThrottle(g_f32DebugThrottle);
??Test_44:
        LDR.W    R0,??DataTable1_24
        LDR      R0,[R0, #+0]
        BL       CtrlSetBaseThrottle
//  378                     CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
        MOVS     R0,#+1
        BL       CtrlSetMode
        B.N      ??Test_42
//  379                 }
//  380             }
//  381         }
//  382         else
//  383         {
//  384             SetBuzzerMode(0);
??Test_40:
        MOVS     R0,#+0
        BL       SetBuzzerMode
//  385             static float s_f32LastYawAngle = 0;
//  386             float target_yaw_angle, target_pitch_angle, target_roll_angle;
//  387 
//  388             target_yaw_angle = WFLY_RC_GetYawRatio() * gc_f32MaxRCYawAngle;
        BL       WFLY_RC_GetYawRatio
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_25
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R8,R0
//  389             target_pitch_angle = WFLY_RC_GetPitchRatio() * gc_f32MaxRCPitchAngle;
        BL       WFLY_RC_GetPitchRatio
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_26
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R9,R0
//  390             target_roll_angle = WFLY_RC_GetRollRatio() * gc_f32MaxRCRollAngle;
        BL       WFLY_RC_GetRollRatio
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        MOV      R10,R0
//  391             if((WFLY_RC_GetYawRatio() < 0.1) && (WFLY_RC_GetYawRatio() > -0.1))
        BL       WFLY_RC_GetYawRatio
        LDR.W    R1,??DataTable1_28  ;; 0x3dcccccd
        BL       __aeabi_cfcmple
        BCS.N    ??Test_45
        BL       WFLY_RC_GetYawRatio
        LDR.W    R1,??DataTable1_29  ;; 0xbdcccccc
        BL       __aeabi_cfrcmple
        BHI.N    ??Test_45
//  392             {
//  393                 target_yaw_angle = s_f32LastYawAngle;
        LDR.W    R0,??DataTable1_30
        LDR      R0,[R0, #+0]
        MOV      R8,R0
        B.N      ??Test_46
//  394             }
//  395             else
//  396             {
//  397                 target_yaw_angle = target_yaw_angle + s_f32LastYawAngle;
??Test_45:
        LDR.W    R0,??DataTable1_30
        LDR      R0,[R0, #+0]
        MOV      R1,R8
        BL       __aeabi_fadd
        MOV      R8,R0
//  398                 s_f32LastYawAngle = GetEulerAttitude()->yaw;
        BL       GetEulerAttitude
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_30
        STR      R0,[R1, #+0]
//  399             }
//  400             CtrlSetTargetEulerAttitude(target_yaw_angle, target_pitch_angle, target_roll_angle); 
??Test_46:
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R8
        BL       CtrlSetTargetEulerAttitude
//  401 
//  402             if(g_sQuadSystemFlag.sys_setting.lock_height)
        LDR.W    R0,??DataTable1_8
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??Test_47
//  403             {
//  404                 if((WFLY_RC_GetThrottleRatio() * gc_f32MaxRCHeight) < gc_f32RCThrottleDeadZone)
        BL       WFLY_RC_GetThrottleRatio
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        LDR.W    R1,??DataTable1_32
        LDR      R1,[R1, #+0]
        BL       __aeabi_cfcmple
        BCS.N    ??Test_48
//  405                 {
//  406                     CtrlSetBaseThrottle(0);
        MOVS     R0,#+0
        BL       CtrlSetBaseThrottle
//  407                     CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
        MOVS     R0,#+1
        BL       CtrlSetMode
        B.N      ??Test_49
//  408                 }
//  409                 else
//  410                 {
//  411                     CtrlSetTargetHeight((WFLY_RC_GetThrottleRatio() - gc_f32RCThrottleDeadZone) * (gc_f32MaxRCHeight / (1 - gc_f32RCThrottleDeadZone)));
??Test_48:
        BL       WFLY_RC_GetThrottleRatio
        LDR.W    R1,??DataTable1_32
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOV      R11,R0
        MOVS     R0,#+1065353216
        LDR.W    R1,??DataTable1_32
        LDR      R1,[R1, #+0]
        BL       __aeabi_fsub
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_fdiv
        MOV      R1,R11
        BL       __aeabi_fmul
        BL       CtrlSetTargetHeight
//  412                     CtrlSetMode(CTRL_MODE_LOCK_HEIGHT_ATTITUDE);
        MOVS     R0,#+3
        BL       CtrlSetMode
        B.N      ??Test_49
//  413                 }
//  414             }
//  415             else
//  416             {
//  417                 CtrlSetBaseThrottle(WFLY_RC_GetThrottleRatio() * gc_f32MaxRCThrottle);
??Test_47:
        BL       WFLY_RC_GetThrottleRatio
        MOVS     R1,R0
        LDR.W    R0,??DataTable1_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_fmul
        BL       CtrlSetBaseThrottle
//  418                 CtrlSetMode(CTRL_MODE_LOCK_ATTITUDE);
        MOVS     R0,#+1
        BL       CtrlSetMode
//  419             }
//  420 
//  421             if(WFLY_RC_GetCH5OnOff() == 0)
??Test_49:
        BL       WFLY_RC_GetCH5OnOff
        CMP      R0,#+0
        BNE.N    ??Test_50
//  422             {
//  423                 CtrlSetModeWithMask(CTRL_MODE_MASK_POSITION);
        MOVS     R0,#+4
        BL       CtrlSetModeWithMask
        B.N      ??Test_42
//  424             }
//  425             else
//  426             {
//  427                 CtrlSetTargetPosition(g_f32ADNS3080PixelPosition[0], g_f32ADNS3080PixelPosition[1]);
??Test_50:
        LDR.W    R0,??DataTable1_34
        LDR      R1,[R0, #+4]
        LDR.W    R0,??DataTable1_34
        LDR      R0,[R0, #+0]
        BL       CtrlSetTargetPosition
//  428                 CtrlCancelModeWithMask(CTRL_MODE_MASK_POSITION);
        MOVS     R0,#+4
        BL       CtrlCancelModeWithMask
//  429             }
//  430         }
//  431         CtrlEvent();
??Test_42:
        BL       CtrlEvent
//  432         
//  433         //CtrlOutputSameThrottle(WFLY_RC_GetThrottleRatio());
//  434 
//  435         //PWMOutOneESC(0, g_u32DebugPWM[0]);
//  436         //PWMOutOneESC(1, g_u32DebugPWM[1]);
//  437         //PWMOutOneESC(2, g_u32DebugPWM[2]);
//  438         //PWMOutOneESC(3, g_u32DebugPWM[3]);
//  439         
//  440 //        PWMOutOneESC_1000Scale(0, g_u32DebugPWM[0] * 10);
//  441 //        PWMOutOneESC_1000Scale(1, g_u32DebugPWM[1] * 10);
//  442 //        PWMOutOneESC_1000Scale(2, g_u32DebugPWM[2] * 10);
//  443 //        PWMOutOneESC_1000Scale(3, g_u32DebugPWM[3] * 10);
//  444 
//  445         if(IsUartQueueEmpty(GPS_UART))
        LDR.W    R0,??DataTable1_13  ;; 0x400eb000
        BL       IsUartQueueEmpty
        CMP      R0,#+0
        BEQ.N    ??Test_51
//  446         {
//  447             sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetControlParameter()->throttle[0]), (int)(100 * GetControlParameter()->throttle[1]), (int)(100 * GetControlParameter()->throttle[2]), (int)(100 * GetControlParameter()->throttle[3]));
        BL       GetControlParameter
        MOV      R9,R0
        BL       GetControlParameter
        MOV      R10,R0
        BL       GetControlParameter
        MOV      R11,R0
        BL       GetControlParameter
        MOV      R8,R0
        LDR      R0,[R9, #+44]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+4]
        LDR      R0,[R10, #+40]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+0]
        LDR      R0,[R11, #+36]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R9,R3
        LDR      R0,[R8, #+32]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R9
        LDR.W    R1,??DataTable1_36
        ADD      R0,SP,#+144
        BL       sprintf
//  448             //PutStringUartQueue(GPS_UART, str_buff);
//  449             sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetAttitude()->w), (int)(100 * GetAttitude()->x), (int)(100 * GetAttitude()->y), (int)(100 * GetAttitude()->z));
        BL       GetAttitude
        MOV      R9,R0
        BL       GetAttitude
        MOV      R10,R0
        BL       GetAttitude
        MOV      R11,R0
        BL       GetAttitude
        MOV      R8,R0
        LDR      R0,[R9, #+12]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+4]
        LDR      R0,[R10, #+8]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+0]
        LDR      R0,[R11, #+4]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R9,R3
        LDR      R0,[R8, #+0]
        LDR.W    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R9
        LDR.W    R1,??DataTable1_36
        ADD      R0,SP,#+144
        BL       sprintf
//  450             //PutStringUartQueue(GPS_UART, str_buff);
//  451             sprintf(str_buff, "\n\r");
        ADR.N    R1,??DataTable1  ;; 0x0A, 0x0D, 0x00, 0x00
        ADD      R0,SP,#+144
        BL       sprintf
//  452             //PutStringUartQueue(GPS_UART, str_buff);
//  453         }
//  454 
//  455 #ifdef MINIAHRS_CLIENT_USE
//  456         if(!miniAHRS_IsUartQueueEmpty())
??Test_51:
        BL       miniAHRS_IsUartQueueEmpty
        CMP      R0,#+0
        BNE.N    ??Test_52
//  457         {
//  458             for(i = 0; i < 5; i ++)
        MOVS     R0,#+0
        MOVS     R5,R0
??Test_53:
        CMP      R5,#+5
        BGE.N    ??Test_54
//  459             {
//  460                 if(!miniAHRS_IsUartQueueEmpty())
        BL       miniAHRS_IsUartQueueEmpty
        CMP      R0,#+0
        BNE.N    ??Test_55
//  461                 {
//  462                     miniAHRS_SendOneByte(miniAHRS_PopUartQueue());            
        BL       miniAHRS_PopUartQueue
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       miniAHRS_SendOneByte
//  463                 }
//  464             }
??Test_55:
        ADDS     R5,R5,#+1
        B.N      ??Test_53
//  465         }
//  466         else
//  467         {
//  468            miniAHRS_ReportIMU_Queue((int)(GetEulerAttitude()->yaw * 10), (int)(GetEulerAttitude()->pitch * 10), (int)(GetEulerAttitude()->roll * 10), (int)(g_f32FiltedAltitude * 10), (int)(g_sMS5611DataCopy.Temp * 10), (int)(g_sMS5611DataCopy.Press * 10), 200); 
??Test_52:
        BL       GetEulerAttitude
        MOV      R8,R0
        BL       GetEulerAttitude
        MOV      R9,R0
        BL       GetEulerAttitude
        MOV      R10,R0
        MOVS     R0,#+200
        STR      R0,[SP, #+8]
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable1_4
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable1_37
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        SXTH     R3,R3            ;; SignExt  R3,R3,#+16,#+16
        MOV      R11,R3
        LDR      R0,[R8, #+8]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R11
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOV      R8,R2
        MOV      R11,R3
        LDR      R0,[R9, #+4]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R1,R0
        MOV      R3,R11
        MOV      R2,R8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        MOV      R8,R1
        MOV      R9,R2
        MOV      R11,R3
        LDR      R0,[R10, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x41200000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOV      R3,R11
        MOV      R2,R9
        MOV      R1,R8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       miniAHRS_ReportIMU_Queue
//  469            miniAHRS_ReportMotion_Queue(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
        LDR.N    R0,??DataTable1_6
        LDRSH    R0,[R0, #+4]
        STR      R0,[SP, #+16]
        LDR.N    R0,??DataTable1_6
        LDRSH    R0,[R0, #+2]
        STR      R0,[SP, #+12]
        LDR.N    R0,??DataTable1_6
        LDRSH    R0,[R0, #+0]
        STR      R0,[SP, #+8]
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+12]
        STR      R0,[SP, #+4]
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+10]
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable1_7
        LDRSH    R3,[R0, #+8]
        LDR.N    R0,??DataTable1_7
        LDRSH    R2,[R0, #+4]
        LDR.N    R0,??DataTable1_7
        LDRSH    R1,[R0, #+2]
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+0]
        BL       miniAHRS_ReportMotion_Queue
//  470            //miniAHRS_ReportMotion_Queue((int)(100 * FlowFilterGetCurrent()[0]), (int)(100 * FlowFilterGetCurrent()[1]), 0, (int)(100 * FlowFilterGetCurrent()[2]), (int)(100 * FlowFilterGetCurrent()[3]), 0, g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
//  471         }
//  472 #endif        
//  473 
//  474         /* 发送串口队列的一定数量的数据 */
//  475         SendSeveralUartQueueData(GPS_UART, 5);
??Test_54:
        MOVS     R1,#+5
        LDR.N    R0,??DataTable1_13  ;; 0x400eb000
        BL       SendSeveralUartQueueData
//  476         SendSeveralUartQueueData(DEBUG_UART, 10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       SendSeveralUartQueueData
//  477         SendSeveralUartQueueData(COMMUNICATE_UART, 5);   
        MOVS     R1,#+5
        LDR.N    R0,??DataTable1_14  ;; 0x4006c000
        BL       SendSeveralUartQueueData
//  478         
//  479         if(IsUartQueueEmpty(DEBUG_UART))
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       IsUartQueueEmpty
        CMP      R0,#+0
        BEQ.W    ??Test_33
//  480         {
//  481             float ypr[3] = {0,0,0};
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        STM      R0!,{R1-R3}
        SUBS     R0,R0,#+12
//  482             quaternion_converQuaternionToYawPitchRoll(GetControlParameter()->lock_attitude_struct.targetAttitude, ypr);
        BL       GetControlParameter
        ADD      R1,SP,#+8
        STR      R1,[SP, #+0]
        LDM      R0,{R0-R3}
        BL       quaternion_converQuaternionToYawPitchRoll
//  483             sprintf(str_buff, "%d\t%d\t%d\t", (int)(100 * ypr[0]), (int)(ypr[1] * 100), (int)(ypr[2] * 100));
        LDR      R0,[SP, #+16]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+12]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R8,R3
        LDR      R0,[SP, #+8]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R8
        LDR.N    R1,??DataTable1_38
        ADD      R0,SP,#+144
        BL       sprintf
//  484             PutStringUartQueue(DEBUG_UART, str_buff);
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  485             sprintf(str_buff, "%d\t%d\t", (int)((GetControlData()->lock_position_err[0]) * 1000), (int)((GetControlData()->lock_position_err[1]) * 1000));
        BL       GetControlData
        MOV      R8,R0
        BL       GetControlData
        MOV      R9,R0
        LDR      R0,[R8, #+44]
        LDR.N    R1,??DataTable1_17  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R8,R3
        LDR      R0,[R9, #+40]
        LDR.N    R1,??DataTable1_17  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R8
        LDR.N    R1,??DataTable1_39
        ADD      R0,SP,#+144
        BL       sprintf
//  486             PutStringUartQueue(DEBUG_UART, str_buff);        
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  487             sprintf(str_buff, "%d\t%d\t", (int)(100 * (GetControlData()->lock_position_pid_output[0])), (int)(100 * (GetControlData()->lock_position_pid_output[1])));
        BL       GetControlData
        MOV      R8,R0
        BL       GetControlData
        MOV      R9,R0
        LDR      R0,[R8, #+36]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R8,R3
        LDR      R0,[R9, #+32]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R8
        LDR.N    R1,??DataTable1_39
        ADD      R0,SP,#+144
        BL       sprintf
//  488             PutStringUartQueue(DEBUG_UART, str_buff);              
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  489 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t%d\t", GetPWMData()->ESC_PWM[0], GetPWMData()->ESC_PWM[1], GetPWMData()->ESC_PWM[2], GetPWMData()->ESC_PWM[3], GetPWMData()->ESC_PWM[4], GetPWMData()->ESC_PWM[5]);
//  490 //            PutStringUartQueue(DEBUG_UART, str_buff);
//  491 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t%d\t", g_WFLY_RC_pluse_width_us[0], g_WFLY_RC_pluse_width_us[1], g_WFLY_RC_pluse_width_us[2], g_WFLY_RC_pluse_width_us[3], g_WFLY_RC_pluse_width_us[4], g_WFLY_RC_pluse_width_us[5]);
//  492 //            PutStringUartQueue(DEBUG_UART, str_buff);            
//  493 //            sprintf(str_buff, "%d\t%d\t%d\t", (int)(100 * GetControlData()->pid_output[0]), (int)(100 * GetControlData()->pid_output[1]), (int)(100 * GetControlData()->pid_output[2]));
//  494 //            PutStringUartQueue(DEBUG_UART, str_buff);            
//  495 //            sprintf(str_buff, "%d\t%d\t%d\t", (int)(GetEulerAttitude()->roll * 100), (int)(GetEulerAttitude()->pitch * 100), (int)(GetEulerAttitude()->yaw * 100));
//  496             //PutStringUartQueue(DEBUG_UART, str_buff);               
//  497 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * GetAttitude()->w), (int)(100 * GetAttitude()->x), (int)(100 * GetAttitude()->y), (int)(100 * GetAttitude()->z));
//  498 //            PutStringUartQueue(DEBUG_UART, str_buff);                  
//  499 //            sprintf(str_buff, "%d\t%d\t%d\t", g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2]);
//  500 //            PutStringUartQueue(DEBUG_UART, str_buff); 
//  501 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * WFLY_RC_GetThrottleRatio()), (int)(100 * WFLY_RC_GetYawRatio()), (int)(100 * WFLY_RC_GetPitchRatio()), (int)(100 * WFLY_RC_GetRollRatio()));
//  502 //            PutStringUartQueue(DEBUG_UART, str_buff); 
//  503 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t%d\t", (int)(100 * g_sPx4flowData.pixel_flow_x), (int)(100 * g_sPx4flowData.pixel_flow_y), (int)(100 * g_sPx4flowData.flow_comp_m_x), (int)(100 * g_sPx4flowData.flow_comp_m_y), (int)(100 * g_sPx4flowData.ground_distance));
//  504 //            PutStringUartQueue(DEBUG_UART, str_buff); 
//  505 //            sprintf(str_buff, "%d\t%d\t%d\t%d\t", (int)(100 * FlowFilterGetCurrent()[2] / g_sPx4flowData.ground_distance), (int)(100 * FlowFilterGetCurrent()[3] / g_sPx4flowData.ground_distance), (int)(100 * FlowFilterGetCurrent()[2]), (int)(100 * FlowFilterGetCurrent()[3]));
//  506 //            PutStringUartQueue(DEBUG_UART, str_buff);          
//  507 //            sprintf(str_buff, "%d\t%d\t", (long)(100 * g_f32XPosition), (long)(100 * g_f32YPosition));
//  508 //            PutStringUartQueue(DEBUG_UART, str_buff);                 
//  509             //sprintf(str_buff, "\n\r");
//  510             //PutStringUartQueue(DEBUG_UART, str_buff);          
//  511             //sprintf(str_buff, "%d\t%d\t%d\t", (int)(yaw), (int)(pitch), (int)(roll) );
//  512             //PutStringUartQueue(DEBUG_UART, str_buff);
//  513             sprintf(str_buff, "%d\t%d\t%d\t%d\t", ADNS3080_GetRawData()->delta_x, ADNS3080_GetRawData()->delta_y, g_i32ADNS3080PixelSum[0], g_i32ADNS3080PixelSum[1]);
        BL       ADNS3080_GetRawData
        MOV      R8,R0
        BL       ADNS3080_GetRawData
        LDR.N    R1,??DataTable1_40
        LDR      R1,[R1, #+4]
        STR      R1,[SP, #+4]
        LDR.N    R1,??DataTable1_40
        LDR      R1,[R1, #+0]
        STR      R1,[SP, #+0]
        LDRSB    R3,[R8, #+2]
        LDRSB    R2,[R0, #+1]
        LDR.N    R1,??DataTable1_36
        ADD      R0,SP,#+144
        BL       sprintf
//  514             PutStringUartQueue(DEBUG_UART, str_buff);
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  515             sprintf(str_buff, "%d\t%d\t", (int)(g_f32ADNS3080PixelPosition[0] * 100), (int)(g_f32ADNS3080PixelPosition[1] * 100));
        LDR.N    R0,??DataTable1_34
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R3,R0
        MOV      R8,R3
        LDR.N    R0,??DataTable1_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        MOV      R3,R8
        LDR.N    R1,??DataTable1_39
        ADD      R0,SP,#+144
        BL       sprintf
//  516             PutStringUartQueue(DEBUG_UART, str_buff);
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  517 //            sprintf(str_buff, "%d\t", (int)(WFLY_RC_GetThrottleRatio() * 100));
//  518 //            PutStringUartQueue(DEBUG_UART, str_buff);             
//  519 //            sprintf(str_buff, "%d\t", (int)(g_f32FiltedAltitude * 1000));
//  520 //            PutStringUartQueue(DEBUG_UART, str_buff);
//  521             sprintf(str_buff, "%d\t", max_program_period_time);
        MOVS     R2,R4
        ADR.N    R1,??DataTable1_5  ;; "%d\t"
        ADD      R0,SP,#+144
        BL       sprintf
//  522             PutStringUartQueue(DEBUG_UART, str_buff);
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  523             sprintf(str_buff, "%d\t", g_timer_cnt);
        LDR.N    R0,??DataTable1_41
        LDR      R2,[R0, #+0]
        ADR.N    R1,??DataTable1_5  ;; "%d\t"
        ADD      R0,SP,#+144
        BL       sprintf
//  524             PutStringUartQueue(DEBUG_UART, str_buff);          
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  525             sprintf(str_buff, "%d\t", g_sonar_measure_distance_mm);
        LDR.N    R0,??DataTable1_16
        LDRH     R2,[R0, #+0]
        ADR.N    R1,??DataTable1_5  ;; "%d\t"
        ADD      R0,SP,#+144
        BL       sprintf
//  526             PutStringUartQueue(DEBUG_UART, str_buff);     
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  527 //            sprintf(str_buff, "%d\t", (int)(GetControlParameter()->lock_attitude_struct.targetHeight*1000));
//  528 //            PutStringUartQueue(DEBUG_UART, str_buff);              
//  529 //            sprintf(str_buff, "%d\t", (int)(100 * GetHighByAltitude()));
//  530 //            PutStringUartQueue(DEBUG_UART, str_buff);               
//  531             sprintf(str_buff, "%d\t", (int)(100 * GetControlData()->lock_height_pid_output));
        BL       GetControlData
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable1_35  ;; 0x42c80000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        MOVS     R2,R0
        ADR.N    R1,??DataTable1_5  ;; "%d\t"
        ADD      R0,SP,#+144
        BL       sprintf
//  532             PutStringUartQueue(DEBUG_UART, str_buff); 
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  533 //            sprintf(str_buff, "%d\t", g_ulFlowTime);
//  534 //            PutStringUartQueue(DEBUG_UART, str_buff);                     
//  535             sprintf(str_buff, "\n\r");
        ADR.N    R1,??DataTable1  ;; 0x0A, 0x0D, 0x00, 0x00
        ADD      R0,SP,#+144
        BL       sprintf
//  536             PutStringUartQueue(DEBUG_UART, str_buff);
        ADD      R1,SP,#+144
        LDR.N    R0,??DataTable1_15  ;; 0x400ea000
        BL       PutStringUartQueue
//  537             max_program_period_time = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??Test_33
//  538         }      
//  539     } 
//  540     
//  541     //DestoryMyQueue(UART5_queue);
//  542 
//  543     //int8 recv;
//  544     //uint32 counts = 0;
//  545     //uint32 time_tag[2] = {0,0};
//  546     //int i = 0;
//  547     //uint8 temp = 0x01;
//  548     //uint8 data[4] = {1,2,3,4};
//  549     //uint8 buf[4] = {0,0,0,0};
//  550     //int16 raw_data[7];
//  551 
//  552     //MPU6050_DMP_MultiWriteReg(0x68, 0x63, 4,data);
//  553 
//  554     /*GetAccGyrOffsetOpe();
//  555 
//  556     MPU6050_InitRawData();
//  557     AK8975C_InitRawData();
//  558     AttitudeInit();
//  559 
//  560     float yaw, pitch, roll;
//  561 
//  562     while(1)
//  563     {
//  564         while(g_u32ProgramPeriodTimerCnt < PROGRAM_PERIOD_MS)
//  565         {
//  566 
//  567         }
//  568         g_u32ProgramPeriodTimerCnt = 0;
//  569 
//  570         TriggerBatteryADC();
//  571         MPU6050_RefreshRawData(); 
//  572         AK8975C_RefreshRawData();
//  573         MS5611_RefreshData();
//  574         RefreshAttitude();
//  575         
//  576         yaw = GetEulerAttitude()->yaw * 10; 
//  577         pitch = GetEulerAttitude()->pitch * 10; 
//  578         roll = GetEulerAttitude()->roll * 10;
//  579 
//  580         miniAHRS_ReportIMU((int)yaw, (int)pitch, (int)roll, (int)g_sMS5611Data.High, (int)(g_sMS5611Data.Temp * 10), (int)(g_sMS5611Data.Press * 10), 200);
//  581         miniAHRS_ReportMotion(g_sMPU6050RawData.acc[0], g_sMPU6050RawData.acc[1], g_sMPU6050RawData.acc[2], g_sMPU6050RawData.gyr[0], g_sMPU6050RawData.gyr[1], g_sMPU6050RawData.gyr[2], g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);
//  582         
//  583 //        printf("%d\t%d\t%d\t", (int)(yaw), (int)(pitch), (int)(roll) );
//  584 //        printf("%d\t%d\t%d\t", g_sAK8975CRawData.mag[0], g_sAK8975CRawData.mag[1], g_sAK8975CRawData.mag[2]);        
//  585 //        printf("%d\t%d\t%d\t", (int)g_sMS5611Data.Temp, (int)g_sMS5611Data.Press, (int)g_sMS5611Data.High);
//  586 //        printf("%d\t", g_u32ProgramPeriodTimerCnt);
//  587 //        printf("\n\r");
//  588     }*/
//  589 
//  590 /*    AK8975C_StartMeasure();
//  591     while(1)
//  592     {
//  593         printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_XOUT_H)-g_u32AccOffset[0]);
//  594         printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_YOUT_H)-g_u32AccOffset[1]);
//  595         printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H));
//  596         printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H)-g_u32AccOffset[2]);
//  597         printf("%d\t", MPU6050_GetData(MPU6050_GYRO_XOUT_H)-g_u32GyrOffset[0]);
//  598         printf("%d\t", MPU6050_GetData(MPU6050_GYRO_YOUT_H)-g_u32GyrOffset[1]);
//  599         printf("%d\t", MPU6050_GetData(MPU6050_GYRO_ZOUT_H)-g_u32GyrOffset[2]);
//  600         printf("%d\t", g_timer_cnt);        
//  601         if(i >= 10)
//  602         {
//  603             printf("%d\t", AK8975C_GetData(AK8975C_HXL));
//  604             printf("%d\t", AK8975C_GetData(AK8975C_HYL));
//  605             printf("%d\t", AK8975C_GetData(AK8975C_HZL));          
//  606             AK8975C_StartMeasure();
//  607             i = 0;
//  608         }        
//  609         printf("\n\r");
//  610         if(i < 10)
//  611         {
//  612             DelayWithTimer(1);
//  613         }
//  614         i++;
//  615     }
//  616     */
//  617   
//  618     /* while(1)
//  619     {
//  620         if(counts > 50)
//  621         {
//  622             ToggleLights(ReadSwitches(0xff));
//  623             //ToggleBuzzer();
//  624             counts = 0;
//  625             i++;
//  626             //SetBuzzerMode(i);
//  627             if(i > 4)
//  628             {
//  629               i = 0;
//  630             }
//  631             
//  632         }
//  633         time_tag[0] = g_timer_cnt;
//  634         TriggerBatteryADC();
//  635         MS5611_Read(&MS5611_data_struct, MS5611_D1_OSR_4096);
//  636         time_tag[1] = g_timer_cnt;
//  637         MPU6050_GetRawData(raw_data);
//  638         printf("%d\t", raw_data[0]);
//  639         printf("%d\t", raw_data[1]);
//  640         printf("%d\t", raw_data[2]);
//  641         printf("%d\t", raw_data[3]);
//  642         printf("%d\t", raw_data[4]);
//  643         printf("%d\t", raw_data[5]);
//  644         printf("%d\t", raw_data[6]);
//  645 //        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_XOUT_H)-g_u32AccOffset[0]);
//  646 //        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_YOUT_H)-g_u32AccOffset[1]);
//  647 //        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H));
//  648 //        printf("%d\t", MPU6050_GetData(MPU6050_ACCEL_ZOUT_H)-g_u32AccOffset[2]);
//  649 //        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_XOUT_H)-g_u32GyrOffset[0]);
//  650 //        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_YOUT_H)-g_u32GyrOffset[1]);
//  651 //        printf("%d\t", MPU6050_GetData(MPU6050_GYRO_ZOUT_H)-g_u32GyrOffset[2]);
//  652         AK8975C_StartMeasure();
//  653         AK8975C_WaitMeasureComplete(); 
//  654         DelayWithTimer(0);
//  655         printf("%d\t", AK8975C_GetData(AK8975C_HXL));
//  656         printf("%d\t", AK8975C_GetData(AK8975C_HYL));
//  657         printf("%d\t", AK8975C_GetData(AK8975C_HZL));          
//  658         MPU6050_DMP_MultiReadReg(0x68, 0x63, 4,buf);
//  659         //printf("%d\t", buf[0]);
//  660         //printf("%d\t", buf[1]);
//  661         //printf("%d\t", buf[2]);
//  662         //printf("%d\t", buf[3]);
//  663         printf("%d\t", g_u32AccOffset[0]);
//  664         printf("%d\t", g_u32AccOffset[1]);
//  665         printf("%d\t", g_u32AccOffset[2]);            
//  666         printf("%d\t", g_u32GyrOffset[0]);
//  667         printf("%d\t", g_u32GyrOffset[1]);
//  668         printf("%d\t", g_u32GyrOffset[2]);        
//  669         printf("%d\t", (int)MS5611_data_struct.rPress);
//  670         //printf("%d\t", MPU6050_SingleReadReg(0x63));
//  671         //printf("%d\t", MPU6050_SingleReadReg(0x64));
//  672         //printf("%d\t", MPU6050_SingleReadReg(0x65));
//  673         //printf("%d\t", MPU6050_SingleReadReg(0x66));        
//  674         //printf("%d\t", g_sonar_measure_distance_cm);
//  675         printf("%d\t", g_battery_voltage);
//  676         printf("%d\t%d\t", time_tag[0], time_tag[1]);
//  677         printf("\n\r");
//  678         //printf("Hello Wrold!!!\n\r");
//  679         temp = 0x01;
//  680 //        for(i = 0; i < 8; i++)
//  681 //        {
//  682 //            recv = (!!ReadSwitches(temp)) + '0';
//  683 //            LPLD_UART_PutChar(DEBUG_UART, recv);
//  684 //            temp = temp << 1;
//  685 //        }
//  686 //        LPLD_UART_PutChar(DEBUG_UART, '\n');
//  687 //        LPLD_UART_PutChar(DEBUG_UART, '\r');
//  688 //        //recv = LPLD_UART_GetChar(DEBUG_UART);
//  689 //        //LPLD_UART_PutChar(DEBUG_UART, recv);
//  690 //        PWMOutOneRotor(1, 7);
//  691 //        PWMOutOneRotor(2, 30);
//  692 //        PWMOutOneRotor(3, 7);
//  693 //        PWMOutOneRotor(4, 7);
//  694         counts ++;
//  695     }     */
//  696 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC8      0x0A, 0x0D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     g_u32ProgramPeriodTimerCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     g_u32DebugPWM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     g_sMS5611DataCopy

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC8      "%d\t"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     g_sAK8975CRawData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     g_sMPU6050RawData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     g_sQuadSystemFlag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     g_i16AccOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     g_i16GyrOffset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     g_u32WFLY_RC_offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     g_u32WFLY_RC_max_range

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     g_sonar_measure_distance_mm

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x42652ee1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     g_u32LostSignalTimerCnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     gc_f32LandingThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     g_f32DebugRoll

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     g_f32DebugPitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     g_f32DebugYaw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     g_f32DebugThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     gc_f32MaxRCYawAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
        DC32     gc_f32MaxRCPitchAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_27:
        DC32     gc_f32MaxRCRollAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_28:
        DC32     0x3dcccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_29:
        DC32     0xbdcccccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_30:
        DC32     ??s_f32LastYawAngle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_31:
        DC32     gc_f32MaxRCHeight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_32:
        DC32     gc_f32RCThrottleDeadZone

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_33:
        DC32     gc_f32MaxRCThrottle

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_34:
        DC32     g_f32ADNS3080PixelPosition

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_35:
        DC32     0x42c80000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_36:
        DC32     `?<Constant "%d\\t%d\\t%d\\t%d\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_37:
        DC32     g_f32FiltedAltitude

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_38:
        DC32     `?<Constant "%d\\t%d\\t%d\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_39:
        DC32     `?<Constant "%d\\t%d\\t">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_40:
        DC32     g_i32ADNS3080PixelSum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_41:
        DC32     g_timer_cnt

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??s_f32LastYawAngle:
        DS8 4
//  697 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  698 void InitHW(void)
//  699 {
InitHW:
        PUSH     {R7,LR}
//  700     DisableInterrupts;
        CPSID    I
//  701 
//  702     InitDebugUart();
        BL       InitDebugUart
//  703     InitCommunicateUart();
        BL       InitCommunicateUart
//  704     InitGPSUart();
        BL       InitGPSUart
//  705     InitADNS3080_SPI();                          // SPI的初始化必须在灯的端口初始化之前，不然会出现未知问题… 
        BL       InitADNS3080_SPI
//  706     InitLight();
        BL       InitLight
//  707     InitBuzzer();
        BL       InitBuzzer
//  708     InitSixRotorPWM();
        BL       InitSixRotorPWM
//  709     InitSwitches();
        BL       InitSwitches
//  710     InitMPU9150();
        BL       InitMPU9150
//  711     InitHCSR04();
        BL       InitHCSR04
//  712     InitTimer();
        BL       InitTimer
//  713     InitWFLY_RC();
        BL       InitWFLY_RC
//  714     InitMS5611();
        BL       InitMS5611
//  715     InitBatteryVoltageMeasurement();
        BL       InitBatteryVoltageMeasurement
//  716     InitFlashRom();
        BL       InitFlashRom
//  717     
//  718     EnableInterrupts;    
        CPSIE    I
//  719 }
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%d\\t%d\\t%d\\t%d\\t">`:
        DATA
        DC8 "%d\t%d\t%d\t%d\t"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\015"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H, 0H, 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%d\\t%d\\t%d\\t">`:
        DATA
        DC8 "%d\t%d\t%d\t"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%d\\t%d\\t">`:
        DATA
        DC8 "%d\t%d\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d\t"

        END
// 
//     4 bytes in section .bss
//    56 bytes in section .rodata
// 3 322 bytes in section .text
// 
// 3 322 bytes of CODE  memory
//    56 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
