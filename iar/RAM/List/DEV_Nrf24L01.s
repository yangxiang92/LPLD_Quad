///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    20/Mar/2014  08:44:48 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_Nrf24L01.c                                       /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\D /
//                    EV\DEV_Nrf24L01.c -D LPLD_K60 -lCN                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\ia /
//                    r\RAM\List\ -o E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\RAM\Obj\ --no_cse --no_unroll --no_inline      /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\app /
//                    \ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\. /
//                    .\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad /
//                    _V2\iar\..\lib\common\ -I E:\ShawnDocuments\IAR_WorkSpa /
//                    ce\LPLD_Quad_V2\iar\..\lib\LPLD\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \LPLD\HW\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_ /
//                    V2\iar\..\lib\LPLD\DEV\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \uCOS-II\Ports\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD /
//                    _Quad_V2\iar\..\lib\uCOS-II\Source\ -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2 /
//                    \iar\..\lib\FatFs\option\ -I                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\lib\USB\driver\ -I                         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\lib /
//                    \USB\descriptor\ -I E:\ShawnDocuments\IAR_WorkSpace\LPL /
//                    D_Quad_V2\iar\..\lib\USB\class\ -Ol -I "D:\Program      /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\RAM\Li /
//                    st\DEV_Nrf24L01.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME DEV_Nrf24L01

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_SPI_Init
        EXTERN LPLD_SPI_Master_WriteRead
        EXTERN __aeabi_memcpy4

        PUBLIC LPLD_Nrf24L01_Init
        PUBLIC LPLD_Nrf24L01_RecvFrame
        PUBLIC LPLD_Nrf24L01_RxModeInit
        PUBLIC LPLD_Nrf24L01_SendFrame
        PUBLIC LPLD_Nrf24L01_TxModeInit
        PUBLIC NRF24L01_RX_ADDR_P0_RESET_BUF
        PUBLIC NRF24L01_RX_ADDR_P1_RESET_BUF
        PUBLIC NRF24L01_TX_ADDR_RESET_BUF
        PUBLIC RX_ADDRESS
        PUBLIC TX_ADDRESS
        PUBLIC ce_io_param
        PUBLIC spi_init_param

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\LPLD\DEV\DEV_Nrf24L01.c
//    1 /**
//    2  * @file DEV_Nrf24L01.c
//    3  * @version 1.0[By LPLD]
//    4  * @date 2013-09-24
//    5  * @brief Nrf24L01�豸��������
//    6  *
//    7  * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
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
//   22 #include "DEV_Nrf24L01.h"
//   23 #include "HW_GPIO.h"
//   24 
//   25 static uint8 LPLD_Nrf24L01_WriteBuf(uint8 reg,uint8 *pbuf ,uint8 len);
//   26 static uint8 LPLD_Nrf24L01_ReadBuf(uint8 reg,uint8 *pbuf,uint8 len);
//   27 static uint8 LPLD_Nrf24L01_WriteReg(uint8 reg,uint8 value);
//   28 static uint8 LPLD_Nrf24L01_ReadReg(uint8 reg);
//   29 static uint8 LPLD_Nrf24L01_CheckID(void);
//   30 static void Nrf24L01_DelayUs(uint16 t);
//   31 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   32 uint8 TX_ADDRESS[NRF24L01_TX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //���͵�ַ
TX_ADDRESS:
        DATA
        DC8 52, 67, 16, 16, 2, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 uint8 RX_ADDRESS[NRF24L01_RX_ADR_LEN]={0x34,0x43,0x10,0x10,0x02}; //���յ�ַ(������ַ,�����ڽ���ģʽ)
RX_ADDRESS:
        DATA
        DC8 52, 67, 16, 16, 2, 0, 0, 0
//   34 //NRF24L01��λ֮�����ڼ��
//   35 // NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
//   36 // NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
//   37 // NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   38 uint8 NRF24L01_RX_ADDR_P0_RESET_BUF[5];
NRF24L01_RX_ADDR_P0_RESET_BUF:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 uint8 NRF24L01_RX_ADDR_P1_RESET_BUF[5];
NRF24L01_RX_ADDR_P1_RESET_BUF:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   40 uint8 NRF24L01_TX_ADDR_RESET_BUF[5];
NRF24L01_TX_ADDR_RESET_BUF:
        DS8 8
