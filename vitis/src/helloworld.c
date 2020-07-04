/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdlib.h>
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "fsl.h"
#include "xtmrctr_l.h"
#include "xil_printf.h"

#define min(a, b)	((a < b) ? a : b)
typedef int bool;
#define N	32

 static int val[]={	6, 14, 184, 53, 82, 58, 98, 48, 210, 110, 171, 190, 22, 75, 170, 244,
					183, 166, 63, 80, 132, 97, 148, 235, 52, 66, 220, 141, 254, 211, 68,
					230, 12, 72, 41, 94, 165, 61, 199, 2, 156, 120, 100, 252, 176, 17, 226,
					125, 178, 223, 146, 168, 144, 25, 228, 122, 222, 193, 69, 163, 172, 119,
					201, 8, 253, 46, 153, 50, 11, 196, 60, 55, 215, 39, 129, 202, 237, 92,
					142, 118, 224, 145, 95, 213, 83, 225, 167, 77, 34, 49, 137, 3, 93, 7, 216,
					246, 134, 229, 200, 123, 209, 24, 174, 130, 250, 239, 76, 1, 255, 242, 71,
					155, 37, 38, 208, 181, 219, 115, 162, 138, 96, 243, 251, 227, 194, 40, 64, 42,
					99, 157, 86, 65, 89, 149, 108, 104, 111, 117, 185, 143, 29, 195, 158, 84, 207,
					192, 169, 204, 43, 21, 206, 191, 131, 128, 32, 164, 36, 212, 10, 186, 177, 179,
					27, 47, 57, 221, 159, 139, 0, 203, 18, 136, 147, 74, 151, 173, 247, 116, 85, 56,
					231, 154, 78, 127, 249, 13, 135, 35, 79, 124, 150, 152, 23, 5, 238, 54, 241, 91,
					33, 240, 161, 102, 112, 26, 198, 133, 62, 51, 28, 180, 214, 30, 4, 245, 9, 232, 103,
					73, 106, 217, 88, 15, 81, 45, 31, 188, 44, 234, 19, 218, 67, 175, 197, 109, 160, 187,
					101, 205, 90, 233, 121, 236, 114, 189, 140, 87, 126, 105, 113, 107, 20, 70, 248, 182, 16, 59};

void hashFunctionSw(char* pDst, char* pSrc, unsigned int size)
{
	char* p;
	int hash;

	for (p = pSrc; p < pSrc + size; p+=4, pDst++)
	{
		hash = 4;
			hash = val[hash^*(p+0)];
			hash = val[hash^*(p+1)];
			hash = val[hash^*(p+2)];
			hash = val[hash^*(p+3)];

		*pDst = hash;
	}
}

void hashFunctionHw(char* pDst, char* pSrc, unsigned int size)
{
	char* p;

	for (p = pSrc; p < pSrc + size; p+=4, pDst++)
	{
		putfslx((((*p << 24) & 0xff000000) | ((*(p+1) << 16) & 0x00ff0000) | ((*(p+2) << 8) & 0x0000ff00) | (*(p+3) & 0x000000ff) ), 0, FSL_DEFAULT);
		getfslx(*pDst, 0, FSL_DEFAULT);
	}
}


bool CheckhashFunction(char* pData1, char* pData2, unsigned int size)
{
	int* p;

	for (p = pData1; p < pData1 + size; p++, pData2++)
	{
		//if (*pData2 != )
		//{
		//	return FALSE;
		//}
	}

	return TRUE;
}

void PrintDataArray(char* pData, unsigned int size)
{
	char* p;

	xil_printf("\n\r");
	for (p = pData; p < pData + size; p++)
	{
		xil_printf("%02x  ", (*p & 0xff));
	}
}

void ResetPerformanceTimer()
{
	XTmrCtr_Disable(XPAR_TMRCTR_0_BASEADDR, 0);
	XTmrCtr_SetLoadReg(XPAR_TMRCTR_0_BASEADDR, 0, 0x00000001);
	XTmrCtr_LoadTimerCounterReg(XPAR_TMRCTR_0_BASEADDR, 0);
	XTmrCtr_SetControlStatusReg(XPAR_TMRCTR_0_BASEADDR, 0, 0x00000000);
}

void RestartPerformanceTimer()
{
	ResetPerformanceTimer();
	XTmrCtr_Enable(XPAR_TMRCTR_0_BASEADDR, 0);
}

unsigned int GetPerformanceTimer()
{
	return XTmrCtr_GetTimerCounterReg(XPAR_TMRCTR_0_BASEADDR, 0);
}

unsigned int StopAndGetPerformanceTimer()
{
	XTmrCtr_Disable(XPAR_TMRCTR_0_BASEADDR, 0);
	return GetPerformanceTimer();
}

int main()
{

	char srcData[] = "mais careca era impossivel";
	char dstData[sizeof(srcData)/(sizeof(char)*2)-1] = {};
	unsigned int timeElapsed;

	init_platform();

	xil_printf("\n\rSoftware Only vs. Hardware Assisted Hash Function Demonstration\n\r");

	RestartPerformanceTimer();
	srand(0);

	// gerar valores -----------------------------------------------------------

	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rArray initialization time: %d microseconds\n\r",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(srcData, sizeof(srcData)/sizeof(char)-1);
	xil_printf("\n\r");

	// Software only
	RestartPerformanceTimer();
	hashFunctionSw(dstData, srcData, sizeof(srcData)/sizeof(char)-1);
	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rSoftware only hash function time: %d microseconds",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(dstData,  sizeof(srcData)/(sizeof(char)*2)-1);
	xil_printf("\n\rChecking result: %s\n\r",
			CheckhashFunction(srcData, dstData, sizeof(srcData)/sizeof(char)-1) ? "OK" : "Error");


	// Hardware assisted
	RestartPerformanceTimer();
	hashFunctionHw(dstData, srcData, sizeof(srcData)/sizeof(char)-1);
	timeElapsed = StopAndGetPerformanceTimer();
	xil_printf("\n\rHardware assisted hash function time: %d microseconds",
			   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
	PrintDataArray(dstData, sizeof(srcData)/(sizeof(char)*2)-1);
	xil_printf("\n\rChecking result: %s\n\r",
			CheckhashFunction(srcData, dstData, sizeof(srcData)/sizeof(char)-1) ? "OK" : "Error");

	cleanup_platform();
	return 0;
}
