///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    12/Apr/2014  10:07:00 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\dmp.c                                               /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\mod /
//                    ule\dmp.c -D LPLD_K60 -lCN                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\List\ -lB E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\FLASH_MINE\List\ -o                            /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\Obj\ --no_cse --no_unroll --no_inline              /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M4 -e --fpu=None --dlib_config             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\INC\c\DLib_Config_Normal.h" -I                  /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V /
//                    2\iar\..\source\app\Communicate\ -I                     /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\app\Algorithm\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V2\iar\..\source\app\SignalProcess\ -I         /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\module\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qua /
//                    d_V2\iar\..\source\module\eMPL\ -I                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\CPU\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Qu /
//                    ad_V2\iar\..\source\lib\common\ -I                      /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_Q /
//                    uad_V2\iar\..\source\lib\LPLD\HW\ -I                    /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\LPLD\DEV\ -I E:\ShawnDocuments\IAR_WorkSpace\LP /
//                    LD_Quad_V2\iar\..\source\lib\uCOS-II\Ports\ -I          /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\uCOS-II\Source\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\FatFs\ -I E:\ShawnDocuments\IAR_WorkSpace\LPLD_ /
//                    Quad_V2\iar\..\source\lib\FatFs\option\ -I              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\common\ -I E:\ShawnDocuments\IAR_WorkSpace\ /
//                    LPLD_Quad_V2\iar\..\source\lib\USB\driver\ -I           /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\descriptor\ -I                              /
//                    E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\..\sou /
//                    rce\lib\USB\class\ -I E:\ShawnDocuments\IAR_WorkSpace\L /
//                    PLD_Quad_V2\iar\..\source\lib\MyLib\ -On -I             /
//                    "D:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.4\arm\CMSIS\Include\" -D ARM_MATH_CM4                 /
//    List file    =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\iar\FLASH_ /
//                    MINE\List\dmp.s                                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME dmp

        #define SHT_PROGBITS 0x1

        EXTERN MPU6050_DMP_MultiReadReg
        EXTERN MPU6050_DMP_MultiWriteReg
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN asin
        EXTERN atan2
        EXTERN delayms
        EXTERN dmp_enable_feature
        EXTERN dmp_load_motion_driver_firmware
        EXTERN dmp_read_fifo
        EXTERN dmp_set_accel_bias
        EXTERN dmp_set_fifo_rate
        EXTERN dmp_set_gyro_bias
        EXTERN dmp_set_orientation
        EXTERN mpu_configure_fifo
        EXTERN mpu_get_accel_sens
        EXTERN mpu_get_gyro_sens
        EXTERN mpu_init
        EXTERN mpu_run_self_test
        EXTERN mpu_set_dmp_state
        EXTERN mpu_set_sample_rate
        EXTERN mpu_set_sensors
        EXTERN printf

        PUBLIC InitDMP
        PUBLIC Pitch
        PUBLIC PrintChar
        PUBLIC RefreshDMP
        PUBLIC Roll
        PUBLIC Yaw
        PUBLIC delay_ms
        PUBLIC get_ms
        PUBLIC i2cread
        PUBLIC i2cwrite
        PUBLIC labs
        PUBLIC q0
        PUBLIC q1
        PUBLIC q2
        PUBLIC q3

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\module\dmp.c
//    1 /****************************************************************************** 
//    2  *       dmp.c ----- The code to use the DMP function of the mpu9150          *
//    3  *       (c) Copyright 2012 HUST RENESAS LAB,The Department of CSE, HUST       *
//    4  *                        All Rights Reserved                                  *
//    5  *Filename             :  dmp.c                                           *
//    6  *Programmer(s)        :  Yang Xiang                                           *
//    7  *Description          :                                                       *
//    8  *Modification History :                                                       *
//    9  *01a 2014/3/29 18:28:56                                                       *
//   10  ******************************************************************************/
//   11 #include "dmp.h"
//   12 
//   13 /* The sensors can be mounted onto the board in any orientation. The mounting
//   14  * matrix seen below tells the MPL how to rotate the raw data from thei
//   15  * driver(s).
//   16  * TODO: The following matrices refer to the configuration on an internal test
//   17  * board at Invensense. If needed, please modify the matrices to match the
//   18  * chip-to-body matrix for your particular set up.
//   19  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   20 static signed char gyro_orientation[9] = {-1, 0, 0,
gyro_orientation:
        DATA
        DC8 -1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0