//   41 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   42 SPI_InitTypeDef spi_init_param;
spi_init_param:
        DS8 52

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 GPIO_InitTypeDef ce_io_param;
ce_io_param:
        DS8 20
//   44 /*
//   45  * LPLD_Nrf24L01_Init
//   46  * Nrf24L01��ʼ������������SPIģ�飬ѡ��Nrf24L01 CE����
//   47  * 
//   48  * ����:
//   49  *    ��
//   50  *
//   51  * ���:
//   52  *    1 ���óɹ�
//   53  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   54 uint8 LPLD_Nrf24L01_Init(void)
//   55 {
LPLD_Nrf24L01_Init:
        PUSH     {LR}
        SUB      SP,SP,#+36
//   56   //����SPI
//   57   spi_init_param.SPI_SPIx = NRF24L01_SPIX;
        LDR.N    R0,??DataTable8
        LDR.N    R1,??DataTable8_1  ;; 0x4002c000
        STR      R1,[R0, #+0]
//   58   spi_init_param.SPI_SckDivider = SPI_SCK_DIV_32;//1.56Mhz
        LDR.N    R0,??DataTable8
        MOVS     R1,#+5
        STRB     R1,[R0, #+5]
//   59   spi_init_param.SPI_Pcs0Pin = NRF24L01_PCS0;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+14
        STRB     R1,[R0, #+16]
//   60   spi_init_param.SPI_SckPin  = NRF24L01_SCK;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+15
        STRB     R1,[R0, #+22]
//   61   spi_init_param.SPI_MosiPin = NRF24L01_MOSI;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+16
        STRB     R1,[R0, #+23]
//   62   spi_init_param.SPI_MisoPin = NRF24L01_MISO;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+17
        STRB     R1,[R0, #+24]
//   63   
//   64   spi_init_param.SPI_TxCompleteIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
//   65   spi_init_param.SPI_QueueEndIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+32]
//   66   spi_init_param.SPI_TxFIFO_FillIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
//   67   spi_init_param.SPI_TxFIFO_UnderflowIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+36]
//   68   spi_init_param.SPI_RxFIFO_DrainIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+48]
//   69   spi_init_param.SPI_RxFIFO_OverflowIntIsr = NULL;
        LDR.N    R0,??DataTable8
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
//   70   //����CE
//   71   ce_io_param.GPIO_PTx  = NRF24L01_CE_PTX;
        LDR.N    R0,??DataTable8_2
        LDR.N    R1,??DataTable8_3  ;; 0x400ff040
        STR      R1,[R0, #+0]
//   72   ce_io_param.GPIO_Pins = NRF24L01_CE_IOX;
        LDR.N    R0,??DataTable8_2
        MOVS     R1,#+1
        STR      R1,[R0, #+4]
//   73   ce_io_param.GPIO_Dir  = DIR_OUTPUT;
        LDR.N    R0,??DataTable8_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+12]
//   74   ce_io_param.GPIO_Output = OUTPUT_L;
        LDR.N    R0,??DataTable8_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
//   75 
//   76   LPLD_GPIO_Init(ce_io_param);
        LDR.N    R1,??DataTable8_2
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   77   LPLD_SPI_Init(spi_init_param);
        LDR.N    R1,??DataTable8
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+52
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_SPI_Init
//   78   
//   79   return 1;
        MOVS     R0,#+1
        ADD      SP,SP,#+36
        POP      {PC}             ;; return
//   80 }
//   81 
//   82 /*
//   83  * LPLD_Nrf24L01_TxModeInit
//   84  * Nrf24L01����ģʽ��ʼ��
//   85  * 
//   86  * ����:
//   87  *    ��
//   88  *
//   89  * ���:
//   90  *    Nrf24L01�Ĵ�������״̬
//   91  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 uint8 LPLD_Nrf24L01_TxModeInit(void)
//   93 {
LPLD_Nrf24L01_TxModeInit:
        PUSH     {R4,LR}
//   94   uint8 Temp;
//   95   
//   96   NRF24L01_CE_L;  
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//   97   // оƬ�ϵ縴λ��
//   98   // �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
//   99   // �鿴��������
//  100   // NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
//  101   // NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
//  102   // NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
//  103   // �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
//  104   LPLD_Nrf24L01_CheckID();
        BL       LPLD_Nrf24L01_CheckID
//  105     
//  106   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_FLUSE_TX,0xFF);
        MOVS     R1,#+255
        MOVS     R0,#+225
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  107   
//  108   Temp=LPLD_Nrf24L01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_TX_ADDR,TX_ADDRESS,NRF24L01_TX_ADR_LEN);
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_4
        MOVS     R0,#+48
        BL       LPLD_Nrf24L01_WriteBuf
        MOVS     R4,R0
//  109   
//  110   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);       //Ƶ��0�Զ�,ACKӦ������
        MOVS     R1,#+1
        MOVS     R0,#+33
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  111   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);   //������յ�ַֻ��Ƶ��0      
        MOVS     R1,#+1
        MOVS     R0,#+34
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  112   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a);  //�����Զ��ط�ʱ��ʹ�����500us + 86us, 10 retrans...
        MOVS     R1,#+26
        MOVS     R0,#+36
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  113   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);         //�����ŵ�����Ϊ2.4GHZ���շ�����һ��
        MOVS     R1,#+40
        MOVS     R0,#+37
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  114   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);    //���÷�������Ϊ1MHZ�����书��Ϊ���ֵ0dB
        MOVS     R1,#+15
        MOVS     R0,#+38
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  115   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0E);      //ʹ��CRCУ�飬ʹ��TX�������ϵ�
        MOVS     R1,#+14
        MOVS     R0,#+32
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  116   
//  117   NRF24L01_CE_H;
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  118   
//  119   Nrf24L01_DelayUs(2000);//�ȴ�Nrf24L01����ģʽ��ʼ�����
        MOV      R0,#+2000
        BL       Nrf24L01_DelayUs
//  120   
//  121   return Temp;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  122 }
//  123 
//  124 /*
//  125  * LPLD_Nrf24L01_RxModeInit
//  126  * Nrf24L01����ģʽ��ʼ��
//  127  * 
//  128  * ����:
//  129  *    ��
//  130  *
//  131  * ���:
//  132  *    Nrf24L01�Ĵ�������״̬
//  133  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 uint8 LPLD_Nrf24L01_RxModeInit(void) 
//  135 { 
LPLD_Nrf24L01_RxModeInit:
        PUSH     {R4,LR}
//  136   uint8 Temp;
//  137   
//  138   NRF24L01_CE_L; 
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  139   // оƬ�ϵ縴λ��
//  140   // �ֱ��ȡNRF24L01_RX_ADDR_P0��NRF24L01_RX_ADDR_P1��NRF24L01_TX_ADDR��ֵ
//  141   // �鿴��������
//  142   // NRF24L01_RX_ADDR_P0�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
//  143   // NRF24L01_RX_ADDR_P1�ĸ�λֵ�Ƿ�Ϊ0xC2C2C2C2
//  144   // NRF24L01_TX_ADDR�ĸ�λֵ�Ƿ�Ϊ0xE7E7E7E7
//  145   // �����ȷ֤��SPI��дû�����⣬��֮��Ȼ
//  146   LPLD_Nrf24L01_CheckID();
        BL       LPLD_Nrf24L01_CheckID
//  147  
//  148   Temp=LPLD_Nrf24L01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, RX_ADDRESS, NRF24L01_RX_ADR_LEN); 
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_5
        MOVS     R0,#+42
        BL       LPLD_Nrf24L01_WriteBuf
        MOVS     R4,R0
//  149   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RX_PW_P0, NRF24L01_PLOAD_LEN);
        MOVS     R1,#+32
        MOVS     R0,#+49
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  150   
//  151   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_AA, 0x01);      //Ƶ��0�Զ�,ACKӦ������      
        MOVS     R1,#+1
        MOVS     R0,#+33
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  152   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_EN_RXADDR, 0x01);  //������յ�ַֻ��Ƶ��0 
        MOVS     R1,#+1
        MOVS     R0,#+34
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  153   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_SETUP_RETR, 0x1a); // 500us + 86us, 10 retrans... 	
        MOVS     R1,#+26
        MOVS     R0,#+36
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  154   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_CH, 40);        //�����ŵ�����Ϊ2.4GHZ���շ�����һ��  
        MOVS     R1,#+40
        MOVS     R0,#+37
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  155   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_RF_SETUP, 0x0F);   //���÷�������Ϊ1MHZ�����书��Ϊ���ֵ0dB
        MOVS     R1,#+15
        MOVS     R0,#+38
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  156   Temp=LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG + NRF24L01_CONFIG, 0x0F);     //ʹ��CRCУ�飬ʹ��RX�������ϵ� 
        MOVS     R1,#+15
        MOVS     R0,#+32
        BL       LPLD_Nrf24L01_WriteReg
        MOVS     R4,R0
