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

#include "xstatus.h"
#include <stdlib.h>
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "fsl.h"
#include "xtmrctr_l.h"
#include "xil_printf.h"
#include "xintc_l.h"
#include "xil_exception.h"
#include "xgpio_l.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/

#define INTC_BASEADDR			XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID

#ifdef __USE_AXI_HW_TIMER__				// if AXI hardware timer is used
#define HARDWARE_TIMER_INT_ID		XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR
#define HARDWARE_TIMER_INT_MASK		XPAR_AXI_TIMER_0_INTERRUPT_MASK
#else									// if FIT hardware timer is used
#define HARDWARE_TIMER_INT_ID		XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR
#define HARDWARE_TIMER_INT_MASK		XPAR_FIT_TIMER_0_INTERRUPT_MASK
#endif

#define BUTTONS_INT_ID			XPAR_MICROBLAZE_0_AXI_INTC_AXI_GPIO_BUTTONS_IP2INTC_IRPT_INTR
#define BUTTONS_INT_MASK		XPAR_AXI_GPIO_BUTTONS_IP2INTC_IRPT_MASK

#define BUTTON_UP_MASK		0x01
#define BUTTON_LEFT_MASK	0x02
#define BUTTON_DOWN_MASK	0x04
#define BUTTON_RIGHT_MASK	0x08
#define BUTTON_CENTER_MASK	0x10

#define N	32

/******************************** Data types *********************************/

typedef int bool;

typedef enum {StartMenu, TestMode, GameMode, Executing, SelectPerson, Finish, None} TFSMState;

typedef struct SButtonStatus
{
	bool upPressed;
	bool downPressed;
	bool centerPressed;
	bool rightPressed;
	bool leftPressed;

	bool upPrevious;
	bool downPrevious;
	bool centerPrevious;
	bool rightPrevious;
	bool leftPrevious;

} TButtonStatus;

/********************** Global variables (module scope) **********************/

static TButtonStatus buttonStatus = { FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE };

static int val[]={	6	, 14	, 184	, 53	, 82	, 58	, 98	, 48	, 210	, 110	, 171	, 190	, 22	, 75	, 170	, 244	, 183	,
					166	, 63	, 80	, 132	, 97	, 148	, 235	, 52	, 66	, 220	, 141	, 254	, 211	, 68	, 230	, 12	, 72	,
					41	, 94	, 165	, 61	, 199	, 2		, 156	, 120	, 100	, 252	, 176	, 17	, 226	, 125	, 178	, 223	, 146	,
					168	, 144	, 25	, 228	, 122	, 222	, 193	, 69	, 163	, 172	, 119	, 201	, 8		, 253	, 46	, 153	, 50	,
					11	, 196	, 60	, 55	, 215	, 39	, 129	, 202	, 237	, 92	, 142	, 118	, 224	, 145	, 95	, 213	, 83	,
					225	, 167	, 77	, 34	, 49	, 137	, 3		, 93	, 7		, 216	, 246	, 134	, 229	, 200	, 123	, 209	, 24	,
					174	, 130	, 250	, 239	, 76	, 1		, 255	, 242	, 71	, 155	, 37	, 38	, 208	, 181	, 219	, 115	, 162	,
					138	, 96	, 243	, 251	, 227	, 194	, 40	, 64	, 42	, 99	, 157	, 86	, 65	, 89	, 149	, 108	, 104	,
					111	, 117	, 185	, 143	, 29	, 195	, 158	, 84	, 207	, 192	, 169	, 204	, 43	, 21	, 206	, 191	, 131	,
					128	, 32	, 164	, 36	, 212	, 10	, 186	, 177	, 179	, 27	, 47	, 57	, 221	, 159	, 139	, 0		, 203	,
					18	, 136	, 147	, 74	, 151	, 173	, 247	, 116	, 85	, 56	, 231	, 154	, 78	, 127	, 249	, 13	, 135	,
					35	, 79	, 124	, 150	, 152	, 23	, 5		, 238	, 54	, 241	, 91	, 33	, 240	, 161	, 102	, 112	, 26	,
					198	, 133	, 62	, 51	, 28	, 180	, 214	, 30	, 4		, 245	, 9		, 232	, 103	, 73	, 106	, 217	, 88	,
					15	, 81	, 45	, 31	, 188	, 44	, 234	, 19	, 218	, 67	, 175	, 197	, 109	, 160	, 187	, 101	, 205	,
					90	, 233	, 121	, 236	, 114	, 189	, 140	, 87	, 126	, 105	, 113	, 107	, 20	, 70	, 248	, 182	, 16	, 59};