//   21                                            0,-1, 0,
//   22                                            0, 0, 1};
//   23 
//   24 /* These next two functions converts the orientation matrix (see
//   25  * gyro_orientation) to a scalar representation for use by the DMP.
//   26  * NOTE: These functions are borrowed from Invensense's MPL.
//   27  */
//   28 
//   29 /* Every time new gyro data is available, this function is called in an
//   30  * ISR context. In this example, it sets a flag protecting the FIFO read
//   31  * function.
//   32  */
//   33 //static void gyro_data_ready_cb(void)
//   34 //{
//   35 //    hal.new_gyro = 1;
//   36 //}
//   37 #define q30  1073741824.0f

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   38 float q0=1.0f,q1=0.0f,q2=0.0f,q3=0.0f;
q0:
        DATA
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
q3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   39 float Pitch=0.0f,Roll=0.0f,Yaw=0.0f;
Pitch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Roll:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
Yaw:
        DS8 4
//   40 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 static  unsigned short inv_row_2_scale(const signed char *row)
//   42 {
inv_row_2_scale:
        MOVS     R1,R0
//   43     unsigned short b;
//   44 
//   45     if (row[0] > 0)
        LDRSB    R2,[R1, #+0]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_0
//   46         b = 0;
        MOVS     R2,#+0
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   47     else if (row[0] < 0)
??inv_row_2_scale_0:
        LDRSB    R2,[R1, #+0]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_2
//   48         b = 4;
        MOVS     R2,#+4
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   49     else if (row[1] > 0)
??inv_row_2_scale_2:
        LDRSB    R2,[R1, #+1]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_3
//   50         b = 1;
        MOVS     R2,#+1
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   51     else if (row[1] < 0)
??inv_row_2_scale_3:
        LDRSB    R2,[R1, #+1]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_4
//   52         b = 5;
        MOVS     R2,#+5
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   53     else if (row[2] > 0)
??inv_row_2_scale_4:
        LDRSB    R2,[R1, #+2]
        CMP      R2,#+1
        BLT.N    ??inv_row_2_scale_5
//   54         b = 2;
        MOVS     R2,#+2
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   55     else if (row[2] < 0)
??inv_row_2_scale_5:
        LDRSB    R2,[R1, #+2]
        CMP      R2,#+0
        BPL.N    ??inv_row_2_scale_6
//   56         b = 6;
        MOVS     R2,#+6
        MOVS     R0,R2
        B.N      ??inv_row_2_scale_1
//   57     else
//   58         b = 7;      // error
??inv_row_2_scale_6:
        MOVS     R2,#+7
        MOVS     R0,R2
//   59     return b;
??inv_row_2_scale_1:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//   60 }
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 static  unsigned short inv_orientation_matrix_to_scalar(
//   63     const signed char *mtx)
//   64 {
inv_orientation_matrix_to_scalar:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   65     unsigned short scalar;
//   66 
//   67     /*
//   68        XYZ  010_001_000 Identity Matrix
//   69        XZY  001_010_000
//   70        YXZ  010_000_001
//   71        YZX  000_010_001
//   72        ZXY  001_000_010
//   73        ZYX  000_001_010
//   74      */
//   75 
//   76     scalar = inv_row_2_scale(mtx);
        MOVS     R0,R4
        BL       inv_row_2_scale
        MOVS     R5,R0
//   77     scalar |= inv_row_2_scale(mtx + 3) << 3;
        ADDS     R0,R4,#+3
        BL       inv_row_2_scale
        ORRS     R0,R5,R0, LSL #+3
        MOVS     R5,R0
//   78     scalar |= inv_row_2_scale(mtx + 6) << 6;
        ADDS     R0,R4,#+6
        BL       inv_row_2_scale
        ORRS     R0,R5,R0, LSL #+6
        MOVS     R5,R0
//   79 
//   80 
//   81     return scalar;
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   82 }
//   83 
//   84 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 static void run_self_test(void)
//   86 {
run_self_test:
        PUSH     {LR}
        SUB      SP,SP,#+36
//   87     //int result;
//   88 //    char test_packet[4] = {0};
//   89     long gyro[3], accel[3];
//   90 
//   91     //result = mpu_run_self_test(gyro, accel);
//   92     mpu_run_self_test(gyro, accel);
        ADD      R1,SP,#+8
        ADD      R0,SP,#+20
        BL       mpu_run_self_test
//   93     //if (result == 0x7) {
//   94         /* Test passed. We can trust the gyro data here, so let's push it down
//   95          * to the DMP.
//   96          */
//   97         float sens;
//   98         unsigned short accel_sens;
//   99         mpu_get_gyro_sens(&sens);
        ADD      R0,SP,#+4
        BL       mpu_get_gyro_sens
//  100         gyro[0] = (long)(gyro[0] * sens);
        LDR      R0,[SP, #+20]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+20]
//  101         gyro[1] = (long)(gyro[1] * sens);
        LDR      R0,[SP, #+24]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+24]
//  102         gyro[2] = (long)(gyro[2] * sens);
        LDR      R0,[SP, #+28]
        BL       __aeabi_i2f
        LDR      R1,[SP, #+4]
        BL       __aeabi_fmul
        BL       __aeabi_f2iz
        STR      R0,[SP, #+28]
//  103         dmp_set_gyro_bias(gyro);
        ADD      R0,SP,#+20
        BL       dmp_set_gyro_bias
//  104         mpu_get_accel_sens(&accel_sens);
        ADD      R0,SP,#+0
        BL       mpu_get_accel_sens
//  105         accel[0] *= accel_sens;
        LDR      R0,[SP, #+8]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+8]
//  106         accel[1] *= accel_sens;
        LDR      R0,[SP, #+12]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+12]
//  107         accel[2] *= accel_sens;
        LDR      R0,[SP, #+16]
        LDRH     R1,[SP, #+0]
        MULS     R0,R1,R0
        STR      R0,[SP, #+16]
//  108         dmp_set_accel_bias(accel);
        ADD      R0,SP,#+8
        BL       dmp_set_accel_bias
//  109 		PrintChar("setting bias succesfully ......\n");
        LDR.N    R0,??DataTable2
        BL       PrintChar
//  110     //}
//  111 	//else
//  112 	//{
//  113 		//PrintChar("bias has not been modified ......\n");
//  114 	//}
//  115 
//  116     /* Report results. */
//  117 //    test_packet[0] = 't';
//  118 //    test_packet[1] = result;
//  119 //    send_packet(PACKET_TYPE_MISC, test_packet);
//  120 }
        ADD      SP,SP,#+36
        POP      {PC}             ;; return
//  121 
//  122 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 void InitDMP(void)
//  124 {
InitDMP:
        PUSH     {R4,LR}
//  125   int result;     
//  126   result = mpu_init();
        BL       mpu_init
        MOVS     R4,R0
//  127   if(!result)
        CMP      R4,#+0
        BNE.N    ??InitDMP_0
//  128   {
//  129 	  //mpu_init();
//  130 	  PrintChar("mpu initialization complete......\n ");
        LDR.N    R0,??DataTable2_1
        BL       PrintChar
//  131 	  //mpu_set_sensor
//  132 	  if(!mpu_set_sensors(INV_XYZ_GYRO | INV_XYZ_ACCEL))
        MOVS     R0,#+120
        BL       mpu_set_sensors
        CMP      R0,#+0
        BNE.N    ??InitDMP_1
//  133 	  {
//  134 	  	 PrintChar("mpu_set_sensor complete ......\n");
        LDR.N    R0,??DataTable2_2
        BL       PrintChar
        B.N      ??InitDMP_2
//  135 	  }
//  136 	  else
//  137 	  {
//  138 	  	 PrintChar("mpu_set_sensor come across error ......\n");
??InitDMP_1:
        LDR.N    R0,??DataTable2_3
        BL       PrintChar
//  139 	  }
//  140 	  //mpu_configure_fifo
//  141 	  if(!mpu_configure_fifo(INV_XYZ_GYRO | INV_XYZ_ACCEL))
??InitDMP_2:
        MOVS     R0,#+120
        BL       mpu_configure_fifo
        CMP      R0,#+0
        BNE.N    ??InitDMP_3
//  142 	  {
//  143 	  	 PrintChar("mpu_configure_fifo complete ......\n");
        LDR.N    R0,??DataTable2_4
        BL       PrintChar
        B.N      ??InitDMP_4
//  144 	  }
//  145 	  else
//  146 	  {
//  147 	  	 PrintChar("mpu_configure_fifo come across error ......\n");
??InitDMP_3:
        LDR.N    R0,??DataTable2_5
        BL       PrintChar
//  148 	  }
//  149 	  //mpu_set_sample_rate
//  150 	  if(!mpu_set_sample_rate(DEFAULT_MPU_HZ))
??InitDMP_4:
        MOVS     R0,#+100
        BL       mpu_set_sample_rate
        CMP      R0,#+0
        BNE.N    ??InitDMP_5
//  151 	  {
//  152 	  	 PrintChar("mpu_set_sample_rate complete ......\n");
        LDR.N    R0,??DataTable2_6
        BL       PrintChar
        B.N      ??InitDMP_6
//  153 	  }
//  154 	  else
//  155 	  {
//  156 	  	 PrintChar("mpu_set_sample_rate error ......\n");
??InitDMP_5:
        LDR.N    R0,??DataTable2_7
        BL       PrintChar
//  157 	  }
//  158 	  //dmp_load_motion_driver_firmvare
//  159 	  if(!dmp_load_motion_driver_firmware())
??InitDMP_6:
        BL       dmp_load_motion_driver_firmware
        CMP      R0,#+0
        BNE.N    ??InitDMP_7
//  160 	  {
//  161 	  	PrintChar("dmp_load_motion_driver_firmware complete ......\n");
        LDR.N    R0,??DataTable2_8
        BL       PrintChar
        B.N      ??InitDMP_8
//  162 	  }
//  163 	  else
//  164 	  {
//  165 	  	PrintChar("dmp_load_motion_driver_firmware come across error ......\n");
??InitDMP_7:
        LDR.N    R0,??DataTable2_9
        BL       PrintChar
//  166 	  }
//  167 	  //dmp_set_orientation
//  168 	  if(!dmp_set_orientation(inv_orientation_matrix_to_scalar(gyro_orientation)))
??InitDMP_8:
        LDR.N    R0,??DataTable2_10
        BL       inv_orientation_matrix_to_scalar
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       dmp_set_orientation
        CMP      R0,#+0
        BNE.N    ??InitDMP_9
//  169 	  {
//  170 	  	 PrintChar("dmp_set_orientation complete ......\n");
        LDR.N    R0,??DataTable2_11
        BL       PrintChar
        B.N      ??InitDMP_10
//  171 	  }
//  172 	  else
//  173 	  {
//  174 	  	 PrintChar("dmp_set_orientation come across error ......\n");
??InitDMP_9:
        LDR.N    R0,??DataTable2_12
        BL       PrintChar
//  175 	  }
//  176 	  //dmp_enable_feature
//  177 	  if(!dmp_enable_feature(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_TAP |
//  178 	        DMP_FEATURE_ANDROID_ORIENT | DMP_FEATURE_SEND_RAW_ACCEL | DMP_FEATURE_SEND_CAL_GYRO |
//  179 	        DMP_FEATURE_GYRO_CAL))
??InitDMP_10:
        MOVW     R0,#+371
        BL       dmp_enable_feature
        CMP      R0,#+0
        BNE.N    ??InitDMP_11
//  180 	  {
//  181 	  	 PrintChar("dmp_enable_feature complete ......\n");
        LDR.N    R0,??DataTable2_13
        BL       PrintChar
        B.N      ??InitDMP_12
//  182 	  }
//  183 	  else
//  184 	  {
//  185 	  	 PrintChar("dmp_enable_feature come across error ......\n");
??InitDMP_11:
        LDR.N    R0,??DataTable2_14
        BL       PrintChar
//  186 	  }
//  187 	  //dmp_set_fifo_rate
//  188 	  if(!dmp_set_fifo_rate(DEFAULT_MPU_HZ))
??InitDMP_12:
        MOVS     R0,#+100
        BL       dmp_set_fifo_rate
        CMP      R0,#+0
        BNE.N    ??InitDMP_13
//  189 	  {
//  190 	  	 PrintChar("dmp_set_fifo_rate complete ......\n");
        LDR.N    R0,??DataTable2_15
        BL       PrintChar
        B.N      ??InitDMP_14
//  191 	  }
//  192 	  else
//  193 	  {
//  194 	  	 PrintChar("dmp_set_fifo_rate come across error ......\n");
??InitDMP_13:
        LDR.N    R0,??DataTable2_16
        BL       PrintChar
//  195 	  }
//  196 	  run_self_test();
??InitDMP_14:
        BL       run_self_test
//  197 	  if(!mpu_set_dmp_state(1))
        MOVS     R0,#+1
        BL       mpu_set_dmp_state
        CMP      R0,#+0
        BNE.N    ??InitDMP_15
//  198 	  {
//  199 	  	 PrintChar("mpu_set_dmp_state complete ......\n");
        LDR.N    R0,??DataTable2_17
        BL       PrintChar
        B.N      ??InitDMP_0
//  200 	  }
//  201 	  else
//  202 	  {
//  203 	  	 PrintChar("mpu_set_dmp_state come across error ......\n");
??InitDMP_15:
        LDR.N    R0,??DataTable2_18
        BL       PrintChar
//  204 	  }
//  205   }
//  206     
//  207 }
??InitDMP_0:
        POP      {R4,PC}          ;; return
//  208 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 void PrintChar(int8 const* string)
//  210 {
PrintChar:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  211     printf(string);
        MOVS     R0,R4
        BL       printf
//  212 }
        POP      {R4,PC}          ;; return
//  213 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  214 void get_ms(unsigned long *time)
//  215 {
//  216 
//  217 }
get_ms:
        BX       LR               ;; return
//  218 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  219 void delay_ms(uint32 n)
//  220 {
delay_ms:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  221     delayms(n);
        MOVS     R0,R4
        BL       delayms
//  222 }
        POP      {R4,PC}          ;; return
//  223 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 int8_t i2cwrite(uint8 addr, uint8 reg, uint8 len, uint8 * data)
//  225 {
i2cwrite:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  226     MPU6050_DMP_MultiWriteReg(addr, reg, len, data);
        MOVS     R3,R7
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_DMP_MultiWriteReg
//  227 	return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
//  228 }
//  229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 int8_t i2cread(uint8 addr, uint8 reg, uint8 len, uint8 *buf)
//  231 {
i2cread:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  232     MPU6050_DMP_MultiReadReg(addr, reg, len, buf);
        MOVS     R3,R7
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       MPU6050_DMP_MultiReadReg
//  233 		return 0;
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return
//  234 }
//  235 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  236 long labs(long l)
//  237 {
//  238     if(l>=0)
labs:
        CMP      R0,#+0
        BPL.N    ??labs_0
//  239     {
//  240         return l;
//  241     }
//  242     else
//  243     {
//  244         return -l;
??labs_1:
        RSBS     R0,R0,#+0
??labs_0:
        BX       LR               ;; return
//  245     }
//  246 }
//  247 
//  248 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  249 void RefreshDMP(void)
//  250 {
RefreshDMP:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+48
//  251      unsigned long sensor_timestamp;
//  252      short gyro[3], accel[3], sensors;
//  253      unsigned char more;
//  254      long quat[4];
//  255 	 //float Yaw,Roll,Pitch;
//  256 	 dmp_read_fifo(gyro, accel, quat, &sensor_timestamp, &sensors,
//  257                 &more);	 
        ADD      R0,SP,#+8
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+10
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+12
        ADD      R2,SP,#+16
        ADD      R1,SP,#+32
        ADD      R0,SP,#+40
        BL       dmp_read_fifo
//  258 	 /* Gyro and accel data are written to the FIFO by the DMP in chip
//  259      * frame and hardware units. This behavior is convenient because it
//  260      * keeps the gyro and accel outputs of dmp_read_fifo and
//  261      * mpu_read_fifo consistent.
//  262      */
//  263 /*     if (sensors & INV_XYZ_GYRO )
//  264        send_packet(PACKET_TYPE_GYRO, gyro);
//  265      if (sensors & INV_XYZ_ACCEL)
//  266         send_packet(PACKET_TYPE_ACCEL, accel); */
//  267      /* Unlike gyro and accel, quaternions are written to the FIFO in
//  268      * the body frame, q30. The orientation is set by the scalar passed
//  269      * to dmp_set_orientation during initialization.
//  270      */
//  271      if (sensors & INV_WXYZ_QUAT )
        LDRSH    R0,[SP, #+10]
        LSLS     R0,R0,#+23
        BPL.W    ??RefreshDMP_0
//  272 	 {
//  273 	     //PrintChar("in Calculating quaternion steps.....\n");
//  274 	 	 q0=quat[0] / q30;
        LDR      R0,[SP, #+16]
        BL       __aeabi_i2f
        MOVS     R1,#+1317011456
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_19
        STR      R0,[R1, #+0]
//  275 		 q1=quat[1] / q30;
        LDR      R0,[SP, #+20]
        BL       __aeabi_i2f
        MOVS     R1,#+1317011456
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_20
        STR      R0,[R1, #+0]
//  276 		 q2=quat[2] / q30;
        LDR      R0,[SP, #+24]
        BL       __aeabi_i2f
        MOVS     R1,#+1317011456
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_21
        STR      R0,[R1, #+0]
//  277 		 q3=quat[3] / q30;
        LDR      R0,[SP, #+28]
        BL       __aeabi_i2f
        MOVS     R1,#+1317011456
        BL       __aeabi_fdiv
        LDR.N    R1,??DataTable2_22
        STR      R0,[R1, #+0]
//  278 		 Pitch  = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3; // pitch
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        MOVS     R1,#-1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        BL       asin
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_23  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_24
        STR      R0,[R1, #+0]
//  279   	     Roll = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3; // roll
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        MOVS     R1,#-1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R1,#+1065353216
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fadd
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       atan2
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_23  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_25
        STR      R0,[R1, #+0]
//  280 		 Yaw = 	atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3) * 57.3;
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_19
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_20
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fadd
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_21
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        MOVS     R4,R0
        LDR.N    R0,??DataTable2_22
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R4
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable2_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_21
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R6,R0
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable2_22
        LDR      R1,[R1, #+0]
        BL       __aeabi_fmul
        MOVS     R1,R0
        MOVS     R0,R6
        BL       __aeabi_fadd
        MOVS     R1,#+1073741824
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       atan2
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_23  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_26
        STR      R0,[R1, #+0]
//  281 	 }
//  282 	 if(sensors & INV_XYZ_GYRO)
//  283 	 {}
//  284 	 if(sensors & INV_XYZ_ACCEL)
//  285 	 {}
//  286       //send_packet(PACKET_TYPE_QUAT, quat);
//  287     
//  288 }
??RefreshDMP_0:
        ADD      SP,SP,#+48
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     `?<Constant "setting bias succesfu...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     `?<Constant "mpu initialization co...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     `?<Constant "mpu_set_sensor comple...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     `?<Constant "mpu_set_sensor come a...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     `?<Constant "mpu_configure_fifo co...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     `?<Constant "mpu_configure_fifo co...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     `?<Constant "mpu_set_sample_rate c...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     `?<Constant "mpu_set_sample_rate e...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     `?<Constant "dmp_load_motion_drive...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     `?<Constant "dmp_load_motion_drive...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     gyro_orientation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     `?<Constant "dmp_set_orientation c...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     `?<Constant "dmp_set_orientation c...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     `?<Constant "dmp_enable_feature co...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     `?<Constant "dmp_enable_feature co...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     `?<Constant "dmp_set_fifo_rate com...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     `?<Constant "dmp_set_fifo_rate com...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     `?<Constant "mpu_set_dmp_state com...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     `?<Constant "mpu_set_dmp_state com...">_1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     q0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     q1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     q2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     q3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x404ca666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_24:
        DC32     Pitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_25:
        DC32     Roll

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_26:
        DC32     Yaw

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "setting bias succesfu...">`:
        DATA
        DC8 "setting bias succesfully ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu initialization co...">`:
        DATA
        DC8 "mpu initialization complete......\012 "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_sensor comple...">`:
        DATA
        DC8 "mpu_set_sensor complete ......\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_sensor come a...">`:
        DATA
        DC8 "mpu_set_sensor come across error ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_configure_fifo co...">`:
        DATA
        DC8 "mpu_configure_fifo complete ......\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_configure_fifo co...">_1`:
        DATA
        DC8 "mpu_configure_fifo come across error ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_sample_rate c...">`:
        DATA
        DC8 "mpu_set_sample_rate complete ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_sample_rate e...">`:
        DATA
        DC8 "mpu_set_sample_rate error ......\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_load_motion_drive...">`:
        DATA
        DC8 "dmp_load_motion_driver_firmware complete ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_load_motion_drive...">_1`:
        DATA
        DC8 64H, 6DH, 70H, 5FH, 6CH, 6FH, 61H, 64H
        DC8 5FH, 6DH, 6FH, 74H, 69H, 6FH, 6EH, 5FH
        DC8 64H, 72H, 69H, 76H, 65H, 72H, 5FH, 66H
        DC8 69H, 72H, 6DH, 77H, 61H, 72H, 65H, 20H
        DC8 63H, 6FH, 6DH, 65H, 20H, 61H, 63H, 72H
        DC8 6FH, 73H, 73H, 20H, 65H, 72H, 72H, 6FH
        DC8 72H, 20H, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_set_orientation c...">`:
        DATA
        DC8 "dmp_set_orientation complete ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_set_orientation c...">_1`:
        DATA
        DC8 "dmp_set_orientation come across error ......\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_enable_feature co...">`:
        DATA
        DC8 "dmp_enable_feature complete ......\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_enable_feature co...">_1`:
        DATA
        DC8 "dmp_enable_feature come across error ......\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_set_fifo_rate com...">`:
        DATA
        DC8 "dmp_set_fifo_rate complete ......\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "dmp_set_fifo_rate com...">_1`:
        DATA
        DC8 "dmp_set_fifo_rate come across error ......\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_dmp_state com...">`:
        DATA
        DC8 "mpu_set_dmp_state complete ......\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "mpu_set_dmp_state com...">_1`:
        DATA
        DC8 "mpu_set_dmp_state come across error ......\012"

        END
// 
//    24 bytes in section .bss
//    16 bytes in section .data
//   752 bytes in section .rodata
// 1 194 bytes in section .text
// 
// 1 194 bytes of CODE  memory
//   752 bytes of CONST memory
//    40 bytes of DATA  memory
//
//Errors: none
//Warnings: none