//  157   
//  158   NRF24L01_CE_H;  
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  159   
//  160   Nrf24L01_DelayUs(2000);//�ȴ�Nrf24L01����ģʽ��ʼ�����
        MOV      R0,#+2000
        BL       Nrf24L01_DelayUs
//  161   
//  162   return Temp;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  163 }
//  164 
//  165 /*
//  166  * LPLD_Nrf24L01_SendFrame
//  167  * Nrf24L01��������֡
//  168  * 
//  169  * ����:
//  170  *    *data--ָ���û��������ݻ�����
//  171  *    len--�������ݳ��ȣ����ֽ�Ϊ��λ
//  172  *
//  173  * ���:
//  174  *    1 ���ͳɹ�
//  175  *    0 ����ʧ��
//  176  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  177 uint8 LPLD_Nrf24L01_SendFrame(uint8 *data, uint8 len)
//  178 {
LPLD_Nrf24L01_SendFrame:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  179   uint8 Status;
//  180   
//  181   NRF24L01_CE_L; //����CE����Nrf24l01����Standby-Iģʽ
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  182   LPLD_Nrf24L01_WriteBuf(NRF24L01_WRITE_REG + NRF24L01_RX_ADDR_P0, TX_ADDRESS, NRF24L01_RX_ADR_LEN); // װ�ؽ��ն˵�ַ
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_4
        MOVS     R0,#+42
        BL       LPLD_Nrf24L01_WriteBuf