static unsigned int validButtons = 0x1F;
static unsigned int count = 0;
static unsigned int selectP = 0;
static bool sel = FALSE;
static int choice;


 /***************************** Helper functions ******************************/

 bool DetectAndClearRisingEdge(bool* pOldValue, bool newValue)
 {
 	bool retValue;

 	retValue = (!(*pOldValue)) && newValue;
 	*pOldValue = newValue;
 	return retValue;
 }

 bool ModularInc(unsigned int* pValue, unsigned int modulo)
 {
 	if (*pValue < modulo - 1)
 	{
 		(*pValue)++;
 		return FALSE;
 	}
 	else
 	{
 		*pValue = 0;
 		return TRUE;
 	}
 }

 bool ModularDec(unsigned int* pValue, unsigned int modulo)
 {
 	if (*pValue > 0)
 	{
 		(*pValue)--;
 		return FALSE;
 	}
 	else
 	{
 		*pValue = modulo - 1;
 		return TRUE;
 	}
 }

 /******************* Game operation functions ********************/


 void ReadButtons(TButtonStatus* pButtonStatus)
 {
 	unsigned int buttonsPattern;

 	buttonsPattern = XGpio_ReadReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_DATA_OFFSET) & validButtons;

 	pButtonStatus->upPressed    	= buttonsPattern & BUTTON_UP_MASK;
 	pButtonStatus->downPressed  	= buttonsPattern & BUTTON_DOWN_MASK;
 	pButtonStatus->centerPressed   	= buttonsPattern & BUTTON_CENTER_MASK;
 	pButtonStatus->rightPressed 	= buttonsPattern & BUTTON_RIGHT_MASK;
 	pButtonStatus->leftPressed  	= buttonsPattern & BUTTON_LEFT_MASK;
 }

 void UpdateStateMachine(TFSMState* pFSMState, TButtonStatus* pButtonStatus, char** characteristics, char** persons, char** buttons, bool finished)
 {
 	pButtonStatus->upPressed     = DetectAndClearRisingEdge(&pButtonStatus->upPrevious    , pButtonStatus->upPressed);
 	pButtonStatus->downPressed   = DetectAndClearRisingEdge(&pButtonStatus->downPrevious  , pButtonStatus->downPressed);
 	pButtonStatus->centerPressed = DetectAndClearRisingEdge(&pButtonStatus->centerPrevious, pButtonStatus->centerPressed);
 	pButtonStatus->rightPressed  = DetectAndClearRisingEdge(&pButtonStatus->rightPrevious , pButtonStatus->rightPressed);
 	pButtonStatus->leftPressed   = DetectAndClearRisingEdge(&pButtonStatus->leftPrevious  , pButtonStatus->leftPressed);

 	switch (*pFSMState) {
 	case StartMenu:
 		if (pButtonStatus->rightPressed)
 		{
 			*pFSMState = TestMode;
 		}
 		else if(pButtonStatus->leftPressed)
 		{
			xil_printf("\rChose characteristic:\n");
			for (int i = 0; i < 5-count; i++)
				xil_printf("\r%s%s\n", *(characteristics+i), *(buttons+i));
			xil_printf("\n");

 			*pFSMState = GameMode;
 		}
 		break;
 	case TestMode:
 		if(finished)
			*pFSMState = Finish;
 		break;
 	case GameMode:
		if(pButtonStatus->upPressed | pButtonStatus->downPressed | pButtonStatus->centerPressed | pButtonStatus->rightPressed | pButtonStatus->leftPressed)
		{
			*pFSMState = Executing;
		}
 		else if(sel)
 		{
			xil_printf("\rChose person - left/right button\n");
			xil_printf("\rSelect person - center button\n\n");

			*pFSMState = SelectPerson;
 		}
 		break;
 	case Executing:
		xil_printf("\rPersons:\n");

		for  (int i = 0; i < 8; i++)
			xil_printf("\r%d - %s\n", i, *(persons+i));
		xil_printf("\n");

		xil_printf("\rChose characteristic:\n");

		for (int i = 0; i < 5; i++)
			xil_printf("\r%s%s\n", *(characteristics+i), *(buttons+i));
		xil_printf("\n");

		count++;

		*pFSMState = GameMode;
 		break;
 	case SelectPerson:
 		if (pButtonStatus->centerPressed)
 		{
			xil_printf("\rClick center button to go back to the start menu\n\n");

 			*pFSMState = Finish;
 		}
 		break;
 	case Finish:
 		if(pButtonStatus->centerPressed)
 		{
			xil_printf("\n\rChose game mode:\n");
			xil_printf("\rNormal - left button\n");
			xil_printf("\rTest - right button\n\n");

 			*pFSMState = StartMenu;
 		}
 		break;
 	default:
 		xil_printf("Something wrong append");
 	}
 }

 void selectPerson(TFSMState fsmState,  const TButtonStatus* pButtonStatus, unsigned int modulo)
 {
	 if (fsmState == SelectPerson) {
		 validButtons = validButtons | 0x1F;
		 if (pButtonStatus->rightPressed)
			 ModularDec(&selectP, modulo);
		else if (pButtonStatus->leftPressed)
			 ModularInc(&selectP, modulo);
	 }
 }

 void selectCharacteristic(TFSMState fsmState,  const TButtonStatus* pButtonStatus, char** characteristics, char** buttons)
 {
	 if (fsmState == GameMode) {
		if (pButtonStatus->rightPressed)
		{
			validButtons = validButtons & 0x17;
			*(buttons+1) = " - X";
		}
		else if (pButtonStatus->leftPressed)
		{
			validButtons = validButtons & 0x1D;
			*(buttons) = " - X";
		}
		else if (pButtonStatus->upPressed)
		{
			validButtons = validButtons & 0x1E;
			*(buttons+3) = " - X";
		}
		else if (pButtonStatus->downPressed)
		{
			validButtons = validButtons & 0x1B;
			*(buttons+4) = " - X";
		}
		else if (pButtonStatus->centerPressed)
		{
			validButtons = validButtons & 0x0F;
			*(buttons+2) = " - X";
		}
	 }
 }

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
	char* p;
	int hash;

	for (p = pData1; p < pData1 + size; p+=4, pData2++)
	{
		hash = 4;
		hash = val[hash^*(p+0)];
		hash = val[hash^*(p+1)];
		hash = val[hash^*(p+2)];
		hash = val[hash^*(p+3)];

		if (*pData2 != hash)
		{
			return FALSE;
		}
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

/************************ Interrupt callback functions ***********************/

/* These functions are designed to look like an interrupt handler in a device
   driver. These are typically 2nd level handlers that are called from the
   interrupt controller interrupt handler. These handlers would typically
   perform device specific processing such as reading and writing the
   registers of the device to transfer data and to clear the interrupt
   condition (in the device) and pass any data to an application.

  @param	callbackParam is passed back to the device driver's interrupt
		handler by the XIntc driver.  It was given to the XIntc driver
		in the XIntc_Connect() function call. It is typically a pointer
		to the device driver instance variable if using the Xilinx Level
		1 device drivers. In this example, we do not care about the
		callback reference, so we passed it a 0 when connecting the
		handler to the XIntc driver and we make no use of it here.

  @return	None.

  @note		None.

IMPORTANT NOTE: time consuming operations must not be executed here!!!
				ISR and interrupt callbacks must perform the strictly
				necessary operations and return as quick as possible.
				Leave time consuming operations for the main function
				(or functions invoked in the context of the application -
				 not in the ISR or device driver context)

******************************************************************************/

// This function will be called back by the INTC ISR at every timer IRQ
void TimerIntCallbackHandler(void* callbackParam)
{
	static unsigned hwTmrEventCount = 0;
	hwTmrEventCount++;

	static char *characteristics[5] = {	"So tem 1 olho","Careca é favor","Se fosse mais magro nao se via","Elefantes tem orelhas mais pquenas","Qual sobrancelhas, bigode na testa"};
	static char *buttons[5] = {" - left button"," - right button"," - center button"," - up button"," - down button"};

	static char *persons[8] = {"Christian Guy", "Mike Litoris", "Moe Lester", "Dickie Head", "Jesus Condom", "Robert Fagot", "Beautiful Existence", "Willie Stroker"};

	static int data[5][8] = {{1,4,5,8,7},{1,2,4,7,8},{1,3,5,6,7},{2,3,5,6,8},{2,3,4,6}};

	static TFSMState     fsmState = Finish;

	static bool finished = FALSE;

	if (hwTmrEventCount % 100 == 0) // 8Hz
	{
		selectCharacteristic(fsmState, &buttonStatus, &characteristics, &buttons);
		selectPerson(fsmState, &buttonStatus,8);

		UpdateStateMachine(&fsmState, &buttonStatus, &characteristics, &persons, &buttons, finished);

		if (count == 3)
		{
			sel = TRUE;
		}
	}

#ifdef __USE_AXI_HW_TIMER__		// if AXI hardware timer is used
	// Clear hardware timer event (interrupt request flag)
	unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_INT_OCCURED_MASK);
#endif
}

