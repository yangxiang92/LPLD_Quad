///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    07/Aug/2014  15:34:22 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_PDB.c                                       /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib /
//                    \LPLD\HW\HW_PDB.c -D LPLD_K60 -lCN                      /
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
//                    MINE\List\HW_PDB.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME HW_PDB

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_ui2f
        EXTERN g_bus_clock

        PUBLIC LPLD_PDB_AdcTriggerCfg
        PUBLIC LPLD_PDB_DacTriggerCfg
        PUBLIC LPLD_PDB_Deinit
        PUBLIC LPLD_PDB_Init
        PUBLIC PDB_IRQHandler
        PUBLIC PDB_ISR
        PUBLIC PDB_SE_ISR
        PUBLIC pdb_sc_mults

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V3\source\lib\LPLD\HW\HW_PDB.c
//    1 /**
//    2  * @file HW_PDB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief PDB�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable5  ;; 0xe000e180
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return
//   23 #include "HW_PDB.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 PDB_ISR_CALLBACK PDB_ISR[1];
PDB_ISR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 PDB_ISR_CALLBACK PDB_SE_ISR[1];
PDB_SE_ISR:
        DS8 4
//   28 
//   29 //PDBʱ��Ԥ��Ƶϵ������

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   30 const uint8 pdb_sc_mults[4] = {1, 10, 20, 40};
pdb_sc_mults:
        DATA
        DC8 1, 10, 20, 40
//   31 
//   32 
//   33 /*
//   34  * LPLD_PDB_Init
//   35  * PDBxģ��ͨ�ó�ʼ����������ʼ��PDBx���������ڡ�����ģʽ������Դ���жϵ�����
//   36  * 
//   37  * ����:
//   38  *    pdb_init_struct--PDBx��ʼ���ṹ�壬
//   39  *                        ���嶨���PDB_InitTypeDef
//   40  *
//   41  * ���:
//   42  *    0--���ô���
//   43  *    1--���óɹ�
//   44  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 uint8 LPLD_PDB_Init(PDB_InitTypeDef pdb_init_struct)
//   46 {
LPLD_PDB_Init:
        PUSH     {R0-R3}
        PUSH     {R2-R11,LR}
