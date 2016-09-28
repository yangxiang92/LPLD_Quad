/******************************************************************************
 *       MS5611_reg_map.h ----- The reg map of MS5611(pressure sensor)                           *
 *       (c) Copyright 2012 HUST RENESAS LAB, The Department of CSE, HUST      *
 *                        ALL Rights Reserved                                  *
 *Filename             :  MS5611_reg_map.h                                         * 
 *Programmer(s)        :  Yang Xiang                                             *
 *Descriptions         :                                                       *
 *Modification History :                                                       *
 *01a 2014/4/2 9:33:49                                                       *
 ******************************************************************************/
#ifndef _MS5611_REG_MAP_H_
#define _MS5611_REG_MAP_H_

#define MS5611_ADRESS 0x77

#define MS5611_PROM_COEFF_1   0xA2  // 2 bytes
#define MS5611_PROM_COEFF_2   0xA4  // 2 bytes
#define MS5611_PROM_COEFF_3   0xA6  // 2 bytes
#define MS5611_PROM_COEFF_4   0xA8  // 2 bytes
#define MS5611_PROM_COEFF_5   0xAA  // 2 bytes
#define MS5611_PROM_COEFF_6   0xAC  // 2 bytes

#define	MS5611_ADC            0x00  // ADC Read
#define MS5611_RESET          0x1E  // RESET

#define	MS5611_D1_OSR_256     0x40  // 3 bytes
#define	MS5611_D1_OSR_512     0x42  // 3 bytes
#define	MS5611_D1_OSR_1024    0x44  // 3 bytes
#define	MS5611_D1_OSR_2048    0x46  // 3 bytes
#define	MS5611_D1_OSR_4096    0x48  // 3 bytes
#define	MS5611_D2_OSR_256     0x50  // 3 bytes
#define	MS5611_D2_OSR_512     0x52  // 3 bytes
#define	MS5611_D2_OSR_1024    0x54  // 3 bytes
#define	MS5611_D2_OSR_2048    0x56  // 3 bytes
#define	MS5611_D2_OSR_4096    0x58  // 3 bytes

#define MS5611_ADC_D1         0x01
#define MS5611_ADC_D2         0x02

#define POW_2_7   128
#define POW_2_8   256
#define POW_2_15  32768
#define POW_2_16  65536
#define POW_2_21  2097152
#define POW_2_23  8388608


#endif
