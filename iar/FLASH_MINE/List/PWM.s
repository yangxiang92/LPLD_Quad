///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:35 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\PWM.c                                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\mod /
//                    ule\PWM.c -D LPLD_K60 -lCN                              /
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
//                    MINE\List\PWM.s                                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PWM

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fmul
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC GetPWMData
        PUBLIC InitPWMData
        PUBLIC InitPWMOutPut
        PUBLIC InitSixRotorPWM
        PUBLIC PWMChangeDuty
        PUBLIC PWMOutOneESC
        PUBLIC PWMOutOneESC_1000Scale
        PUBLIC PWMOutOneRotor
        PUBLIC PWMOutSixESC
        PUBLIC PWMOutSixESC_1000Scale
        PUBLIC PWMOutSixRotor
        PUBLIC ThrottleOutSixESC

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\module\PWM.c
//    1 /****************************************************************************** 
//    2  *       PWM.c ----- PWM related          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  PWM.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/22 18:43:02                                                       *
//   10  ******************************************************************************/
//   11 #include "PWM.h"
//   12 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   13 static PWMData s_sPWMDataStruct;
s_sPWMDataStruct:
        DS8 48
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void InitSixRotorPWM(void)
//   16 {
InitSixRotorPWM:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   17     /* Init FTM */
//   18     FTM_InitTypeDef four_rotor_ftm_init_struct = {0};
        ADD      R0,SP,#+12
        MOVS     R1,#+28
        BL       __aeabi_memclr4
