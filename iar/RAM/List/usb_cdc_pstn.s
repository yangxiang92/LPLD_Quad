///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    19/Mar/2014  22:08:19 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\USB\cl /
//                    ass\usb_cdc_pstn.c                                      /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\USB\cl /
//                    ass\usb_cdc_pstn.c -D LPLD_K60 -lCN                     /
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
//                    st\usb_cdc_pstn.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME usb_cdc_pstn

        #define SHT_PROGBITS 0x1

        EXTERN USB_Class_CDC_Send_Data
        EXTERN USB_Desc_Get_Abstract_State
        EXTERN USB_Desc_Get_Country_Setting
        EXTERN USB_Desc_Get_Line_Coding
        EXTERN USB_Desc_Set_Abstract_State
        EXTERN USB_Desc_Set_Country_Setting
        EXTERN USB_Desc_Set_Line_Coding

        PUBLIC USB_Class_CDC_PSTN_Get_Comm_Feature
        PUBLIC USB_Class_CDC_PSTN_Get_Line_Coding
        PUBLIC USB_Class_CDC_PSTN_Send_Break
        PUBLIC USB_Class_CDC_PSTN_Send_Serial_State
        PUBLIC USB_Class_CDC_PSTN_Set_Comm_Feature
        PUBLIC USB_Class_CDC_PSTN_Set_Ctrl_Line_State
        PUBLIC USB_Class_CDC_PSTN_Set_Line_Coding
        PUBLIC USB_Class_CDC_Pstn_Init

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\lib\USB\class\usb_cdc_pstn.c
//    1 /******************************************************************************
//    2  *
//    3  * Freescale Semiconductor Inc.
//    4  * (c) Copyright 2004-2009 Freescale Semiconductor, Inc.
//    5  * ALL RIGHTS RESERVED.
//    6  *
//    7  ******************************************************************************
//    8  *
//    9  * THIS SOFTWARE IS PROVIDED BY FREESCALE "AS IS" AND ANY EXPRESSED OR 
//   10  * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
//   11  * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  
//   12  * IN NO EVENT SHALL FREESCALE OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
//   13  * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
//   14  * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
//   15  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
//   16  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
//   17  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
//   18  * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
//   19  * THE POSSIBILITY OF SUCH DAMAGE.
//   20  *
//   21  **************************************************************************//*!
//   22  *
//   23  * @file usb_cdc_pstn.c
//   24  *
//   25  * @author
//   26  *
//   27  * @version
//   28  *
//   29  * @date May-28-2009
//   30  *
//   31  * @brief The file contains USB CDC_PSTN Sub Class implementation.
//   32  *
//   33  *****************************************************************************/
//   34 
//   35 /******************************************************************************
//   36  * Includes
//   37  *****************************************************************************/
//   38  #include "usb_cdc_pstn.h"  /* USB CDC PSTN Sub Class Header File */
//   39 
//   40  /*****************************************************************************
//   41  * Constant and Macro's
//   42  *****************************************************************************/
//   43 
//   44 /*****************************************************************************
//   45  * Global Functions Prototypes
//   46  *****************************************************************************/
//   47 
//   48 /****************************************************************************
//   49  * Global Variables
//   50  ****************************************************************************/
//   51 
//   52 /*****************************************************************************
//   53  * Local Types - None
//   54  *****************************************************************************/
//   55 
//   56 /*****************************************************************************
//   57  * Local Functions Prototypes
//   58  *****************************************************************************/
//   59 
//   60 /*****************************************************************************
//   61  * Local Variables
//   62  *****************************************************************************/
//   63 /* PSTN subclass callback pointer */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   64 static USB_CLASS_CALLBACK g_pstn_callback = NULL;
g_pstn_callback:
        DS8 4
//   65 /* data terminal equipment present or not */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   66 static boolean g_dte_present = FALSE;
g_dte_present:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   67 static uint_8 g_dte_status = 0; /* Status of DATA TERMINAL EQUIPMENT */
g_dte_status:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   68 static uint_16 g_break_duration = 0; /* Length of time in milliseconds of the
g_break_duration:
        DS8 2
//   69                                                               break signal */

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   70 static uint_8 g_current_interface = 0;
g_current_interface:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   71 static UART_BITMAP g_uart_bitmap;
g_uart_bitmap:
        DS8 4