//  183   LPLD_Nrf24L01_WriteBuf(NRF24L01_WR_TX_PLOAD, data, len); 			   // װ������	
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        MOVS     R0,#+160
        BL       LPLD_Nrf24L01_WriteBuf
//  184   NRF24L01_CE_H;  
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable8_3  ;; 0x400ff040
        BL       LPLD_GPIO_Output_b
//  185   
//  186   while(1)
//  187   {
//  188     Status = LPLD_Nrf24L01_ReadReg(NRF24L01_STATUS);           //��ȡ״̬�Ĵ���
??LPLD_Nrf24L01_SendFrame_0:
        MOVS     R0,#+7
        BL       LPLD_Nrf24L01_ReadReg
        MOVS     R4,R0
//  189     LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);  //���״̬�����
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+39
        BL       LPLD_Nrf24L01_WriteReg
//  190     if(Status & NRF24L01_STATUS_TX_DS)                //���������ϣ������յ�ACK���ñ�־λ��λ
        LSLS     R0,R4,#+26
        BPL.N    ??LPLD_Nrf24L01_SendFrame_1
//  191     {
//  192       LPLD_Nrf24L01_WriteReg(NRF24L01_FLUSE_TX,0xFF); //��շ��ͻ�����
        MOVS     R1,#+255
        MOVS     R0,#+225
        BL       LPLD_Nrf24L01_WriteReg
//  193       Status = 1;
        MOVS     R4,#+1
//  194       break;
        B.N      ??LPLD_Nrf24L01_SendFrame_2