//   19 
//   20     four_rotor_ftm_init_struct.FTM_Ftmx = SIX_ROTOR_FTM_PORT;
        LDR.N    R0,??DataTable7  ;; 0x40038000
        STR      R0,[SP, #+12]
//   21     four_rotor_ftm_init_struct.FTM_Mode = FTM_MODE_PWM;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   22     four_rotor_ftm_init_struct.FTM_PwmFreq = ROTOR_PWM_FREQUENCY;
        MOVS     R0,#+250
        STR      R0,[SP, #+20]
//   23 
//   24     LPLD_FTM_Init(four_rotor_ftm_init_struct);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   25 
//   26     /* Init 4 PWM channel */
//   27     // Rotor One
//   28     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   29                         ROTOR_0_CHANNEL,
//   30                         0,
//   31                         ROTOR_0_PIN,
//   32                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   33     // Rotor Two
//   34     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   35                         ROTOR_1_CHANNEL,
//   36                         0,
//   37                         ROTOR_1_PIN,
//   38                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   39     // Rotor Three
//   40     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   41                         ROTOR_2_CHANNEL,
//   42                         0,
//   43                         ROTOR_2_PIN,
//   44                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   45     // Rotor Four
//   46     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   47                         ROTOR_3_CHANNEL,
//   48                         0,
//   49                         ROTOR_3_PIN,
//   50                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+64
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   51     // Rotor Five
//   52     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   53                         ROTOR_4_CHANNEL,
//   54                         0,
//   55                         ROTOR_4_PIN,
//   56                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+96
        MOVS     R2,#+0
        MOVS     R1,#+4
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   57     // Rotor Six
//   58     LPLD_FTM_PWM_Enable(SIX_ROTOR_FTM_PORT,
//   59                         ROTOR_5_CHANNEL,
//   60                         0,
//   61                         ROTOR_5_PIN,
//   62                         ALIGN_LEFT);
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+97
        MOVS     R2,#+0
        MOVS     R1,#+5
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   63     
//   64     InitPWMData();
        BL       InitPWMData
//   65     InitPWMOutPut();
        BL       InitPWMOutPut
//   66 }
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//   67 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void PWMChangeDuty(uint8 channel, uint32 duty)
//   69 {
PWMChangeDuty:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   70     if(channel >= 6)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??PWMChangeDuty_0
//   71     {
//   72         return;
//   73     }
//   74 
//   75     switch(channel)
??PWMChangeDuty_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWMChangeDuty_2
        CMP      R4,#+2
        BEQ.N    ??PWMChangeDuty_3
        BCC.N    ??PWMChangeDuty_4
        CMP      R4,#+4
        BEQ.N    ??PWMChangeDuty_5
        BCC.N    ??PWMChangeDuty_6
        CMP      R4,#+5
        BEQ.N    ??PWMChangeDuty_7
        B.N      ??PWMChangeDuty_8
//   76     {
//   77         case 0: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   78                                         ROTOR_0_CHANNEL,
//   79                                         duty);
??PWMChangeDuty_2:
        MOVS     R2,R5
        MOVS     R1,#+0
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   80                 break;
        B.N      ??PWMChangeDuty_9
//   81         case 1: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   82                                         ROTOR_1_CHANNEL,
//   83                                         duty);
??PWMChangeDuty_4:
        MOVS     R2,R5
        MOVS     R1,#+1
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   84                 break;
        B.N      ??PWMChangeDuty_9
//   85         case 2: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   86                                         ROTOR_2_CHANNEL,
//   87                                         duty);
??PWMChangeDuty_3:
        MOVS     R2,R5
        MOVS     R1,#+2
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   88                 break;
        B.N      ??PWMChangeDuty_9
//   89         case 3: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   90                                         ROTOR_3_CHANNEL,
//   91                                         duty);
??PWMChangeDuty_6:
        MOVS     R2,R5
        MOVS     R1,#+3
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   92                 break;
        B.N      ??PWMChangeDuty_9
//   93         case 4: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   94                                         ROTOR_4_CHANNEL,
//   95                                         duty);
??PWMChangeDuty_5:
        MOVS     R2,R5
        MOVS     R1,#+4
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   96                 break;
        B.N      ??PWMChangeDuty_9
//   97         case 5: LPLD_FTM_PWM_ChangeDuty(SIX_ROTOR_FTM_PORT, 
//   98                                         ROTOR_5_CHANNEL,
//   99                                         duty);
??PWMChangeDuty_7:
        MOVS     R2,R5
        MOVS     R1,#+5
        LDR.N    R0,??DataTable7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  100                 break;                
        B.N      ??PWMChangeDuty_9
//  101         default:
//  102                 break;
//  103     }
//  104 }
??PWMChangeDuty_8:
??PWMChangeDuty_9:
??PWMChangeDuty_0:
        POP      {R0,R4,R5,PC}    ;; return
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 void InitPWMOutPut(void)
//  107 {
InitPWMOutPut:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  108     int pwm[6] = {0,0,0,0,0,0};
        ADD      R0,SP,#+0
        MOVS     R1,#+24
        BL       __aeabi_memclr4
//  109 
//  110     PWMOutSixRotor(pwm);
        ADD      R0,SP,#+0
        BL       PWMOutSixRotor
//  111 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  112 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  113 void InitPWMData(void)
//  114 {
//  115     int i = 0;
InitPWMData:
        MOVS     R0,#+0
//  116     for(i = 0; i < 6; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??InitPWMData_0:
        CMP      R0,#+6
        BGE.N    ??InitPWMData_1
//  117     {
//  118         s_sPWMDataStruct.real_PWM_duty[i] = 0;
        LDR.N    R1,??DataTable7_1
        MOVS     R2,#+0
        STR      R2,[R1, R0, LSL #+2]
//  119         s_sPWMDataStruct.ESC_PWM[i] = 0;
        LDR.N    R1,??DataTable7_1
        ADDS     R1,R1,R0, LSL #+2
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
//  120     }
        ADDS     R0,R0,#+1
        B.N      ??InitPWMData_0
//  121 }
??InitPWMData_1:
        BX       LR               ;; return
//  122 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 void PWMOutOneRotor(uint8 rotor_num, int PWM)
//  124 {
PWMOutOneRotor:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  125     uint32 duty_out = 0;
        MOVS     R6,#+0
//  126     int abs_PWM = PWM;
        MOVS     R7,R5
//  127 
//  128     if(rotor_num >= 6)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??PWMOutOneRotor_0
//  129     {
//  130         return;
//  131     }
//  132 
//  133     if(PWM < 0)
??PWMOutOneRotor_1:
        CMP      R5,#+0
        BPL.N    ??PWMOutOneRotor_2
//  134     {
//  135         PWM = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  136     }
//  137     if(PWM > 100)
??PWMOutOneRotor_2:
        CMP      R5,#+101
        BLT.N    ??PWMOutOneRotor_3
//  138     {
//  139         PWM = 100;
        MOVS     R0,#+100
        MOVS     R5,R0
//  140     }
//  141 
//  142     if(abs_PWM >= 0)
??PWMOutOneRotor_3:
        CMP      R7,#+0
        BMI.N    ??PWMOutOneRotor_4
//  143     {
//  144         abs_PWM = PWM;
        MOVS     R7,R5
        B.N      ??PWMOutOneRotor_5
//  145     }
//  146     else
//  147     {
//  148         abs_PWM = -PWM;
??PWMOutOneRotor_4:
        RSBS     R0,R5,#+0
        MOVS     R7,R0
//  149     }
//  150 
//  151     duty_out = abs_PWM * 100;
??PWMOutOneRotor_5:
        MOVS     R0,#+100
        MUL      R0,R0,R7
        MOVS     R6,R0
//  152 
//  153     s_sPWMDataStruct.real_PWM_duty[rotor_num] = duty_out;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        STR      R6,[R0, R4, LSL #+2]
//  154     if(duty_out < ESC_MIN_PWM)
        MOVW     R0,#+2500
        CMP      R6,R0
        BCS.N    ??PWMOutOneRotor_6
//  155     {
//  156         s_sPWMDataStruct.ESC_PWM[rotor_num] = 0;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        ADDS     R0,R0,R4, LSL #+2
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        B.N      ??PWMOutOneRotor_7
//  157     }
//  158     else if(duty_out < ESC_MAX_PWM)
??PWMOutOneRotor_6:
        MOVW     R0,#+5000
        CMP      R6,R0
        BCS.N    ??PWMOutOneRotor_8
//  159     {
//  160         s_sPWMDataStruct.ESC_PWM[rotor_num] = ((duty_out - ESC_MIN_PWM) * 100) / (ESC_MAX_PWM - ESC_MIN_PWM);     
        SUBW     R0,R6,#+2500
        MOVS     R1,#+100
        MULS     R0,R1,R0
        MOVW     R1,#+2500
        UDIV     R0,R0,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable7_1
        ADDS     R1,R1,R4, LSL #+2
        STR      R0,[R1, #+24]
        B.N      ??PWMOutOneRotor_7
//  161     }
//  162     else
//  163     {
//  164         s_sPWMDataStruct.ESC_PWM[rotor_num] = 100;
??PWMOutOneRotor_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        ADDS     R0,R0,R4, LSL #+2
        MOVS     R1,#+100
        STR      R1,[R0, #+24]
//  165     }
//  166 
//  167     PWMChangeDuty(rotor_num, duty_out);
??PWMOutOneRotor_7:
        MOVS     R1,R6
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMChangeDuty
//  168 }
??PWMOutOneRotor_0:
        POP      {R0,R4-R7,PC}    ;; return
//  169 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 void PWMOutOneESC(uint8 ESC_num, int PWM)
//  171 {
PWMOutOneESC:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  172     uint32 duty_out = 0;
        MOVS     R6,#+0
//  173     int abs_PWM = PWM;
        MOVS     R7,R5
//  174 
//  175     if(ESC_num >= 6)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??PWMOutOneESC_0
//  176     {
//  177         return ;
//  178     }
//  179 
//  180     if(PWM < 0)
??PWMOutOneESC_1:
        CMP      R5,#+0
        BPL.N    ??PWMOutOneESC_2
//  181     {
//  182         PWM = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  183     }
//  184     if(PWM > 100)
??PWMOutOneESC_2:
        CMP      R5,#+101
        BLT.N    ??PWMOutOneESC_3
//  185     {
//  186         PWM = 100;
        MOVS     R0,#+100
        MOVS     R5,R0
//  187     }
//  188 
//  189     if(PWM >= 0)
??PWMOutOneESC_3:
        CMP      R5,#+0
        BMI.N    ??PWMOutOneESC_4
//  190     {
//  191         abs_PWM = PWM;
        MOVS     R7,R5
        B.N      ??PWMOutOneESC_5
//  192     }
//  193     else
//  194     {
//  195         abs_PWM = -PWM;
??PWMOutOneESC_4:
        RSBS     R0,R5,#+0
        MOVS     R7,R0
//  196     }
//  197 
//  198     duty_out = ((ESC_MAX_PWM - ESC_MIN_PWM) * abs_PWM) / 100 + ESC_MIN_PWM;
??PWMOutOneESC_5:
        MOVW     R0,#+2500
        MUL      R0,R0,R7
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        ADDW     R0,R0,#+2500
        MOVS     R6,R0
//  199 
//  200     s_sPWMDataStruct.ESC_PWM[ESC_num] = abs_PWM;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        ADDS     R0,R0,R4, LSL #+2
        STR      R7,[R0, #+24]
//  201     s_sPWMDataStruct.real_PWM_duty[ESC_num] = duty_out;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        STR      R6,[R0, R4, LSL #+2]
//  202 
//  203     PWMChangeDuty(ESC_num, duty_out);
        MOVS     R1,R6
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMChangeDuty
//  204 }
??PWMOutOneESC_0:
        POP      {R0,R4-R7,PC}    ;; return
//  205 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 void ThrottleOutSixESC(float throttle[6])
//  207 {
ThrottleOutSixESC:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
        MOVS     R4,R0
//  208     int ESC_PWM_output[6];
//  209     int i = 0;
        MOVS     R5,#+0
//  210 
//  211     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??ThrottleOutSixESC_0:
        CMP      R5,#+6
        BGE.N    ??ThrottleOutSixESC_1
//  212     {
//  213 #ifdef PWM_OUT_IN_1000_SCALE
//  214         
//  215         ESC_PWM_output[i] = (int)(throttle[i] * 1000);
        LDR      R1,[R4, R5, LSL #+2]
        LDR.N    R0,??DataTable7_2  ;; 0x447a0000
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        ADD      R1,SP,#+0
        STR      R0,[R1, R5, LSL #+2]
//  216 #else
//  217         ESC_PWM_output[i] = (int)(throttle[i] * 100);
//  218 #endif
//  219     }
        ADDS     R5,R5,#+1
        B.N      ??ThrottleOutSixESC_0
//  220     
//  221 #ifdef PWM_OUT_IN_1000_SCALE    
//  222     PWMOutSixESC_1000Scale(ESC_PWM_output);
??ThrottleOutSixESC_1:
        ADD      R0,SP,#+0
        BL       PWMOutSixESC_1000Scale
//  223 #else
//  224     PWMOutSixESC(ESC_PWM_output);
//  225 #endif
//  226 }
        ADD      SP,SP,#+28
        POP      {R4,R5,PC}       ;; return
//  227 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void PWMOutSixESC(int esc_pwm[6])
//  229 {
PWMOutSixESC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  230     int i = 0;
        MOVS     R5,#+0
//  231 
//  232     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??PWMOutSixESC_0:
        CMP      R5,#+6
        BGE.N    ??PWMOutSixESC_1
//  233     {
//  234         PWMOutOneESC(i, esc_pwm[i]);
        LDR      R1,[R4, R5, LSL #+2]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMOutOneESC
//  235     }
        ADDS     R5,R5,#+1
        B.N      ??PWMOutSixESC_0
//  236 }
??PWMOutSixESC_1:
        POP      {R0,R4,R5,PC}    ;; return
//  237 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  238 void PWMOutSixRotor(int pwm[6])
//  239 {
PWMOutSixRotor:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  240     int i = 0;
        MOVS     R5,#+0
//  241 
//  242     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??PWMOutSixRotor_0:
        CMP      R5,#+6
        BGE.N    ??PWMOutSixRotor_1
//  243     {
//  244         PWMOutOneRotor(i, pwm[i]);
        LDR      R1,[R4, R5, LSL #+2]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMOutOneRotor
//  245     }
        ADDS     R5,R5,#+1
        B.N      ??PWMOutSixRotor_0
//  246 }
??PWMOutSixRotor_1:
        POP      {R0,R4,R5,PC}    ;; return
//  247 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 PWMData * GetPWMData(void)
//  249 {
//  250     return & s_sPWMDataStruct;
GetPWMData:
        LDR.N    R0,??DataTable7_1
        BX       LR               ;; return
//  251 }
//  252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void PWMOutOneESC_1000Scale(uint8 ESC_num, int PWM)
//  254 {
PWMOutOneESC_1000Scale:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  255     uint32 duty_out = 0;
        MOVS     R6,#+0
//  256     int abs_PWM = PWM;
        MOVS     R7,R5
//  257 
//  258     if(ESC_num >= 6)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BCS.N    ??PWMOutOneESC_1000Scale_0
//  259     {
//  260         return ;
//  261     }
//  262 
//  263     if(PWM < 0)
??PWMOutOneESC_1000Scale_1:
        CMP      R5,#+0
        BPL.N    ??PWMOutOneESC_1000Scale_2
//  264     {
//  265         PWM = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  266     }
//  267     if(PWM > 1000)
??PWMOutOneESC_1000Scale_2:
        CMP      R5,#+1000
        BLE.N    ??PWMOutOneESC_1000Scale_3
//  268     {
//  269         PWM = 1000;
        MOV      R0,#+1000
        MOVS     R5,R0
//  270     }
//  271 
//  272     if(PWM >= 0)
??PWMOutOneESC_1000Scale_3:
        CMP      R5,#+0
        BMI.N    ??PWMOutOneESC_1000Scale_4
//  273     {
//  274         abs_PWM = PWM;
        MOVS     R7,R5
        B.N      ??PWMOutOneESC_1000Scale_5
//  275     }
//  276     else
//  277     {
//  278         abs_PWM = -PWM;
??PWMOutOneESC_1000Scale_4:
        RSBS     R0,R5,#+0
        MOVS     R7,R0
//  279     }
//  280 
//  281     duty_out = ((ESC_MAX_PWM - ESC_MIN_PWM) * (int32)abs_PWM) / 1000 + ESC_MIN_PWM;
??PWMOutOneESC_1000Scale_5:
        MOVW     R0,#+2500
        MUL      R0,R0,R7
        MOV      R1,#+1000
        SDIV     R0,R0,R1
        ADDW     R0,R0,#+2500
        MOVS     R6,R0
//  282 
//  283     s_sPWMDataStruct.ESC_PWM[ESC_num] = abs_PWM / 10;
        MOVS     R0,#+10
        SDIV     R0,R7,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable7_1
        ADDS     R1,R1,R4, LSL #+2
        STR      R0,[R1, #+24]
//  284     s_sPWMDataStruct.real_PWM_duty[ESC_num] = duty_out;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable7_1
        STR      R6,[R0, R4, LSL #+2]
//  285 
//  286     PWMChangeDuty(ESC_num, duty_out);
        MOVS     R1,R6
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMChangeDuty
//  287 }
??PWMOutOneESC_1000Scale_0:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     s_sPWMDataStruct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x447a0000
//  288 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 void PWMOutSixESC_1000Scale(int esc_pwm[6])
//  290 {
PWMOutSixESC_1000Scale:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  291     int i = 0;
        MOVS     R5,#+0
//  292 
//  293     for(i = 0; i < 6; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??PWMOutSixESC_1000Scale_0:
        CMP      R5,#+6
        BGE.N    ??PWMOutSixESC_1000Scale_1
//  294     {
//  295         PWMOutOneESC_1000Scale(i, esc_pwm[i]);
        LDR      R1,[R4, R5, LSL #+2]
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       PWMOutOneESC_1000Scale
//  296     }
        ADDS     R5,R5,#+1
        B.N      ??PWMOutSixESC_1000Scale_0
//  297 }
??PWMOutSixESC_1000Scale_1:
        POP      {R0,R4,R5,PC}    ;; return

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
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0, 0, 0, 0, 0

        END
// 
//  48 bytes in section .bss
//  52 bytes in section .rodata
// 822 bytes in section .text
// 
// 822 bytes of CODE  memory
//  52 bytes of CONST memory
//  48 bytes of DATA  memory
//
//Errors: none
//Warnings: none