//   72 
//   73 #if CIC_NOTIF_ELEM_SUPPORT

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   74 static uint_8 g_serial_state_buf[NOTIF_PACKET_SIZE+UART_BITMAP_SIZE] =
g_serial_state_buf:
        DATA
        DC8 161, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0
//   75 {
//   76     NOTIF_REQUEST_TYPE,SERIAL_STATE_NOTIF,
//   77     0x00,0x00,/*wValue*/
//   78     0x00,0x00,/*interface - modifies*/
//   79     UART_BITMAP_SIZE,0x00,/* wlength*/
//   80     0x00,0x00 /*data initialized - modifies*/
//   81 };/*uart bitmap*/
//   82 #endif
//   83  /*****************************************************************************
//   84  * Local Functions
//   85  *****************************************************************************/
//   86 
//   87 /*****************************************************************************
//   88  * Global Functions
//   89  *****************************************************************************/
//   90 
//   91 /**************************************************************************//*!
//   92  *
//   93  * @name  USB_Class_CDC_Pstn_Init
//   94  *
//   95  * @brief The function initializes the PSTN Module
//   96  *
//   97  * @param controller_ID     : Controller ID
//   98  * @param callback          : PSTN Callback
//   99  *
//  100  * @return error
//  101  *         USB_OK           : Always
//  102  ******************************************************************************
//  103  * PSTN Sub Class Initialization routine
//  104  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 uint_8 USB_Class_CDC_Pstn_Init (
//  106     uint_8    controller_ID,        /* [IN] Controller ID */
//  107     USB_CLASS_CALLBACK callback     /* [IN] PSTN Callback */
//  108 )
//  109 {
//  110     uint_8 error = USB_OK;
USB_Class_CDC_Pstn_Init:
        MOVS     R0,#+0