// This function will be called back by the INTC ISR whenever a button is pressed or released
void ButtonsIntCallbackHandler(void* callbackParam)
{
	// Read push buttons
	ReadButtons(&buttonStatus);


	// Clear GPIO interrupt request flag
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_ISR_OFFSET, XGPIO_IR_CH1_MASK);
}

/************************* Interrupt Setup function **************************/

int SetupInterrupts(unsigned int intcBaseAddress)
{
	// Connect a callback handler that will be called by the ISR when
	// an interrupt for the timer occurs,
	// to perform the specific interrupt processing for that device
	XIntc_RegisterHandler(intcBaseAddress, HARDWARE_TIMER_INT_ID,
		(XInterruptHandler)TimerIntCallbackHandler, (void *)0);

#ifdef __USE_AXI_HW_TIMER__		// if AXI hardware timer is used
	// Enable interrupt requests at the AXI timer
	unsigned int tmrCtrlStatReg = XTmrCtr_GetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0);
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, tmrCtrlStatReg | XTC_CSR_ENABLE_INT_MASK);
#endif

	// Connect a callback handler that will be called by the ISR when
	// an interrupt for the buttons GPIO occurs,
	// to perform the specific interrupt processing for that device
	XIntc_RegisterHandler(intcBaseAddress, BUTTONS_INT_ID,
		(XInterruptHandler)ButtonsIntCallbackHandler, (void *)0);

	// Enable interrupt requests at the buttons GPIO
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_IER_OFFSET, XGPIO_IR_CH1_MASK);
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_GIE_OFFSET, XGPIO_GIE_GINTR_ENABLE_MASK);

	// Enable interrupts for all the peripheral devices that cause interrupts,
	XIntc_EnableIntr(intcBaseAddress, HARDWARE_TIMER_INT_MASK | BUTTONS_INT_MASK);

	// Set the hardware and the master interrupt enable bits at the INTC
	XIntc_Out32(intcBaseAddress + XIN_MER_OFFSET, XIN_INT_HARDWARE_ENABLE_MASK |
		XIN_INT_MASTER_ENABLE_MASK);

	// This step is processor specific, connect the handler for the
	// interrupt controller to the interrupt source for the processor
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
		(Xil_ExceptionHandler)XIntc_DeviceInterruptHandler,
		INTC_DEVICE_ID);

	// Enable exceptions
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