//  195     }
//  196     else if(Status & NRF24L01_STATUS_MAX_RT)//����ﵽ��η��͵����ֵ�����ڼ�û�н��յ�ACK
??LPLD_Nrf24L01_SendFrame_1:
        LSLS     R0,R4,#+27
        BPL.N    ??LPLD_Nrf24L01_SendFrame_0
//  197     { 
//  198       Status = 0;
        MOVS     R4,#+0
//  199       break;
//  200     }
//  201   }
//  202   return Status;
??LPLD_Nrf24L01_SendFrame_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  203 }
//  204 
//  205 /*
//  206  * LPLD_Nrf24L01_RecvFrame
//  207  * Nrf24L01��������֡
//  208  * 
//  209  * ����:
//  210  *    *data--ָ���û��������ݻ�����
//  211  *    len--�������ݳ��ȣ����ֽ�Ϊ��λ
//  212  *
//  213  * ���:
//  214  *    ��
//  215  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 void LPLD_Nrf24L01_RecvFrame(uint8 *data, uint8 len)
//  217 {
LPLD_Nrf24L01_RecvFrame:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  218   uint8 Status;
//  219   Status = LPLD_Nrf24L01_ReadReg(NRF24L01_STATUS);                  
        MOVS     R0,#+7
        BL       LPLD_Nrf24L01_ReadReg
        MOVS     R6,R0
//  220   LPLD_Nrf24L01_ReadBuf(NRF24L01_RD_RX_PLOAD,data,len);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        MOVS     R0,#+97
        BL       LPLD_Nrf24L01_ReadBuf
//  221   LPLD_Nrf24L01_WriteReg(NRF24L01_WRITE_REG+NRF24L01_STATUS,Status);
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+39
        BL       LPLD_Nrf24L01_WriteReg
//  222   Status = 0;
        MOVS     R6,#+0
//  223 }
        POP      {R4-R6,PC}       ;; return
//  224 
//  225 /*
//  226 * LPLD_Nrf24L01_CheckID   
//  227 * ���ڼ�鸴λ���NRF24L01_RX_ADDR_P1��NRF24L01_RX_ADDR_P0��NRF24L01_TX_ADDR��ֵ�Ƿ���ȷ
//  228 * ��ֵ���ڷ�ӳSPI�����Ƿ�������ȷ
//  229 *
//  230 * ���:
//  231 *     Nrf24L01�Ĵ�������״̬
//  232 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  233 static uint8 LPLD_Nrf24L01_CheckID(void)
//  234 {
LPLD_Nrf24L01_CheckID:
        PUSH     {R4,LR}
//  235   uint8 Temp;
//  236   Temp=LPLD_Nrf24L01_ReadBuf(NRF24L01_READ_REG + NRF24L01_RX_ADDR_P1, NRF24L01_RX_ADDR_P1_RESET_BUF,5);
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_6
        MOVS     R0,#+11
        BL       LPLD_Nrf24L01_ReadBuf
        MOVS     R4,R0
//  237   asm("nop");
        nop
//  238   Temp=LPLD_Nrf24L01_ReadBuf(NRF24L01_READ_REG + NRF24L01_TX_ADDR, NRF24L01_TX_ADDR_RESET_BUF,5);
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_7
        MOVS     R0,#+16
        BL       LPLD_Nrf24L01_ReadBuf
        MOVS     R4,R0
//  239   asm("nop");
        nop
//  240   Temp=LPLD_Nrf24L01_ReadBuf(NRF24L01_READ_REG + NRF24L01_RX_ADDR_P0, NRF24L01_RX_ADDR_P0_RESET_BUF,5);
        MOVS     R2,#+5
        LDR.N    R1,??DataTable8_8
        MOVS     R0,#+10
        BL       LPLD_Nrf24L01_ReadBuf
        MOVS     R4,R0
//  241   asm("nop"); 
        nop
