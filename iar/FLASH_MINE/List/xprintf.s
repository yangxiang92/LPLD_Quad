///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.40.1.53790/W32 for ARM    27/Mar/2014  21:01:20 /
// Copyright 1999-2012 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib /
//                    \MyLib\xprintf.c                                        /
//    Command line =  E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib /
//                    \MyLib\xprintf.c -D LPLD_K60 -lCN                       /
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
//                    2\iar\..\source\module\ -I                              /
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
//                    MINE\List\xprintf.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME xprintf

        #define SHT_PROGBITS 0x1

        PUBLIC put_dump
        PUBLIC xatoi
        PUBLIC xfgets
        PUBLIC xfprintf
        PUBLIC xfputs
        PUBLIC xfunc_in
        PUBLIC xfunc_out
        PUBLIC xgets
        PUBLIC xprintf
        PUBLIC xputc
        PUBLIC xputs
        PUBLIC xsprintf

// E:\ShawnDocuments\IAR_WorkSpace\LPLD_Quad_V2\source\lib\MyLib\xprintf.c
//    1 /*------------------------------------------------------------------------/
//    2 /  Universal string handler for user console interface
//    3 /-------------------------------------------------------------------------/
//    4 /
//    5 /  Copyright (C) 2011, ChaN, all right reserved.
//    6 /
//    7 / * This software is a free software and there is NO WARRANTY.
//    8 / * No restriction on use. You can use, modify and redistribute it for
//    9 /   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
//   10 / * Redistributions of source code must retain the above copyright notice.
//   11 /
//   12 /-------------------------------------------------------------------------*/
//   13 
//   14 #include "xprintf.h"
//   15 
//   16 
//   17 #if _USE_XFUNC_OUT
//   18 #include <stdarg.h>

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   19 void (*xfunc_out)(unsigned char);	/* Pointer to the output stream */
xfunc_out:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   20 static char *outptr;
outptr:
        DS8 4
//   21 
//   22 /*----------------------------------------------*/
//   23 /* Put a character                              */
//   24 /*----------------------------------------------*/
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void xputc (char c)
//   27 {
xputc:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   28 	if (_CR_CRLF && c == '\n') xputc('\r');		/* CR -> CRLF */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BNE.N    ??xputc_0
        MOVS     R0,#+13
        BL       xputc