int main()
{
	int status;

	char srcData[] = "mais careca era impossivel";
	char dstData[sizeof(srcData)/(sizeof(char)*2)-1] = {};
	unsigned int timeElapsed;

	init_platform();

	XGpio_WriteReg(XPAR_AXI_GPIO_SWITCHES_BASEADDR, XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_TRI_OFFSET, 0xFFFF0000);

#ifdef __USE_AXI_HW_TIMER__		// if AXI hardware timer is used
	// Disable hardware timer
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 0x00000000);
	// Set hardware timer load value
	XTmrCtr_SetLoadReg(XPAR_AXI_TIMER_0_BASEADDR, 0, 125000); // Counter will wrap around every 1.25 ms
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_LOAD_MASK);
	// Enable hardware timer, down counting with auto reload
	XTmrCtr_SetControlStatusReg(XPAR_AXI_TIMER_0_BASEADDR, 0, XTC_CSR_ENABLE_TMR_MASK |
		XTC_CSR_AUTO_RELOAD_MASK |
		XTC_CSR_DOWN_COUNT_MASK);
	xil_printf("\n\rAXI timer configured.");
#else							// if FIT hardware timer is used
	xil_printf("\n\rUsing FIT timer.");
#endif

	status = SetupInterrupts(INTC_BASEADDR);
	if (status != XST_SUCCESS)
	{
		xil_printf("\n\rInterrupts setup failed\r\nExiting...");
		cleanup_platform();
		return XST_FAILURE;
	}
	xil_printf("\n\rInterrupts setup successful.");
/*
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
*/
	choice = (int) rand()*7.99;
	xil_printf("\rClick center button to go to the start menu\n\n");

	while (1)
		{
			XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, sel ? (0x0001 << selectP) : 0x0000);
		}

	cleanup_platform();
	return XST_SUCCESS;
}