//  242   return Temp;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  243 }
//  244 
//  245 /*
//  246 * LPLD_Nrf24L01_WriteBuf
//  247 * ��nrf24l01�Ļ�������д�����ݣ������ؼĴ�����״̬
//  248 * ����:   
//  249 *     reg--nrf24l01�Ĵ���
//  250 *     *pbuf--ָ��洢д�����ݵ��׵�ַ
//  251 *     len--��ȡ���ĳ��ȣ���λ�ֽ�
//  252 * ����ֵ: 
//  253 *     ���ص�ǰ�Ĵ�����״̬
//  254 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  255 static uint8 LPLD_Nrf24L01_WriteBuf(uint8 reg,uint8 *pbuf ,uint8 len)
//  256 {
LPLD_Nrf24L01_WriteBuf:
        PUSH     {R3-R7,LR}
        MOVS     R4,R1
        MOVS     R5,R2
//  257   uint8 status,i;
//  258   
//  259   status = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX, reg, SPI_PCS0, SPI_PCS_ASSERTED); //֡������Ϻ�PCS���ֵ͵�ƽ
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R6,R0
//  260   
//  261   for(i = 0;i < len;i++) 
        MOVS     R7,#+0
        B.N      ??LPLD_Nrf24L01_WriteBuf_0
//  262   {       
//  263     if( i == (len-1) )
//  264     {
//  265       LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,*pbuf++,SPI_PCS0,SPI_PCS_INACTIVE);//֡������Ϻ�PCS��ɸߵ�ƽ
//  266     }
//  267     else
//  268     {
//  269       LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,*pbuf++,SPI_PCS0,SPI_PCS_ASSERTED);
??LPLD_Nrf24L01_WriteBuf_1:
        MOVS     R3,#+1
        MOVS     R2,#+1
        LDRB     R1,[R4, #+0]
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        ADDS     R4,R4,#+1
//  270     }
??LPLD_Nrf24L01_WriteBuf_2:
        ADDS     R7,R7,#+1
??LPLD_Nrf24L01_WriteBuf_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BCS.N    ??LPLD_Nrf24L01_WriteBuf_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+1
        CMP      R7,R0
        BNE.N    ??LPLD_Nrf24L01_WriteBuf_1
        MOVS     R3,#+0
        MOVS     R2,#+1
        LDRB     R1,[R4, #+0]
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        ADDS     R4,R4,#+1
        B.N      ??LPLD_Nrf24L01_WriteBuf_2
//  271   }
//  272   return status;
??LPLD_Nrf24L01_WriteBuf_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//  273 } 
//  274 
//  275 /*
//  276 * LPLD_Nrf24L01_ReadBuf
//  277 * ��nrf24l01�Ļ������ж�ȡ���ݣ������ؼĴ�����״̬
//  278 * ����:
//  279 *     reg--nrf24l01�Ĵ���
//  280 *     *pBUF--ָ��洢�������ݵ��׵�ַ
//  281 *     len--��ȡ���ĳ��ȣ���λ�ֽ�
//  282 * ����ֵ��
//  283 *     ���ص�ǰ�Ĵ�����״̬
//  284 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  285 static uint8 LPLD_Nrf24L01_ReadBuf(uint8 reg,uint8 *pbuf,uint8 len)
//  286 {
LPLD_Nrf24L01_ReadBuf:
        PUSH     {R3-R7,LR}
        MOVS     R4,R1
        MOVS     R5,R2
//  287   uint8 Status,i;
//  288   
//  289   Status = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,reg,SPI_PCS0,SPI_PCS_ASSERTED); 
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R6,R0
//  290   
//  291   for(i = 0 ;i < len ;i++)
        MOVS     R7,#+0
        B.N      ??LPLD_Nrf24L01_ReadBuf_0
//  292   {
//  293     if( i == (len-1) )
//  294     {
//  295       pbuf[i] = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,0xFF,SPI_PCS0,SPI_PCS_INACTIVE);
//  296     }
//  297     else
//  298     {
//  299       pbuf[i] = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,0xFF,SPI_PCS0,SPI_PCS_ASSERTED);
??LPLD_Nrf24L01_ReadBuf_1:
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,#+255
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R7, R4]
//  300     }
??LPLD_Nrf24L01_ReadBuf_2:
        ADDS     R7,R7,#+1
??LPLD_Nrf24L01_ReadBuf_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R7,R5
        BCS.N    ??LPLD_Nrf24L01_ReadBuf_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        SUBS     R0,R5,#+1
        CMP      R7,R0
        BNE.N    ??LPLD_Nrf24L01_ReadBuf_1
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+255
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R7, R4]
        B.N      ??LPLD_Nrf24L01_ReadBuf_2