//  111     UNUSED (controller_ID)
//  112     
//  113     /* save input parameters */
//  114     g_pstn_callback = callback;
        LDR.N    R2,??DataTable7
        STR      R1,[R2, #+0]
//  115     return error;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  116 }
//  117 /**************************************************************************//*!
//  118  *
//  119  * @name  USB_Class_CDC_PSTN_Get_Line_Coding
//  120  *
//  121  * @brief  This function is called in response to GetLineCoding request
//  122  *
//  123  * @param controller_ID   : Controller ID
//  124  * @param setup_packet    : Pointer to setup packet
//  125  * @param data            : Pointer to Data to be send
//  126  * @param size            : Pointer to Size of Data
//  127  *
//  128  * @return status:
//  129  *          USB_OK : When Successfull
//  130  *          USBERR_INVALID_REQ_TYPE: When  request for
//  131  *                                   invalid Interface is presented
//  132  ******************************************************************************
//  133  * Calls application to receive Line Coding Information
//  134  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 uint_8 USB_Class_CDC_PSTN_Get_Line_Coding (
//  136     uint_8 controller_ID,               /* [IN] Controller ID */
//  137     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  138     uint_8_ptr *data,                   /* [OUT] Pointer to Data to be send */
//  139     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  140 )
//  141 {
USB_Class_CDC_PSTN_Get_Line_Coding:
        PUSH     {R7,LR}
//  142     uint_8 status;
//  143     UNUSED (size)
//  144     g_current_interface = (uint_8)setup_packet->index ;
        LDRH     R1,[R1, #+4]
        LDR.N    R3,??DataTable7_1
        STRB     R1,[R3, #+0]
//  145     status = USB_Desc_Get_Line_Coding(controller_ID, g_current_interface, 
//  146         data);
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Get_Line_Coding
//  147 
//  148     return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
//  149 }
//  150 
//  151 /**************************************************************************//*!
//  152  *
//  153  * @name  USB_Class_CDC_PSTN_Set_Line_Coding
//  154  *
//  155  * @brief  This function is called in response to SetLineCoding request
//  156  *
//  157  * @param controller_ID   : Controller ID
//  158  * @param setup_packet    : Pointer to setup packet
//  159  * @param data            : Pointer to Data
//  160  * @param size            : Pointer to Size of Data
//  161  *
//  162  * @return status:
//  163  *      USB_OK                  : When Successfull
//  164  *      USBERR_INVALID_REQ_TYPE : When  request for invalid
//  165  *                                Interface is presented
//  166  ******************************************************************************
//  167  * Calls Applciation to update Line Coding Information
//  168  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 uint_8 USB_Class_CDC_PSTN_Set_Line_Coding (
//  170     uint_8 controller_ID,               /* [IN] Controller ID */
//  171     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  172     uint_8_ptr *data,                   /* [OUT] Pointer to Data */
//  173     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  174 )
//  175 {
USB_Class_CDC_PSTN_Set_Line_Coding:
        PUSH     {R1,LR}
//  176     uint_8 status;
//  177     UNUSED(data)
//  178     
//  179     *size = 0;
        MOVS     R1,#+0
        STRH     R1,[R3, #+0]
//  180 
//  181     g_current_interface = (uint_8)setup_packet->index ;
        LDR      R1,[SP, #+0]
        LDRH     R1,[R1, #+4]
        LDR.N    R2,??DataTable7_1
        STRB     R1,[R2, #+0]
//  182     status = USB_Desc_Set_Line_Coding(controller_ID, g_current_interface,
//  183         (uint_8_ptr *)&setup_packet);
        ADD      R2,SP,#+0
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Set_Line_Coding
//  184 
//  185     return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,PC}          ;; return
//  186 }
//  187 
//  188 /**************************************************************************//*!
//  189  *
//  190  * @name  USB_Class_CDC_PSTN_Set_Ctrl_Line_State
//  191  *
//  192  * @brief  This function is called in response to Set Control Line State
//  193  *
//  194  * @param controller_ID   : Controller ID
//  195  * @param setup_packet    : Pointer to setup packet
//  196  * @param data            : Pointer to Data
//  197  * @param size            : Pointer to Size of Data
//  198  *
//  199  * @return status:
//  200  *                        USB_OK : Always
//  201  ******************************************************************************
//  202  * Updates Control Line State
//  203  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 uint_8 USB_Class_CDC_PSTN_Set_Ctrl_Line_State (
//  205     uint_8 controller_ID,               /* [IN] Controller ID */
//  206     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  207     uint_8_ptr *data,                   /* [OUT] Pointer to Data  */
//  208     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  209 )
//  210 {
USB_Class_CDC_PSTN_Set_Ctrl_Line_State:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  211     UNUSED(data)
//  212     *size = 0;
        MOVS     R0,#+0
        STRH     R0,[R3, #+0]
//  213 
//  214     g_dte_status = (uint_8)setup_packet->value ;
        LDRH     R0,[R1, #+2]
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  215     g_uart_bitmap._byte = 0x00; /* initialize */
        LDR.N    R0,??DataTable7_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  216     /* activate/deactivate Tx carrier */
//  217     g_uart_bitmap.Bitmap_Uart.bTxCarrier = (g_dte_status &
//  218         CARRIER_ACTIVATION_CHECK) ? 1 : 0 ;
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        LDRB     R1,[R1, #+0]
        BFI      R1,R0,#+1,#+1
        LDR.N    R0,??DataTable7_3
        STRB     R1,[R0, #+0]
//  219      /* activate carrier and DTE */
//  220     g_uart_bitmap.Bitmap_Uart.bRxCarrier = (g_dte_status &
//  221         CARRIER_ACTIVATION_CHECK) ? 1 : 0 ;
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+1
        LDR.N    R1,??DataTable7_3
        LDRB     R1,[R1, #+0]
        BFI      R1,R0,#+0,#+1
        LDR.N    R0,??DataTable7_3
        STRB     R1,[R0, #+0]
//  222 
//  223     /* Indicates to DCE if DTE is present or not */
//  224     g_dte_present = (boolean)((g_dte_status & DTE_PRESENCE_CHECK) ?
//  225         TRUE : FALSE);
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable7_4
        STRB     R0,[R1, #+0]
//  226     UNUSED(g_dte_present);
//  227 #if CIC_NOTIF_ELEM_SUPPORT
//  228     /* Send Notification to Host - Parameter on Device side has changed */
//  229     USB_Class_CDC_PSTN_Send_Serial_State(controller_ID);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Class_CDC_PSTN_Send_Serial_State
//  230 #endif
//  231     if(g_pstn_callback != NULL)
        LDR.N    R0,??DataTable7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??USB_Class_CDC_PSTN_Set_Ctrl_Line_State_0
//  232     {
//  233         if(g_dte_status & CARRIER_ACTIVATION_CHECK)
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??USB_Class_CDC_PSTN_Set_Ctrl_Line_State_1
//  234         {
//  235             g_pstn_callback(controller_ID, USB_APP_CDC_CARRIER_ACTIVATED, 
//  236                 NULL);
        MOVS     R2,#+0
        MOVS     R1,#+34
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable7
        LDR      R3,[R3, #+0]
        BLX      R3
        B.N      ??USB_Class_CDC_PSTN_Set_Ctrl_Line_State_0
//  237         }
//  238         else
//  239         {
//  240             g_pstn_callback(controller_ID, USB_APP_CDC_CARRIER_DEACTIVATED,
//  241                 NULL);
??USB_Class_CDC_PSTN_Set_Ctrl_Line_State_1:
        MOVS     R2,#+0
        MOVS     R1,#+33
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R3,??DataTable7
        LDR      R3,[R3, #+0]
        BLX      R3
//  242         }
//  243     }
//  244     return USB_OK;
??USB_Class_CDC_PSTN_Set_Ctrl_Line_State_0:
        MOVS     R0,#+0
        POP      {R4,PC}          ;; return
//  245 }
//  246 
//  247 /**************************************************************************//*!
//  248  *
//  249  * @name  USB_Class_CDC_PSTN_Send_Break
//  250  *
//  251  * @brief  This function is called in response to Set Config request
//  252  *
//  253  * @param controller_ID   : Controller ID
//  254  * @param setup_packet    : Pointer to setup packet
//  255  * @param data            : Pointer to Data
//  256  * @param size            : Pointer to Size of Data
//  257  *
//  258  * @return status:
//  259  *                        USB_OK : Always
//  260  ******************************************************************************
//  261  * Updates Break Duration Information from Host
//  262  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  263 uint_8 USB_Class_CDC_PSTN_Send_Break (
//  264     uint_8 controller_ID,               /* [IN] Controller ID */
//  265     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  266     uint_8_ptr *data,                   /* [OUT] Pointer to Data  */
//  267     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  268 )
//  269 {
//  270     UNUSED (controller_ID)
//  271     UNUSED (data)
//  272     *size = 0;
USB_Class_CDC_PSTN_Send_Break:
        MOVS     R0,#+0
        STRH     R0,[R3, #+0]
//  273 
//  274     g_break_duration = setup_packet->value;
        LDRH     R0,[R1, #+2]
        LDR.N    R1,??DataTable7_5
        STRH     R0,[R1, #+0]
//  275     UNUSED(g_break_duration);
//  276 
//  277     return USB_OK;
        MOVS     R0,#+0
        BX       LR               ;; return
//  278 }
//  279 
//  280 /**************************************************************************//*!
//  281  *
//  282  * @name  USB_Class_CDC_PSTN_Get_Comm_Feature
//  283  *
//  284  * @brief  This function is called in response to GetCommFeature request
//  285  *
//  286  * @param controller_ID   : Controller ID
//  287  * @param setup_packet    : Pointer to setup packet
//  288  * @param data            : Pointer to Data to be send
//  289  * @param size            : Pointer to Size of Data
//  290  *
//  291  * @return status:
//  292  *      USB_OK                  : When Successfull
//  293  *      USBERR_INVALID_REQ_TYPE : When  request for invalid
//  294  *                                Interface is presented
//  295  ******************************************************************************
//  296  * Returns the status of the get comm feature request
//  297  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 uint_8 USB_Class_CDC_PSTN_Get_Comm_Feature (
//  299     uint_8 controller_ID,               /* [IN] Controller ID */
//  300     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  301     uint_8_ptr *data,                   /* [OUT] Pointer to Data to send */
//  302     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  303 )
//  304 {   uint_8 status;
USB_Class_CDC_PSTN_Get_Comm_Feature:
        PUSH     {R4-R6,LR}
//  305 
//  306     status = USB_OK;
        MOVS     R4,#+0
//  307     *size = COMM_FEATURE_DATA_SIZE;
        MOVS     R5,#+2
        STRH     R5,[R3, #+0]
//  308     g_current_interface = (uint_8)setup_packet->index ;
        LDRH     R5,[R1, #+4]
        LDR.N    R6,??DataTable7_1
        STRB     R5,[R6, #+0]
//  309     if(setup_packet->value == ABSTRACT_STATE_FEATURE)
        LDRH     R5,[R1, #+2]
        CMP      R5,#+1
        BNE.N    ??USB_Class_CDC_PSTN_Get_Comm_Feature_0
//  310     {
//  311         status = USB_Desc_Get_Abstract_State(controller_ID, 
//  312             g_current_interface, data);
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Get_Abstract_State
        MOVS     R4,R0
        B.N      ??USB_Class_CDC_PSTN_Get_Comm_Feature_1
//  313     }
//  314     else if(setup_packet->value == COUNTRY_SETTING_FEATURE)
??USB_Class_CDC_PSTN_Get_Comm_Feature_0:
        LDRH     R1,[R1, #+2]
        CMP      R1,#+2
        BNE.N    ??USB_Class_CDC_PSTN_Get_Comm_Feature_2
//  315     {
//  316         status = USB_Desc_Get_Country_Setting(controller_ID,
//  317             g_current_interface, data);
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Get_Country_Setting
        MOVS     R4,R0
        B.N      ??USB_Class_CDC_PSTN_Get_Comm_Feature_1
//  318     }
//  319     else
//  320     {
//  321         *size = 0; /* for Reserved/Invalid Feature Selector Value */
??USB_Class_CDC_PSTN_Get_Comm_Feature_2:
        MOVS     R0,#+0
        STRH     R0,[R3, #+0]
//  322     }
//  323     return status;
??USB_Class_CDC_PSTN_Get_Comm_Feature_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  324 }
//  325 
//  326 /**************************************************************************//*!
//  327  *
//  328  * @name  USB_Class_CDC_PSTN_Set_Comm_Feature
//  329  *
//  330  * @brief  This function is called in response to SetCommFeature request
//  331  *
//  332  * @param controller_ID   : Controller ID
//  333  * @param setup_packet    : Pointer to setup packet
//  334  * @param data            : Pointer to Data
//  335  * @param size            : Pointer to Size of Data
//  336  *
//  337  * @return status:
//  338  *      USB_OK                  : When Successfull
//  339  *      USBERR_INVALID_REQ_TYPE : When  request for invalid
//  340  *                                Interface is presented
//  341  ******************************************************************************
//  342  * Sets the comm feature specified by Host
//  343  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  344 uint_8 USB_Class_CDC_PSTN_Set_Comm_Feature (
//  345     uint_8 controller_ID,               /* [IN] Controller ID */
//  346     USB_SETUP_STRUCT * setup_packet,    /* [IN] Pointer to setup packet */
//  347     uint_8_ptr *data,                   /* [OUT] Pointer to Data */
//  348     USB_PACKET_SIZE *size               /* [OUT] Pointer to Size of Data */
//  349 )
//  350 {
USB_Class_CDC_PSTN_Set_Comm_Feature:
        PUSH     {R4-R6,LR}
//  351     uint_8 status;
//  352     status = USB_OK;
        MOVS     R4,#+0
//  353     *size = COMM_FEATURE_DATA_SIZE;
        MOVS     R5,#+2
        STRH     R5,[R3, #+0]
//  354     g_current_interface = (uint_8)setup_packet->index ;
        LDRH     R5,[R1, #+4]
        LDR.N    R6,??DataTable7_1
        STRB     R5,[R6, #+0]
//  355     if(setup_packet->value == ABSTRACT_STATE_FEATURE)
        LDRH     R5,[R1, #+2]
        CMP      R5,#+1
        BNE.N    ??USB_Class_CDC_PSTN_Set_Comm_Feature_0
//  356     {
//  357         status = USB_Desc_Set_Abstract_State(controller_ID,
//  358             g_current_interface, data);
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Set_Abstract_State
        MOVS     R4,R0
        B.N      ??USB_Class_CDC_PSTN_Set_Comm_Feature_1
//  359     }
//  360     else if(setup_packet->value == COUNTRY_SETTING_FEATURE)
??USB_Class_CDC_PSTN_Set_Comm_Feature_0:
        LDRH     R1,[R1, #+2]
        CMP      R1,#+2
        BNE.N    ??USB_Class_CDC_PSTN_Set_Comm_Feature_2
//  361     {
//  362         status = USB_Desc_Set_Country_Setting(controller_ID,
//  363             g_current_interface, data);
        LDR.N    R1,??DataTable7_1
        LDRB     R1,[R1, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Desc_Set_Country_Setting
        MOVS     R4,R0
        B.N      ??USB_Class_CDC_PSTN_Set_Comm_Feature_1
//  364     }
//  365     else
//  366     {
//  367         *size = 0; /* for Reserved/Invalid Feature Selector Value */
??USB_Class_CDC_PSTN_Set_Comm_Feature_2:
        MOVS     R0,#+0
        STRH     R0,[R3, #+0]
//  368     }
//  369     return status;
??USB_Class_CDC_PSTN_Set_Comm_Feature_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  370 }
//  371 
//  372 #if CIC_NOTIF_ELEM_SUPPORT
//  373 /**************************************************************************//*!
//  374  *
//  375  * @name  USB_Class_CDC_PSTN_Send_Serial_State
//  376  *
//  377  * @brief  This function is called to send serial state notification
//  378  *
//  379  * @param controller_ID : Controller ID
//  380  *
//  381  * @return NONE
//  382  ******************************************************************************
//  383  * Returns the Serial State
//  384  *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  385 void USB_Class_CDC_PSTN_Send_Serial_State (
//  386     uint_8 controller_ID               /* [IN] Controller ID */
//  387 )
//  388 {
USB_Class_CDC_PSTN_Send_Serial_State:
        PUSH     {R7,LR}
//  389     /* update array for current interface */
//  390     g_serial_state_buf[4] = g_current_interface;
        LDR.N    R1,??DataTable7_6
        LDR.N    R2,??DataTable7_1
        LDRB     R2,[R2, #+0]
        STRB     R2,[R1, #+4]
//  391     /* Lower byte of UART BITMAP */
//  392     g_serial_state_buf[NOTIF_PACKET_SIZE+UART_BITMAP_SIZE-2] =
//  393         g_uart_bitmap._byte;
        LDR.N    R1,??DataTable7_6
        LDR.N    R2,??DataTable7_3
        LDRB     R2,[R2, #+0]
        STRB     R2,[R1, #+8]
//  394     (void)USB_Class_CDC_Interface_CIC_Send_Data(controller_ID,
//  395         g_serial_state_buf, (NOTIF_PACKET_SIZE + UART_BITMAP_SIZE));
        MOVS     R3,#+10
        LDR.N    R2,??DataTable7_6
        MOVS     R1,#+3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       USB_Class_CDC_Send_Data
//  396 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     g_pstn_callback

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     g_current_interface

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     g_dte_status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     g_uart_bitmap

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     g_dte_present

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     g_break_duration

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     g_serial_state_buf

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  397 #endif
//  398 
// 
//  13 bytes in section .bss
//  12 bytes in section .data
// 394 bytes in section .text
// 
// 394 bytes of CODE memory
//  25 bytes of DATA memory
//
//Errors: none
//Warnings: none