//   47   uint32 us = pdb_init_struct.PDB_CounterPeriodUs
//   48             + pdb_init_struct.PDB_CounterPeriodMs*1000
//   49             + pdb_init_struct.PDB_CounterPeriodS*1000000;
        LDR      R0,[SP, #+44]
        LDR      R1,[SP, #+48]
        MOV      R2,#+1000
        MLA      R0,R2,R1,R0
        LDR      R1,[SP, #+52]
        LDR.W    R2,??DataTable5_1  ;; 0xf4240
        MLA      R4,R2,R1,R0
//   50   uint32 delayus = pdb_init_struct.PDB_DelayUs
//   51             + pdb_init_struct.PDB_DelayMs*1000
//   52             + pdb_init_struct.PDB_DelayS*1000000;
        LDR      R0,[SP, #+64]
        LDR      R1,[SP, #+68]
        MOV      R2,#+1000
        MLA      R0,R2,R1,R0
        LDR      R1,[SP, #+72]
        LDR.W    R2,??DataTable5_1  ;; 0xf4240
        MLA      R5,R2,R1,R0
//   53   uint8 loadmode = pdb_init_struct.PDB_LoadModeSel;
        LDRB     R6,[SP, #+56]
//   54   uint8 trriger = pdb_init_struct.PDB_TriggerInputSourceSel;
        LDRB     R7,[SP, #+57]
//   55   uint32 bus_clk = g_bus_clock/1000000;
        LDR.W    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable5_1  ;; 0xf4240
        UDIV     R8,R0,R1
//   56   uint8 prescaler, mult;
//   57   uint32 mod;
//   58   float32 temp;
//   59   
//   60   //�������
//   61   ASSERT( loadmode <= LOADMODE_3 );       //����ģʽѡ��
//   62   ASSERT( trriger <= TRIGGER_SOFTWARE );  //��������Դѡ��
//   63   
//   64 /*
//   65  *************************************************
//   66   ��LPLDע�⡿PDB�ؼ�ϵ��
//   67   prescaler(����ʱ��Ԥ��Ƶϵ��): 2^n(n:0~7)
//   68   mult(prescaler�ı���): 1��10��20��40
//   69   mod(������ģ����Ӱ�����������): 0~0xFFFF
//   70   ���������� = (prescaler*mult*mod)/bus_clk
//   71  *************************************************
//   72  */
//   73   
//   74   //���������ļ����������Զ��趨prescaler��mult��mod��ֵ
//   75   for(uint8 i=0; i<4; i++)
        MOVS     R0,#+0
??LPLD_PDB_Init_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+4
        BCS.N    ??LPLD_PDB_Init_1
//   76   {
//   77     mult = i;
        MOV      R10,R0
//   78     for(uint8 j=0; j<8; j++)
        MOVS     R1,#+0
??LPLD_PDB_Init_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+8
        BCS.N    ??LPLD_PDB_Init_3
//   79     {
//   80       prescaler = j;
        MOV      R9,R1
//   81       mod = (bus_clk*us)/((1<<j)*pdb_sc_mults[i]);
        MUL      R2,R4,R8
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R12,??DataTable5_3
        LDRB     R12,[R0, R12]
        MUL      R3,R12,R3
        UDIV     R2,R2,R3
        MOV      R11,R2
//   82       if(mod <= 0xFFFFu)
        CMP      R11,#+65536
        BCC.N    ??LPLD_PDB_Init_3
//   83         break;
//   84     }
??LPLD_PDB_Init_4:
        ADDS     R1,R1,#+1
        B.N      ??LPLD_PDB_Init_2
//   85     if(mod <= 0xFFFFu)
??LPLD_PDB_Init_3:
        CMP      R11,#+65536
        BCC.N    ??LPLD_PDB_Init_1
//   86       break;
//   87     else if(i == 3)
??LPLD_PDB_Init_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PDB_Init_6
//   88       return 0;         //PDB�����������õĹ�С���������
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_Init_7
//   89   }
??LPLD_PDB_Init_6:
        ADDS     R0,R0,#+1
        B.N      ??LPLD_PDB_Init_0
//   90   
//   91   //ʹ��PDBʱ��
//   92   SIM->SCGC6 |= SIM_SCGC6_PDB_MASK;
??LPLD_PDB_Init_1:
        LDR.W    R0,??DataTable5_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400000
        LDR.W    R1,??DataTable5_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   93   
//   94   //��ʼ��SC�Ĵ���
//   95   PDB0->SC = 0x00;
        LDR.W    R0,??DataTable5_5  ;; 0x40036000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   96   //ʹ��PDB
//   97   PDB0->SC |= PDB_SC_PDBEN_MASK;
        LDR.W    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//   98   PDB0->SC |= PDB_SC_MULT(mult);
        LDR.W    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R1,R10,#+2
        ANDS     R1,R1,#0xC
        ORRS     R0,R1,R0
        LDR.W    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//   99   PDB0->SC |= PDB_SC_PRESCALER(prescaler);
        LDR.W    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R1,R9,#+12
        ANDS     R1,R1,#0x7000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  100   //����MOD��IDLY��CHnDLYm��INTx��POyDLY�Ĵ����ļ���ģʽ
//  101   PDB0->SC |= PDB_SC_LDMOD(loadmode); 
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+18
        ANDS     R1,R1,#0xC0000
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  102   //���ô�������Դ
//  103   PDB0->SC |= PDB_SC_TRGSEL(trriger);
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R1,R7,#+8
        ANDS     R1,R1,#0xF00
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  104   
//  105   //�Ƿ�ʹ������ģʽ
//  106   if(pdb_init_struct.PDB_ContinuousModeEnable == TRUE)
        LDRB     R0,[SP, #+58]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_8
//  107     PDB0->SC |= PDB_SC_CONT_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_9
//  108   else
//  109     PDB0->SC &= ~(PDB_SC_CONT_MASK);
??LPLD_PDB_Init_8:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  110   
//  111   //�Ƿ�ʹ��DMA
//  112   if(pdb_init_struct.PDB_DmaEnable == TRUE)
??LPLD_PDB_Init_9:
        LDRB     R0,[SP, #+59]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_10
//  113     PDB0->SC |= PDB_SC_DMAEN_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_11
//  114   else
//  115     PDB0->SC &= ~(PDB_SC_DMAEN_MASK);
??LPLD_PDB_Init_10:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  116   
//  117   if(pdb_init_struct.PDB_Isr != NULL)
??LPLD_PDB_Init_11:
        LDR      R0,[SP, #+76]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_12
//  118   {
//  119     PDB_ISR[0] = pdb_init_struct.PDB_Isr;
        LDR      R0,[SP, #+76]
        LDR.N    R1,??DataTable5_6
        STR      R0,[R1, #+0]
//  120     //�Ƿ�ʹ��PDB�ж�
//  121     if(pdb_init_struct.PDB_IntEnable == TRUE)
        LDRB     R0,[SP, #+60]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_13
//  122       PDB0->SC |= PDB_SC_PDBIE_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_12
//  123     else
//  124       PDB0->SC &= ~(PDB_SC_PDBIE_MASK);
??LPLD_PDB_Init_13:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  125   }
//  126   
//  127   if(pdb_init_struct.PDB_SeqErrIsr != NULL)
??LPLD_PDB_Init_12:
        LDR      R0,[SP, #+80]
        CMP      R0,#+0
        BEQ.N    ??LPLD_PDB_Init_14
//  128   {
//  129     PDB_SE_ISR[0] = pdb_init_struct.PDB_SeqErrIsr;
        LDR      R0,[SP, #+80]
        LDR.N    R1,??DataTable5_7
        STR      R0,[R1, #+0]
//  130     //�Ƿ�ʹ��PDB���д����ж�
//  131     if(pdb_init_struct.PDB_SeqErrIntEnable == TRUE)
        LDRB     R0,[SP, #+61]
        CMP      R0,#+1
        BNE.N    ??LPLD_PDB_Init_15
//  132       PDB0->SC |= PDB_SC_PDBEIE_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_PDB_Init_14
//  133     else
//  134       PDB0->SC &= ~(PDB_SC_PDBEIE_MASK);
??LPLD_PDB_Init_15:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20000
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  135   }
//  136   
//  137   //����PDB�ж���ʱʱ��
//  138   if( delayus <= us )
??LPLD_PDB_Init_14:
        CMP      R4,R5
        BCC.N    ??LPLD_PDB_Init_16
//  139   {
//  140     temp = (float32)mod/(float32)us;
        MOV      R0,R11
        BL       __aeabi_ui2f
        STR      R0,[SP, #+0]
        MOVS     R0,R4
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fdiv
        STR      R0,[SP, #+4]
//  141     PDB0->IDLY = (uint32)(delayus*temp);
        MOVS     R0,R5
        BL       __aeabi_ui2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2uiz
        LDR.N    R1,??DataTable5_8  ;; 0x4003600c
        STR      R0,[R1, #+0]
//  142   }
//  143   
//  144   //����ֵ
//  145   PDB0->SC |= PDB_SC_LDOK_MASK;
??LPLD_PDB_Init_16:
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  146   
//  147   return 1;
        MOVS     R0,#+1
??LPLD_PDB_Init_7:
        POP      {R1,R2,R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  148 }
//  149 
//  150 /*
//  151  * LPLD_PDB_Deinit
//  152  * PDBxģ�鷴��ʼ������������PDBx���й���
//  153  * 
//  154  * ����:
//  155  *    ��
//  156  *
//  157  * ���:
//  158  *    ��
//  159  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void LPLD_PDB_Deinit(void)
//  161 {
LPLD_PDB_Deinit:
        PUSH     {R7,LR}
//  162  
//  163   PDB0->CH[0].C1 = 0;
        LDR.N    R0,??DataTable5_9  ;; 0x40036010
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  164   PDB0->CH[1].C1 = 0;
        LDR.N    R0,??DataTable5_10  ;; 0x40036038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  165   
//  166   PDB0->DAC[0].INTC = 0;
        LDR.N    R0,??DataTable5_11  ;; 0x40036150
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  167   PDB0->DAC[1].INTC = 0;
        LDR.N    R0,??DataTable5_12  ;; 0x40036158
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  168   
//  169   PDB0->SC = 0;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  170   
//  171   //����PDBʱ��
//  172   SIM->SCGC6 &= ~(SIM_SCGC6_PDB_MASK);
        LDR.N    R0,??DataTable5_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x400000
        LDR.N    R1,??DataTable5_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  173   
//  174   disable_irq(PDB0_IRQn);
        MOVS     R0,#+72
        BL       NVIC_DisableIRQ
//  175 }
        POP      {R0,PC}          ;; return
//  176 
//  177 
//  178 /*
//  179  * LPLD_PDB_AdcTriggerCfg
//  180  * PDBx����ADCxģ�����ú���
//  181  * 
//  182  * ����:
//  183  *    adcx--ADCxģ���
//  184  *      |__ADC0          --ADC0
//  185  *      |__ADC1          --ADC1
//  186  *    cfg--ADCxԤ�����������ã��ɶ��ֵ�ϲ�����(eg. cfg=PRETRIG_EN_A|PRETRIG_DLY_A;)
//  187  *      ADCx A������
//  188  *      |__PRETRIG_EN_A  --ʹ��ADCx��A��Ԥ��������
//  189  *      |__PRETRIG_DLY_A --ʹ��ADCx��A����ʱ���Ԥ��������
//  190  *      |__PRETRIG_BB_A  --ʹ��ADCx��A�顰Back to Back��ģʽ
//  191  *      ADCx B������
//  192  *      |__PRETRIG_EN_B  --ʹ��ADCx��B��Ԥ��������
//  193  *      |__PRETRIG_DLY_B --ʹ��ADCx��B����ʱ���Ԥ��������
//  194  *      |__PRETRIG_BB_B  --ʹ��ADCx��B�顰Back to Back��ģʽ
//  195  *    delay--ADCx A��B�����ʱ���Ԥ����ʱ�䣬��λus
//  196  *      |__0~0xFFFF      --0~4095us
//  197  *
//  198  * ���:
//  199  *    0--���ô���
//  200  *    1--���óɹ�
//  201  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 uint8 LPLD_PDB_AdcTriggerCfg(ADC_Type *adcx, uint32 cfg, uint16 delay)
//  203 {
LPLD_PDB_AdcTriggerCfg:
        PUSH     {R4-R8,LR}
        MOVS     R3,R0
//  204   uint8 n,m;
//  205   uint8 prescaler, mult;
//  206   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.W    R12,??DataTable5_1  ;; 0xf4240
        UDIV     R12,R0,R12
//  207 
//  208   if(adcx == ADC0)
        LDR.N    R0,??DataTable5_13  ;; 0x4003b000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_0
//  209     n = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
//  210   else if(adcx == ADC1)
??LPLD_PDB_AdcTriggerCfg_0:
        LDR.N    R0,??DataTable5_14  ;; 0x400bb000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_AdcTriggerCfg_2
//  211     n = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_PDB_AdcTriggerCfg_1
//  212   else
//  213     return 0;
??LPLD_PDB_AdcTriggerCfg_2:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
//  214     
//  215   if(cfg & 0x01)
??LPLD_PDB_AdcTriggerCfg_1:
        LSLS     R0,R1,#+31
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_4
//  216     m = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??LPLD_PDB_AdcTriggerCfg_5
//  217   else if(cfg & 0x02)
??LPLD_PDB_AdcTriggerCfg_4:
        LSLS     R0,R1,#+30
        BPL.N    ??LPLD_PDB_AdcTriggerCfg_6
//  218     m = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??LPLD_PDB_AdcTriggerCfg_5
//  219   else
//  220     return 0;
??LPLD_PDB_AdcTriggerCfg_6:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_AdcTriggerCfg_3
//  221   
//  222   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_AdcTriggerCfg_5:
        MOVS     R0,#+1
        LDR.W    LR,??DataTable5_5  ;; 0x40036000
        LDR      LR,[LR, #+0]
        LSRS     LR,LR,#+12
        ANDS     LR,LR,#0x7
        LSLS     R0,R0,LR
        MOVS     R6,R0
//  223   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        LDR.W    LR,??DataTable5_3
        LDRB     R0,[R0, LR]
        MOVS     R7,R0
//  224   
//  225   PDB0->CH[n].C1 |= cfg;        //���ݲ�������BBģʽ��ѡ��Ԥ���������ʹ��Ԥ����
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+40
        LDR.W    LR,??DataTable5_9  ;; 0x40036010
        MLA      R0,R0,R4,LR
        LDR      R0,[R0, #+0]
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     LR,#+40
        LDR.W    R8,??DataTable5_9  ;; 0x40036010
        MLA      LR,LR,R4,R8
        STR      R0,[LR, #+0]
//  226   PDB0->CH[n].DLY[m] = (bus_clk * delay)/(prescaler * mult);    //����ADCn��m��Ԥ������ʱֵ
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+40
        LDR.W    LR,??DataTable5_9  ;; 0x40036010
        MLA      R0,R0,R4,LR
        ADDS     R0,R0,R5, LSL #+2
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      LR,R2,R12
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MUL      R8,R7,R6
        UDIV     LR,LR,R8
        STR      LR,[R0, #+8]
//  227   
//  228   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    LR,??DataTable5_5  ;; 0x40036000
        STR      R0,[LR, #+0]
//  229   
//  230   return 1;
        MOVS     R0,#+1
??LPLD_PDB_AdcTriggerCfg_3:
        POP      {R4-R8,PC}       ;; return
//  231 }
//  232 
//  233 /*
//  234  * LPLD_PDB_DacTriggerCfg
//  235  * PDBx����DACxģ�����ú���
//  236  * 
//  237  * ����:
//  238  *    dacx--DACxģ���
//  239  *      |__DAC0          --DAC0
//  240  *      |__DAC1          --DAC1
//  241  *    cfg--DACx������������
//  242  *      |__EXT_TRIG_EN   --ʹ���ⲿ����
//  243  *      |__EINT_TRIG_EN  --ʹ���ڲ��������
//  244  *    int_delay--DACx�������ʱ�䣬��λus
//  245  *      |__0~0xFFFF      --0~4095us
//  246  *
//  247  * ���:
//  248  *    0--���ô���
//  249  *    1--���óɹ�
//  250  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  251 uint8 LPLD_PDB_DacTriggerCfg(DAC_Type *dacx, uint32 cfg, uint16 int_delay)
//  252 {
LPLD_PDB_DacTriggerCfg:
        PUSH     {R4-R7}
        MOVS     R3,R0
//  253   uint8 n;
//  254   uint8 prescaler, mult;
//  255   uint32 bus_clk = g_bus_clock/1000000;
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        LDR.N    R7,??DataTable5_1  ;; 0xf4240
        UDIV     R7,R0,R7
//  256   
//  257   if(dacx == DAC0)
        LDR.N    R0,??DataTable5_15  ;; 0x400cc000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_DacTriggerCfg_0
//  258     n = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_PDB_DacTriggerCfg_1
//  259   else if(dacx == DAC1)
??LPLD_PDB_DacTriggerCfg_0:
        LDR.N    R0,??DataTable5_16  ;; 0x400cd000
        CMP      R3,R0
        BNE.N    ??LPLD_PDB_DacTriggerCfg_2
//  260     n = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_PDB_DacTriggerCfg_1
//  261   else
//  262     return 0;
??LPLD_PDB_DacTriggerCfg_2:
        MOVS     R0,#+0
        B.N      ??LPLD_PDB_DacTriggerCfg_3
//  263   
//  264   prescaler = 1<<((PDB0->SC & PDB_SC_PRESCALER_MASK) >> PDB_SC_PRESCALER_SHIFT);
??LPLD_PDB_DacTriggerCfg_1:
        MOVS     R0,#+1
        LDR.W    R12,??DataTable5_5  ;; 0x40036000
        LDR      R12,[R12, #+0]
        LSRS     R12,R12,#+12
        ANDS     R12,R12,#0x7
        LSLS     R0,R0,R12
        MOVS     R5,R0
//  265   mult = pdb_sc_mults[(PDB0->SC & PDB_SC_MULT_MASK) >> PDB_SC_MULT_SHIFT];
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        LDR.W    R12,??DataTable5_3
        LDRB     R0,[R0, R12]
        MOVS     R6,R0
//  266   
//  267   PDB0->DAC[n].INTC |= cfg;     //����ʹ���ⲿ���������ڲ��������
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable5_11  ;; 0x40036150
        LDR      R0,[R0, R4, LSL #+3]
        ORRS     R0,R1,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R12,??DataTable5_11  ;; 0x40036150
        STR      R0,[R12, R4, LSL #+3]
//  268   PDB0->DAC[n].INT = (bus_clk * int_delay)/(prescaler * mult);    //����DACn�ļ������ʱ��
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MUL      R0,R2,R7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MUL      R12,R6,R5
        UDIV     R0,R0,R12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R12,??DataTable5_11  ;; 0x40036150
        ADDS     R12,R12,R4, LSL #+3
        STR      R0,[R12, #+4]
//  269   
//  270   PDB0->SC |= PDB_SC_LDOK_MASK; //����ֵ
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R12,??DataTable5_5  ;; 0x40036000
        STR      R0,[R12, #+0]
//  271   
//  272   return 1;
        MOVS     R0,#+1
??LPLD_PDB_DacTriggerCfg_3:
        POP      {R4-R7}
        BX       LR               ;; return
//  273 }
//  274 
//  275 /*
//  276  * PDB�жϴ�����
//  277  * �������ļ�startup_K60.s�е��ж����������
//  278  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  279  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  280 void PDB_IRQHandler(void)
//  281 {
PDB_IRQHandler:
        PUSH     {R7,LR}
//  282 #if (UCOS_II > 0u)
//  283   OS_CPU_SR  cpu_sr = 0u;
//  284   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  285   OSIntEnter();
//  286   OS_EXIT_CRITICAL();
//  287 #endif
//  288   
//  289   //�Ƿ�ΪPDB�ж�
//  290   if((PDB0->SC & PDB_SC_PDBIF_MASK) && (PDB0->SC & PDB_SC_PDBIE_MASK))
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??PDB_IRQHandler_0
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??PDB_IRQHandler_0
//  291   {
//  292     //�����û��Զ����жϷ���
//  293     PDB_ISR[0]();  
        LDR.N    R0,??DataTable5_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  294     //����жϱ�־λ  
//  295     PDB0->SC &= ~PDB_SC_PDBIF_MASK;
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable5_5  ;; 0x40036000
        STR      R0,[R1, #+0]
//  296   }
//  297   
//  298   //�Ƿ�ΪPDB���д����ж� CH0
//  299   if((PDB0->CH[0].S & PDB_S_ERR(1)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_0:
        LDR.N    R0,??DataTable5_17  ;; 0x40036014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??PDB_IRQHandler_1
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_1
//  300   {
//  301     //�����û��Զ����жϷ���
//  302     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  303     PDB0->CH[0].S |= PDB_S_ERR(1);
        LDR.N    R0,??DataTable5_17  ;; 0x40036014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable5_17  ;; 0x40036014
        STR      R0,[R1, #+0]
//  304   }
//  305   
//  306   //�Ƿ�ΪPDB���д����ж� CH1
//  307   if((PDB0->CH[1].S & PDB_S_ERR(2)) && (PDB0->SC & PDB_SC_PDBEIE_MASK))
??PDB_IRQHandler_1:
        LDR.N    R0,??DataTable5_18  ;; 0x4003603c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??PDB_IRQHandler_2
        LDR.N    R0,??DataTable5_5  ;; 0x40036000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??PDB_IRQHandler_2
//  308   {
//  309     //�����û��Զ����жϷ���
//  310     PDB_SE_ISR[0]();  
        LDR.N    R0,??DataTable5_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  311     PDB0->CH[1].S |= PDB_S_ERR(2);
        LDR.N    R0,??DataTable5_18  ;; 0x4003603c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable5_18  ;; 0x4003603c
        STR      R0,[R1, #+0]
//  312   }
//  313   
//  314 #if (UCOS_II > 0u)
//  315   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  316 #endif
//  317 }
??PDB_IRQHandler_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     pdb_sc_mults

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     0x40036000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     PDB_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     PDB_SE_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     0x4003600c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     0x40036010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     0x40036038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     0x40036150

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     0x40036158

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     0x400cc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     0x400cd000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     0x40036014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     0x4003603c

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
//     8 bytes in section .bss
//     4 bytes in section .rodata
// 1 132 bytes in section .text
// 
// 1 132 bytes of CODE  memory
//     4 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