//   29 
//   30 	if (outptr) {
??xputc_0:
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xputc_1
//   31 		*outptr++ = (unsigned char)c;
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        STRB     R4,[R0, #+0]
        LDR.W    R0,??DataTable6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6
        STR      R0,[R1, #+0]
//   32 		return;
        B.N      ??xputc_2
//   33 	}
//   34 
//   35 	if (xfunc_out) xfunc_out((unsigned char)c);
??xputc_1:
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??xputc_3
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable6_1
        LDR      R1,[R1, #+0]
        BLX      R1
//   36 }
??xputc_3:
??xputc_2:
        POP      {R4,PC}          ;; return
//   37 
//   38 
//   39 
//   40 /*----------------------------------------------*/
//   41 /* Put a null-terminated string                 */
//   42 /*----------------------------------------------*/
//   43 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 void xputs (					/* Put a string to the default device */
//   45 	const char* str				/* Pointer to the string */
//   46 )
//   47 {
xputs:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   48 	while (*str)
??xputs_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??xputs_1
//   49 		xputc(*str++);
        LDRB     R0,[R4, #+0]
        BL       xputc
        ADDS     R4,R4,#+1
        B.N      ??xputs_0
//   50 }
??xputs_1:
        POP      {R4,PC}          ;; return
//   51 
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void xfputs (					/* Put a string to the specified device */
//   54 	void(*func)(unsigned char),	/* Pointer to the output function */
//   55 	const char*	str				/* Pointer to the string */
//   56 )
//   57 {
xfputs:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   58 	void (*pf)(unsigned char);
//   59 
//   60 
//   61 	pf = xfunc_out;		/* Save current output device */
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
//   62 	xfunc_out = func;	/* Switch output to specified device */
        LDR.W    R0,??DataTable6_1
        STR      R4,[R0, #+0]
//   63 	while (*str)		/* Put the string */
??xfputs_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??xfputs_1
//   64 		xputc(*str++);
        LDRB     R0,[R5, #+0]
        BL       xputc
        ADDS     R5,R5,#+1
        B.N      ??xfputs_0
//   65 	xfunc_out = pf;		/* Restore output device */
??xfputs_1:
        LDR.W    R0,??DataTable6_1
        STR      R6,[R0, #+0]
//   66 }
        POP      {R4-R6,PC}       ;; return
//   67 
//   68 
//   69 
//   70 /*----------------------------------------------*/
//   71 /* Formatted string output                      */
//   72 /*----------------------------------------------*/
//   73 /*  xprintf("%d", 1234);			"1234"
//   74     xprintf("%6d,%3d%%", -200, 5);	"  -200,  5%"
//   75     xprintf("%-6u", 100);			"100   "
//   76     xprintf("%ld", 12345678L);		"12345678"
//   77     xprintf("%04x", 0xA3);			"00a3"
//   78     xprintf("%08LX", 0x123ABC);		"00123ABC"
//   79     xprintf("%016b", 0x550F);		"0101010100001111"
//   80     xprintf("%s", "String");		"String"
//   81     xprintf("%-4s", "abc");			"abc "
//   82     xprintf("%4s", "abc");			" abc"
//   83     xprintf("%c", 'a');				"a"
//   84     xprintf("%f", 10.0);            <xprintf lacks floating point support>
//   85 */
//   86 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   87 static
//   88 void xvprintf (
//   89 	const char*	fmt,	/* Pointer to the format string */
//   90 	va_list arp			/* Pointer to arguments */
//   91 )
//   92 {
xvprintf:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+28
        MOVS     R7,R0
        MOVS     R4,R1
//   93 	unsigned int r, i, j, w, f;
//   94 	unsigned long v;
//   95 	char s[16], c, d, *p;
//   96 
//   97 
//   98 	for (;;) {
//   99 		c = *fmt++;					/* Get a char */
??xvprintf_0:
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
//  100 		if (!c) break;				/* End of format? */
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.W    ??xvprintf_1
//  101 		if (c != '%') {				/* Pass through it if not a % sequense */
??xvprintf_2:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+37
        BEQ.N    ??xvprintf_3
//  102 			xputc(c); continue;
        LDRB     R0,[SP, #+0]
        BL       xputc
        B.N      ??xvprintf_0
//  103 		}
//  104 		f = 0;
??xvprintf_3:
        MOVS     R0,#+0
        MOVS     R6,R0
//  105 		c = *fmt++;					/* Get first char of the sequense */
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
//  106 		if (c == '0') {				/* Flag: '0' padded */
        LDRB     R0,[SP, #+0]
        CMP      R0,#+48
        BNE.N    ??xvprintf_4
//  107 			f = 1; c = *fmt++;
        MOVS     R0,#+1
        MOVS     R6,R0
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
        B.N      ??xvprintf_5
//  108 		} else {
//  109 			if (c == '-') {			/* Flag: left justified */
??xvprintf_4:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+45
        BNE.N    ??xvprintf_5
//  110 				f = 2; c = *fmt++;
        MOVS     R0,#+2
        MOVS     R6,R0
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
//  111 			}
//  112 		}
//  113 		for (w = 0; c >= '0' && c <= '9'; c = *fmt++)	/* Minimum width */
??xvprintf_5:
        MOVS     R0,#+0
        MOV      R8,R0
??xvprintf_6:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+48
        BCC.N    ??xvprintf_7
        LDRB     R0,[SP, #+0]
        CMP      R0,#+58
        BCS.N    ??xvprintf_7
//  114 			w = w * 10 + c - '0';
        MOVS     R0,#+10
        LDRB     R1,[SP, #+0]
        MLA      R0,R0,R8,R1
        SUBS     R8,R0,#+48
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
        B.N      ??xvprintf_6
//  115 		if (c == 'l' || c == 'L') {	/* Prefix: Size is long int */
??xvprintf_7:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+108
        BEQ.N    ??xvprintf_8
        LDRB     R0,[SP, #+0]
        CMP      R0,#+76
        BNE.N    ??xvprintf_9
//  116 			f |= 4; c = *fmt++;
??xvprintf_8:
        ORRS     R6,R6,#0x4
        LDRB     R0,[R7, #+0]
        STRB     R0,[SP, #+0]
        ADDS     R7,R7,#+1
//  117 		}
//  118 		if (!c) break;				/* End of format? */
??xvprintf_9:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.W    ??xvprintf_1
//  119 		d = c;
??xvprintf_10:
        LDRB     R0,[SP, #+0]
        MOV      R10,R0
//  120 		if (d >= 'a') d -= 0x20;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+97
        BCC.N    ??xvprintf_11
        SUBS     R10,R10,#+32
//  121 		switch (d) {				/* Type is... */
??xvprintf_11:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R0,R10
        CMP      R0,#+66
        BEQ.N    ??xvprintf_12
        CMP      R0,#+67
        BEQ.N    ??xvprintf_13
        CMP      R0,#+68
        BEQ.N    ??xvprintf_14
        CMP      R0,#+79
        BEQ.N    ??xvprintf_15
        CMP      R0,#+83
        BEQ.N    ??xvprintf_16
        CMP      R0,#+85
        BEQ.N    ??xvprintf_14
        CMP      R0,#+88
        BEQ.N    ??xvprintf_17
        B.N      ??xvprintf_18
//  122 		case 'S' :					/* String */
//  123 			p = va_arg(arp, char*);
??xvprintf_16:
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+8]
        ADDS     R4,R4,#+4
//  124 			for (j = 0; p[j]; j++) ;
        MOVS     R0,#+0
        MOVS     R5,R0
??xvprintf_19:
        LDR      R0,[SP, #+8]
        LDRB     R0,[R5, R0]
        CMP      R0,#+0
        BEQ.N    ??xvprintf_20
        ADDS     R5,R5,#+1
        B.N      ??xvprintf_19
//  125 			while (!(f & 2) && j++ < w) xputc(' ');
??xvprintf_20:
        LSLS     R0,R6,#+30
        BMI.N    ??xvprintf_21
        MOVS     R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R8
        BCS.N    ??xvprintf_21
        MOVS     R0,#+32
        BL       xputc
        B.N      ??xvprintf_20
//  126 			xputs(p);
??xvprintf_21:
        LDR      R0,[SP, #+8]
        BL       xputs
//  127 			while (j++ < w) xputc(' ');
??xvprintf_22:
        MOVS     R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R8
        BCS.N    ??xvprintf_23
        MOVS     R0,#+32
        BL       xputc
        B.N      ??xvprintf_22
//  128 			continue;
??xvprintf_23:
        B.N      ??xvprintf_0
//  129 		case 'C' :					/* Character */
//  130 			xputc((char)va_arg(arp, int)); continue;
??xvprintf_13:
        MOVS     R0,R4
        ADDS     R4,R0,#+4
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       xputc
        B.N      ??xvprintf_0
//  131 		case 'B' :					/* Binary */
//  132 			r = 2; break;
??xvprintf_12:
        MOVS     R0,#+2
        STR      R0,[SP, #+4]
        B.N      ??xvprintf_24
//  133 		case 'O' :					/* Octal */
//  134 			r = 8; break;
??xvprintf_15:
        MOVS     R0,#+8
        STR      R0,[SP, #+4]
        B.N      ??xvprintf_24
//  135 		case 'D' :					/* Signed decimal */
//  136 		case 'U' :					/* Unsigned decimal */
//  137 			r = 10; break;
??xvprintf_14:
        MOVS     R0,#+10
        STR      R0,[SP, #+4]
        B.N      ??xvprintf_24
//  138 		case 'X' :					/* Hexdecimal */
//  139 			r = 16; break;
??xvprintf_17:
        MOVS     R0,#+16
        STR      R0,[SP, #+4]
        B.N      ??xvprintf_24
//  140 		default:					/* Unknown type (passthrough) */
//  141 			xputc(c); continue;
??xvprintf_18:
        LDRB     R0,[SP, #+0]
        BL       xputc
        B.N      ??xvprintf_0
//  142 		}
//  143 
//  144 		/* Get an argument and put it in numeral */
//  145 		v = (f & 4) ? va_arg(arp, long) : ((d == 'D') ? (long)va_arg(arp, int) : (long)va_arg(arp, unsigned int));
??xvprintf_24:
        LSLS     R0,R6,#+29
        BPL.N    ??xvprintf_25
        LDR      R9,[R4, #+0]
        ADDS     R4,R4,#+4
        B.N      ??xvprintf_26
??xvprintf_25:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+68
        BNE.N    ??xvprintf_27
        LDR      R9,[R4, #+0]
        ADDS     R4,R4,#+4
        B.N      ??xvprintf_28
??xvprintf_27:
        LDR      R9,[R4, #+0]
        ADDS     R4,R4,#+4
//  146 		if (d == 'D' && (v & 0x80000000)) {
??xvprintf_28:
??xvprintf_26:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+68
        BNE.N    ??xvprintf_29
        CMP      R9,#+0
        BPL.N    ??xvprintf_29
//  147 			v = 0 - v;
        RSBS     R9,R9,#+0
//  148 			f |= 8;
        ORRS     R6,R6,#0x8
//  149 		}
//  150 		i = 0;
??xvprintf_29:
        MOVS     R0,#+0
        MOV      R11,R0
//  151 		do {
//  152 			d = (char)(v % r); v /= r;
??xvprintf_30:
        LDR      R0,[SP, #+4]
        UDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        MOV      R10,R0
        LDR      R0,[SP, #+4]
        UDIV     R9,R9,R0
//  153 			if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+10
        BCC.N    ??xvprintf_31
        LDRB     R0,[SP, #+0]
        CMP      R0,#+120
        BNE.N    ??xvprintf_32
        MOVS     R0,#+39
        B.N      ??xvprintf_33
??xvprintf_32:
        MOVS     R0,#+7
??xvprintf_33:
        ADDS     R10,R0,R10
//  154 			s[i++] = d + '0';
??xvprintf_31:
        ADD      R0,SP,#+12
        ADDS     R1,R10,#+48
        STRB     R1,[R11, R0]
        ADDS     R11,R11,#+1
//  155 		} while (v && i < sizeof(s));
        CMP      R9,#+0
        BEQ.N    ??xvprintf_34
        CMP      R11,#+16
        BCC.N    ??xvprintf_30
//  156 		if (f & 8) s[i++] = '-';
??xvprintf_34:
        LSLS     R0,R6,#+28
        BPL.N    ??xvprintf_35
        ADD      R0,SP,#+12
        MOVS     R1,#+45
        STRB     R1,[R11, R0]
        ADDS     R11,R11,#+1
//  157 		j = i; d = (f & 1) ? '0' : ' ';
??xvprintf_35:
        MOV      R5,R11
        LSLS     R0,R6,#+31
        BPL.N    ??xvprintf_36
        MOVS     R10,#+48
        B.N      ??xvprintf_37
??xvprintf_36:
        MOVS     R10,#+32
//  158 		while (!(f & 2) && j++ < w) xputc(d);
??xvprintf_37:
??xvprintf_38:
        LSLS     R0,R6,#+30
        BMI.N    ??xvprintf_39
        MOVS     R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R8
        BCS.N    ??xvprintf_39
        MOV      R0,R10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       xputc
        B.N      ??xvprintf_38
//  159 		do xputc(s[--i]); while(i);
??xvprintf_39:
        SUBS     R11,R11,#+1
        ADD      R0,SP,#+12
        LDRB     R0,[R11, R0]
        BL       xputc
        CMP      R11,#+0
        BNE.N    ??xvprintf_39
//  160 		while (j++ < w) xputc(' ');
??xvprintf_40:
        MOVS     R0,R5
        ADDS     R5,R0,#+1
        CMP      R0,R8
        BCS.W    ??xvprintf_0
        MOVS     R0,#+32
        BL       xputc
        B.N      ??xvprintf_40
//  161 	}
//  162 }
??xvprintf_1:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
//  163 
//  164 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 void xprintf (			/* Put a formatted string to the default device */
//  166 	const char*	fmt,	/* Pointer to the format string */
//  167 	...					/* Optional arguments */
//  168 )
//  169 {
xprintf:
        PUSH     {R1-R3}
        PUSH     {R4,R5,LR}
        MOVS     R4,R0
//  170 	va_list arp;
//  171 
//  172 
//  173 	va_start(arp, fmt);
        ADD      R0,SP,#+12
        MOVS     R5,R0
//  174 	xvprintf(fmt, arp);
        MOVS     R1,R5
        MOVS     R0,R4
        BL       xvprintf
//  175 	va_end(arp);
//  176 }
        POP      {R4,R5}
        LDR      PC,[SP], #+16    ;; return
//  177 
//  178 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 void xsprintf (			/* Put a formatted string to the memory */
//  180 	char* buff,			/* Pointer to the output buffer */
//  181 	const char*	fmt,	/* Pointer to the format string */
//  182 	...					/* Optional arguments */
//  183 )
//  184 {
xsprintf:
        PUSH     {R2,R3}
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  185 	va_list arp;
//  186 
//  187 
//  188 	outptr = buff;		/* Switch destination for memory */
        LDR.N    R0,??DataTable6
        STR      R4,[R0, #+0]
//  189 
//  190 	va_start(arp, fmt);
        ADD      R0,SP,#+16
        MOVS     R6,R0
//  191 	xvprintf(fmt, arp);
        MOVS     R1,R6
        MOVS     R0,R5
        BL       xvprintf
//  192 	va_end(arp);
//  193 
//  194 	*outptr = 0;		/* Terminate output string with a \0 */
        LDR.N    R0,??DataTable6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  195 	outptr = 0;			/* Switch destination for device */
        LDR.N    R0,??DataTable6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  196 }
        POP      {R4-R6}
        LDR      PC,[SP], #+12    ;; return
//  197 
//  198 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  199 void xfprintf (					/* Put a formatted string to the specified device */
//  200 	void(*func)(unsigned char),	/* Pointer to the output function */
//  201 	const char*	fmt,			/* Pointer to the format string */
//  202 	...							/* Optional arguments */
//  203 )
//  204 {
xfprintf:
        PUSH     {R2,R3}
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  205 	va_list arp;
//  206 	void (*pf)(unsigned char);
//  207 
//  208 
//  209 	pf = xfunc_out;		/* Save current output device */
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
//  210 	xfunc_out = func;	/* Switch output to specified device */
        LDR.N    R0,??DataTable6_1
        STR      R4,[R0, #+0]
//  211 
//  212 	va_start(arp, fmt);
        ADD      R0,SP,#+24
        MOVS     R6,R0
//  213 	xvprintf(fmt, arp);
        MOVS     R1,R6
        MOVS     R0,R5
        BL       xvprintf
//  214 	va_end(arp);
//  215 
//  216 	xfunc_out = pf;		/* Restore output device */
        LDR.N    R0,??DataTable6_1
        STR      R7,[R0, #+0]
//  217 }
        POP      {R0,R4-R7}
        LDR      PC,[SP], #+12    ;; return
//  218 
//  219 
//  220 
//  221 /*----------------------------------------------*/
//  222 /* Dump a line of binary dump                   */
//  223 /*----------------------------------------------*/
//  224 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void put_dump (
//  226 	const void* buff,		/* Pointer to the array to be dumped */
//  227 	unsigned long addr,		/* Heading address value */
//  228 	int len,				/* Number of items to be dumped */
//  229 	int width				/* Size of the items (DF_CHAR, DF_SHORT, DF_LONG) */
//  230 )
//  231 {
put_dump:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOV      R11,R3
//  232 	int i;
//  233 	const unsigned char *bp;
//  234 	const unsigned short *sp;
//  235 	const unsigned long *lp;
//  236 
//  237 
//  238 	xprintf("%08lX ", addr);		/* address */
        MOVS     R1,R5
        LDR.N    R0,??DataTable6_2
        BL       xprintf
//  239 
//  240 	switch (width) {
        MOV      R0,R11
        CMP      R0,#+1
        BEQ.N    ??put_dump_0
        CMP      R0,#+2
        BEQ.N    ??put_dump_1
        CMP      R0,#+4
        BEQ.N    ??put_dump_2
        B.N      ??put_dump_3
//  241 	case DW_CHAR:
//  242 		bp = buff;
??put_dump_0:
        MOV      R8,R4
//  243 		for (i = 0; i < len; i++)		/* Hexdecimal dump */
        MOVS     R0,#+0
        MOVS     R7,R0
??put_dump_4:
        CMP      R7,R6
        BGE.N    ??put_dump_5
//  244 			xprintf(" %02X", bp[i]);
        LDRB     R1,[R7, R8]
        LDR.N    R0,??DataTable6_3
        BL       xprintf
        ADDS     R7,R7,#+1
        B.N      ??put_dump_4
//  245 		xputc(' ');
??put_dump_5:
        MOVS     R0,#+32
        BL       xputc
//  246 		for (i = 0; i < len; i++)		/* ASCII dump */
        MOVS     R0,#+0
        MOVS     R7,R0
??put_dump_6:
        CMP      R7,R6
        BGE.N    ??put_dump_7
//  247 			xputc((bp[i] >= ' ' && bp[i] <= '~') ? bp[i] : '.');
        LDRB     R0,[R7, R8]
        CMP      R0,#+32
        BCC.N    ??put_dump_8
        LDRB     R0,[R7, R8]
        CMP      R0,#+127
        BCS.N    ??put_dump_8
        LDRB     R0,[R7, R8]
        B.N      ??put_dump_9
??put_dump_8:
        MOVS     R0,#+46
??put_dump_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       xputc
        ADDS     R7,R7,#+1
        B.N      ??put_dump_6
//  248 		break;
??put_dump_7:
        B.N      ??put_dump_3
//  249 	case DW_SHORT:
//  250 		sp = buff;
??put_dump_1:
        MOV      R9,R4
//  251 		do								/* Hexdecimal dump */
//  252 			xprintf(" %04X", *sp++);
??put_dump_10:
        LDRH     R1,[R9, #+0]
        LDR.N    R0,??DataTable6_4
        BL       xprintf
        ADDS     R9,R9,#+2
//  253 		while (--len);
        SUBS     R6,R6,#+1
        CMP      R6,#+0
        BNE.N    ??put_dump_10
//  254 		break;
        B.N      ??put_dump_3
//  255 	case DW_LONG:
//  256 		lp = buff;
??put_dump_2:
        MOV      R10,R4
//  257 		do								/* Hexdecimal dump */
//  258 			xprintf(" %08LX", *lp++);
??put_dump_11:
        LDR      R1,[R10, #+0]
        LDR.N    R0,??DataTable6_5
        BL       xprintf
        ADDS     R10,R10,#+4
//  259 		while (--len);
        SUBS     R6,R6,#+1
        CMP      R6,#+0
        BNE.N    ??put_dump_11
//  260 		break;
//  261 	}
//  262 
//  263 	xputc('\n');
??put_dump_3:
        MOVS     R0,#+10
        BL       xputc
//  264 }
        POP      {R0,R4-R11,PC}   ;; return
//  265 
//  266 #endif /* _USE_XFUNC_OUT */
//  267 
//  268 
//  269 
//  270 #if _USE_XFUNC_IN

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//  271 unsigned char (*xfunc_in)(void);	/* Pointer to the input stream */
xfunc_in:
        DS8 4
//  272 
//  273 /*----------------------------------------------*/
//  274 /* Get a line from the input                    */
//  275 /*----------------------------------------------*/
//  276 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  277 int xgets (		/* 0:End of stream, 1:A line arrived */
//  278 	char* buff,	/* Pointer to the buffer */
//  279 	int len		/* Buffer length */
//  280 )
//  281 {
xgets:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  282 	int c, i;
//  283 
//  284 
//  285 	if (!xfunc_in) return 0;		/* No input function specified */
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??xgets_0
        MOVS     R0,#+0
        B.N      ??xgets_1
//  286 
//  287 	i = 0;
??xgets_0:
        MOVS     R0,#+0
        MOVS     R7,R0
//  288 	for (;;) {
//  289 		c = xfunc_in();				/* Get a char from the incoming stream */
??xgets_2:
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        BLX      R0
        MOVS     R6,R0
//  290 		if (!c) return 0;			/* End of stream? */
        CMP      R6,#+0
        BNE.N    ??xgets_3
        MOVS     R0,#+0
        B.N      ??xgets_1
//  291 		if (c == '\r') break;		/* End of line? */
??xgets_3:
        CMP      R6,#+13
        BNE.N    ??xgets_4
//  292 		if (c == '\b' && i) {		/* Back space? */
//  293 			i--;
//  294 			if (_LINE_ECHO) xputc(c);
//  295 			continue;
//  296 		}
//  297 		if (c >= ' ' && i < len - 1) {	/* Visible chars */
//  298 			buff[i++] = c;
//  299 			if (_LINE_ECHO) xputc(c);
//  300 		}
//  301 	}
//  302 	buff[i] = 0;	/* Terminate with a \0 */
        MOVS     R0,#+0
        STRB     R0,[R7, R4]
//  303 	if (_LINE_ECHO) xputc('\n');
        MOVS     R0,#+10
        BL       xputc
//  304 	return 1;
        MOVS     R0,#+1
        B.N      ??xgets_1
??xgets_4:
        CMP      R6,#+8
        BNE.N    ??xgets_5
        CMP      R7,#+0
        BEQ.N    ??xgets_5
        SUBS     R7,R7,#+1
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       xputc
        B.N      ??xgets_2
??xgets_5:
        CMP      R6,#+32
        BLT.N    ??xgets_2
        SUBS     R0,R5,#+1
        CMP      R7,R0
        BGE.N    ??xgets_2
        STRB     R6,[R7, R4]
        ADDS     R7,R7,#+1
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       xputc
        B.N      ??xgets_2
??xgets_1:
        POP      {R1,R4-R7,PC}    ;; return
//  305 }
//  306 
//  307 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 int xfgets (	/* 0:End of stream, 1:A line arrived */
//  309 	unsigned char (*func)(void),	/* Pointer to the input stream function */
//  310 	char* buff,	/* Pointer to the buffer */
//  311 	int len		/* Buffer length */
//  312 )
//  313 {
xfgets:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  314 	unsigned char (*pf)(void);
//  315 	int n;
//  316 
//  317 
//  318 	pf = xfunc_in;			/* Save current input device */
        LDR.N    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        MOVS     R7,R0
//  319 	xfunc_in = func;		/* Switch input to specified device */
        LDR.N    R0,??DataTable6_6
        STR      R4,[R0, #+0]
//  320 	n = xgets(buff, len);	/* Get a line */
        MOVS     R1,R6
        MOVS     R0,R5
        BL       xgets
        MOV      R8,R0
//  321 	xfunc_in = pf;			/* Restore input device */
        LDR.N    R0,??DataTable6_6
        STR      R7,[R0, #+0]
//  322 
//  323 	return n;
        MOV      R0,R8
        POP      {R4-R8,PC}       ;; return
//  324 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     outptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     xfunc_out

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     `?<Constant "%08lX ">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     `?<Constant " %02X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     `?<Constant " %04X">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     `?<Constant " %08LX">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     xfunc_in
//  325 
//  326 
//  327 /*----------------------------------------------*/
//  328 /* Get a value of the string                    */
//  329 /*----------------------------------------------*/
//  330 /*	"123 -5   0x3ff 0b1111 0377  w "
//  331 	    ^                           1st call returns 123 and next ptr
//  332 	       ^                        2nd call returns -5 and next ptr
//  333                    ^                3rd call returns 1023 and next ptr
//  334                           ^         4th call returns 15 and next ptr
//  335                                ^    5th call returns 255 and next ptr
//  336                                   ^ 6th call fails and returns 0
//  337 */
//  338 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  339 int xatoi (			/* 0:Failed, 1:Successful */
//  340 	char **str,		/* Pointer to pointer to the string */
//  341 	long *res		/* Pointer to the valiable to store the value */
//  342 )
//  343 {
xatoi:
        PUSH     {R4-R6}
        MOVS     R2,R0
//  344 	unsigned long val;
//  345 	unsigned char c, r, s = 0;
        MOVS     R6,#+0
//  346 
//  347 
//  348 	*res = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//  349 
//  350 	while ((c = **str) == ' ') (*str)++;	/* Skip leading spaces */
??xatoi_0:
        LDR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+32
        BNE.N    ??xatoi_1
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        B.N      ??xatoi_0
//  351 
//  352 	if (c == '-') {		/* negative? */
??xatoi_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+45
        BNE.N    ??xatoi_2
//  353 		s = 1;
        MOVS     R0,#+1
        MOVS     R6,R0
//  354 		c = *(++(*str));
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
//  355 	}
//  356 
//  357 	if (c == '0') {
??xatoi_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+48
        BNE.N    ??xatoi_3
//  358 		c = *(++(*str));
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
//  359 		switch (c) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+98
        BEQ.N    ??xatoi_4
        CMP      R0,#+120
        BNE.N    ??xatoi_5
//  360 		case 'x':		/* hexdecimal */
//  361 			r = 16; c = *(++(*str));
??xatoi_6:
        MOVS     R0,#+16
        MOVS     R5,R0
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
//  362 			break;
        B.N      ??xatoi_7
//  363 		case 'b':		/* binary */
//  364 			r = 2; c = *(++(*str));
??xatoi_4:
        MOVS     R0,#+2
        MOVS     R5,R0
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
//  365 			break;
        B.N      ??xatoi_7
//  366 		default:
//  367 			if (c <= ' ') return 1;	/* single zero */
??xatoi_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+33
        BCS.N    ??xatoi_8
        MOVS     R0,#+1
        B.N      ??xatoi_9
//  368 			if (c < '0' || c > '9') return 0;	/* invalid char */
??xatoi_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+48
        BCC.N    ??xatoi_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+58
        BCC.N    ??xatoi_11
??xatoi_10:
        MOVS     R0,#+0
        B.N      ??xatoi_9
//  369 			r = 8;		/* octal */
??xatoi_11:
        MOVS     R0,#+8
        MOVS     R5,R0
        B.N      ??xatoi_7
//  370 		}
//  371 	} else {
//  372 		if (c < '0' || c > '9') return 0;	/* EOL or invalid char */
??xatoi_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+48
        BCC.N    ??xatoi_12
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+58
        BCC.N    ??xatoi_13
??xatoi_12:
        MOVS     R0,#+0
        B.N      ??xatoi_9
//  373 		r = 10;			/* decimal */
??xatoi_13:
        MOVS     R0,#+10
        MOVS     R5,R0
//  374 	}
//  375 
//  376 	val = 0;
??xatoi_7:
        MOVS     R0,#+0
        MOVS     R3,R0
//  377 	while (c > ' ') {
??xatoi_14:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+33
        BCC.N    ??xatoi_15
//  378 		if (c >= 'a') c -= 0x20;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+97
        BCC.N    ??xatoi_16
        SUBS     R4,R4,#+32
//  379 		c -= '0';
??xatoi_16:
        SUBS     R4,R4,#+48
//  380 		if (c >= 17) {
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+17
        BCC.N    ??xatoi_17
//  381 			c -= 7;
        SUBS     R4,R4,#+7
//  382 			if (c <= 9) return 0;	/* invalid char */
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+10
        BCS.N    ??xatoi_17
        MOVS     R0,#+0
        B.N      ??xatoi_9
//  383 		}
//  384 		if (c >= r) return 0;		/* invalid char for current radix */
??xatoi_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCC.N    ??xatoi_18
        MOVS     R0,#+0
        B.N      ??xatoi_9
//  385 		val = val * r + c;
??xatoi_18:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MLA      R3,R5,R3,R4
//  386 		c = *(++(*str));
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R2, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R4,R0
        B.N      ??xatoi_14
//  387 	}
//  388 	if (s) val = 0 - val;			/* apply sign if needed */
??xatoi_15:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??xatoi_19
        RSBS     R3,R3,#+0
//  389 
//  390 	*res = val;
??xatoi_19:
        STR      R3,[R1, #+0]
//  391 	return 1;
        MOVS     R0,#+1
??xatoi_9:
        POP      {R4-R6}
        BX       LR               ;; return
//  392 }

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "%08lX ">`:
        DATA
        DC8 "%08lX "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %02X">`:
        DATA
        DC8 " %02X"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %04X">`:
        DATA
        DC8 " %04X"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant " %08LX">`:
        DATA
        DC8 " %08LX"
        DC8 0

        END
//  393 
//  394 #endif /* _USE_XFUNC_IN */
// 
//    12 bytes in section .bss
//    32 bytes in section .rodata
// 1 418 bytes in section .text
// 
// 1 418 bytes of CODE  memory
//    32 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