//  301   }
//  302   return Status ;
??LPLD_Nrf24L01_ReadBuf_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return
//  303 }
//  304 
//  305 /*
//  306 * LPLD_Nrf24L01_WriteReg
//  307 * ��nrf24l01�Ĵ�����д�����ݣ������ؼĴ�����״̬/��nrf24l01д��ָ��
//  308 * ����:
//  309 *     reg--nrf24l01�Ĵ���
//  310 *     value--�Ĵ�������ֵ
//  311 * ����ֵ: 
//  312 *     ���ص�ǰ�Ĵ�����״̬
//  313 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  314 static uint8 LPLD_Nrf24L01_WriteReg(uint8 reg,uint8 value)
//  315 {
LPLD_Nrf24L01_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R1
//  316   uint8 Status;
//  317   Status = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,reg,SPI_PCS0,SPI_PCS_ASSERTED);    
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
        MOVS     R5,R0
//  318   LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,value,SPI_PCS0,SPI_PCS_INACTIVE);  
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
//  319   return Status;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  320 }
//  321 
//  322 /*
//  323 * LPLD_Nrf24L01_ReadReg
//  324 * ��nrf24l01�Ĵ�����д�����ݣ������ؼĴ�����״̬/��nrf24l01д��ָ��
//  325 * ����:
//  326 *     reg--nrf24l01�Ĵ���
//  327 * ����ֵ: 
//  328 *     ���ص�ǰ�Ĵ�������ֵ
//  329 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  330 static uint8 LPLD_Nrf24L01_ReadReg(uint8 reg)
//  331 {
LPLD_Nrf24L01_ReadReg:
        PUSH     {R7,LR}
//  332   uint8 temp;
//  333   LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,reg,SPI_PCS0,SPI_PCS_ASSERTED);  
        MOVS     R3,#+1
        MOVS     R2,#+1
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
//  334   temp = LPLD_SPI_Master_WriteRead(NRF24L01_SPIX,0xFF,SPI_PCS0,SPI_PCS_INACTIVE); 
        MOVS     R3,#+0
        MOVS     R2,#+1
        MOVS     R1,#+255
        LDR.N    R0,??DataTable8_1  ;; 0x4002c000
        BL       LPLD_SPI_Master_WriteRead
//  335   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
//  336 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     spi_init_param

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ce_io_param

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     TX_ADDRESS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     RX_ADDRESS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     NRF24L01_RX_ADDR_P1_RESET_BUF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     NRF24L01_TX_ADDR_RESET_BUF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     NRF24L01_RX_ADDR_P0_RESET_BUF
//  337 
//  338 /*
//  339 * Nrf24L01_DelayUs
//  340 * ������ʱ ��С10us
//  341 * ����:   
//  342 *     t ��ʱ
//  343 * ����ֵ: 
//  344 *     ��      
//  345 */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  346 static void Nrf24L01_DelayUs(uint16 t)
//  347 {
//  348   uint16 i;
//  349   for(i = 0; i < t;i++)
Nrf24L01_DelayUs:
        MOVS     R1,#+0
        B.N      ??Nrf24L01_DelayUs_0
//  350   {
//  351     asm("nop");
??Nrf24L01_DelayUs_1:
        nop
//  352   }
        ADDS     R1,R1,#+1
??Nrf24L01_DelayUs_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R1,R0
        BCC.N    ??Nrf24L01_DelayUs_1
//  353 }
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
//  96 bytes in section .bss
//  16 bytes in section .data
// 864 bytes in section .text
// 
// 864 bytes of CODE memory
// 112 bytes of DATA memory
//
//Errors: none
//Warnings: none
