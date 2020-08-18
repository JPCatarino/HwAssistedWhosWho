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
#include "bloomfilter.h"
#include <stdbool.h>

/************************** Constant Definitions *****************************/

#define INTC_BASEADDR			XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID

#define HARDWARE_TIMER_INT_ID		XPAR_MICROBLAZE_0_AXI_INTC_FIT_TIMER_0_INTERRUPT_INTR
#define HARDWARE_TIMER_INT_MASK		XPAR_FIT_TIMER_0_INTERRUPT_MASK

#define BUTTONS_INT_ID			XPAR_MICROBLAZE_0_AXI_INTC_AXI_GPIO_BUTTONS_IP2INTC_IRPT_INTR
#define BUTTONS_INT_MASK		XPAR_AXI_GPIO_BUTTONS_IP2INTC_IRPT_MASK

#define BUTTON_UP_MASK		0x01
#define BUTTON_LEFT_MASK	0x02
#define BUTTON_DOWN_MASK	0x04
#define BUTTON_RIGHT_MASK	0x08
#define BUTTON_CENTER_MASK	0x10

#define N	32

/******************************** Data types *********************************/

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

static TButtonStatus buttonStatus = { false, false, false, false, false, false, false, false, false, false };

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

static bloomFilter* bloom_filter;
static unsigned int validButtons = 0x1F;
static unsigned int selectP = 0;
static int choice = 0;
static unsigned int count = 0;


 /***************************** Helper functions ******************************/

 bool DetectAndClearRisingEdge(bool* pOldValue, bool newValue)
 {
 	bool retValue;

 	retValue = (!(*pOldValue)) && newValue;
 	*pOldValue = newValue;
 	return retValue;
 }

 void ModularInc(unsigned int* pValue, unsigned int modulo)
 {
		if (*pValue < modulo - 1)
		{
			(*pValue)++;
		}
		else
		{
			*pValue = 0;
		}

 }

 void ModularDec(unsigned int* pValue, unsigned int modulo)
 {
		if (*pValue > 0)
		{
			(*pValue)--;
		}
		else
		{
			*pValue = modulo - 1;
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

 void UpdateStateMachine(TFSMState* pFSMState, TButtonStatus* pButtonStatus, char** characteristics, char** persons, char** buttons, char *ids)
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
			for (int i = 0; i < 5; i++)
				xil_printf("\r%s - %s\n", *(characteristics+i), *(buttons+i));
			xil_printf("\n");

 			*pFSMState = GameMode;
 		}
 		break;
 	case TestMode:
			*pFSMState = Finish;
 		break;
 	case GameMode:
		if(pButtonStatus->upPressed | pButtonStatus->downPressed | pButtonStatus->centerPressed | pButtonStatus->rightPressed | pButtonStatus->leftPressed)
		{
			*pFSMState = Executing;
		}
 		else if(count==3)
 		{
			xil_printf("\rChose person - left/right button\n");
			xil_printf("\rSelect person - center button\n\n");

			*pFSMState = SelectPerson;
 		}
 		break;
 	case Executing:

			xil_printf("\rPersons:\n");

			for  (int i = 0; i < 8; i++)
				xil_printf("\r%c - %s\n", *(ids+i), *(persons+i));
			xil_printf("\n");

			xil_printf("\rChose characteristic:\n");

			for (int i = 0; i < 5; i++)
				xil_printf("\r%s - %s\n", *(characteristics+i), *(buttons+i));
			xil_printf("\n");

			count++;

			*pFSMState = GameMode;

 		break;
 	case SelectPerson:
 		if (pButtonStatus->centerPressed)
 		{
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

 void selectPerson(TFSMState fsmState,  const TButtonStatus* pButtonStatus, unsigned int modulo, char *ids, bool *updown)
 {
	 validButtons = validButtons | 0x1F;

	 if(*(ids+selectP) == 'X' && *updown){
		 ModularDec(&selectP, modulo);
	 }
	 else if(*(ids+selectP) == 'X'){
		 ModularInc(&selectP, modulo);
	 }

	if (pButtonStatus->rightPressed){
		 ModularDec(&selectP, modulo);
		 *updown=true;
	}
	else if (pButtonStatus->leftPressed){
		 ModularInc(&selectP, modulo);
		 *updown=false;
	}
 }

 void selectCharacteristic(TFSMState fsmState,  const TButtonStatus* pButtonStatus, char** characteristics, char** buttons, int *charac)
 {
	if (pButtonStatus->rightPressed)
	{
		validButtons = validButtons & 0x17;
		*(buttons+1) = "X";
		*charac = 1;
	}
	else if (pButtonStatus->leftPressed)
	{
		validButtons = validButtons & 0x1D;
		*(buttons) = "X";
		*charac = 0;
	}
	else if (pButtonStatus->upPressed)
	{
		validButtons = validButtons & 0x1E;
		*(buttons+3) = "X";
		*charac = 3;
	}
	else if (pButtonStatus->downPressed)
	{
		validButtons = validButtons & 0x1B;
		*(buttons+4) = "X";
		*charac = 4;
	}
	else if (pButtonStatus->centerPressed)
	{
		validButtons = validButtons & 0x0F;
		*(buttons+2) = "X";
		*charac = 2;
	}
 }

 void filter(TFSMState fsmState, char** characteristics, char *ids, int *charac, int data[8][3])
 {
	 int tmp;

		if(!containsElem(bloom_filter, *(characteristics + *charac))){
			for (int i = 0; i < 8; i++){
				for (int j = 0; j < 3; j++){
					if(data[i][j] == *charac){
						*(ids+i)= 'X';
						break;
					}
				}
			}
		}
		else{
			for (int i = 0; i < 8; i++){
				tmp = 0;
				for (int j = 0; j < 3; j++){
			 		if(data[i][j] != *charac){
			 			tmp++;
					}
			 		if (tmp==3){
						*(ids+i)= 'X';
			 		}
				}
			}
		}
		*charac=-1;
 }

 void result(TFSMState fsmState)
 {
		if (choice == selectP)
			xil_printf("\rwin\n\n");
		else
			xil_printf("\rlose\n\n");
 }

 void reset(TFSMState fsmState, char** buttons, char* ids , bool* init)
 {

	*(buttons) = "left button";
	*(buttons+1) = "right button";
	*(buttons+2) = "center button";
	*(buttons+3) = "up button";
	*(buttons+4) = "down button";

	*(ids) = '0';
	*(ids+1) = '1';
	*(ids+2) = '2';
	*(ids+3) = '3';
	*(ids+4) = '4';
	*(ids+5) = '5';
	*(ids+6) = '6';
	*(ids+7) = '7';

	count = 0;

	*init= true;
	 validButtons = validButtons | 0x1F;
	 clearBloomFilter(bloom_filter);
	xil_printf("\rClick center button to go back to the start menu\n\n");
 }

 void inticiate(int data[8][3], bool* init, char** characteristics)
 {
		choice = rand()%8;

		insertElem(bloom_filter, *(characteristics + data[choice][0]));
		insertElem(bloom_filter, *(characteristics + data[choice][1]));
		insertElem(bloom_filter, *(characteristics + data[choice][2]));

		*init = false;
 }

 size_t djb2(const void* arg)
 {
	char* tmp = (char*) arg;
	char* c;
	size_t hash;
    int cnt = 0;
    int res[4] = {0,0,0,0};

 	for (c = tmp; c < tmp + 16; c+=4, cnt++){
 		hash = 5381;

		 for(int i = 0; i < 4; i++){
			 hash = ((hash << 5) + hash) + *(c+i);
		 }
		 res[cnt] = hash;
 	}
     return res[0]^res[1]^res[2]^res[3];
 }

 size_t pearson(const void* arg)
 {
    char* tmp = (char*) arg;
	char* c;
    size_t hash;
    int result;
    int cnt = 0;
    int res[4] = {0,0,0,0};

 	for (c = tmp; c < tmp + 16; c+=4, cnt++){

 	    hash = 4 % 256;

		 for(int i = 0; i < 4; i++){
			 hash = val[hash ^ *(c+i)];
		 }

		 res[cnt] = hash;

 	}
	 result = ((res[3] << 24) & 0xff000000) | ((res[2] << 16) & 0x00ff0000) | ((res[1] << 8) & 0x0000ff00) | (res[0] & 0x000000ff);

     return result;
 }

 size_t djb2Hw(const void* arg)
{
	char* p = (char*) arg;

	unsigned int result[4];

	putfslx((((*p << 24) & 0xff000000) | ((*(p+1) << 16) & 0x00ff0000) | ((*(p+2) << 8) & 0x0000ff00) | (*(p+3) & 0x000000ff) ), 0, FSL_DEFAULT);
	getfslx(result[0], 0, FSL_DEFAULT);

	putfslx((((*(p+4) << 24) & 0xff000000) | ((*(p+5) << 16) & 0x00ff0000) | ((*(p+6) << 8) & 0x0000ff00) | (*(p+7) & 0x000000ff) ), 0, FSL_DEFAULT);
	getfslx(result[1], 0, FSL_DEFAULT);

	putfslx((((*(p+8) << 24) & 0xff000000) | ((*(p+9) << 16) & 0x00ff0000) | ((*(p+10) << 8) & 0x0000ff00) | (*(p+11) & 0x000000ff) ), 0, FSL_DEFAULT);
	getfslx(result[2], 0, FSL_DEFAULT);

	putfslx((((*(p+12) << 24) & 0xff000000) | ((*(p+13) << 16) & 0x00ff0000) | ((*(p+14) << 8) & 0x0000ff00) | (*(p+15) & 0x000000ff) ), 0, FSL_DEFAULT);
	getfslx(result[3], 0, FSL_DEFAULT);

	return result[0]^result[1]^result[2]^result[3];
}

 size_t pearsonHw(const void* arg)
{
	char* tmp = (char*) arg;

	Xil_Out32(XPAR_PEARSONHASHING128PER_0_S00_AXI_BASEADDR + 0, ((*tmp << 24) & 0xff000000) | ((*(tmp+1) << 16) & 0x00ff0000) | ((*(tmp+2) << 8) & 0x0000ff00) | (*(tmp+3) & 0x000000ff));
	Xil_Out32(XPAR_PEARSONHASHING128PER_0_S00_AXI_BASEADDR + 4, ((*(tmp+4) << 24) & 0xff000000) | ((*(tmp+5) << 16) & 0x00ff0000) | ((*(tmp+6) << 8) & 0x0000ff00) | (*(tmp+7) & 0x000000ff));
	Xil_Out32(XPAR_PEARSONHASHING128PER_0_S00_AXI_BASEADDR + 8, ((*(tmp+8) << 24) & 0xff000000) | ((*(tmp+9) << 16) & 0x00ff0000) | ((*(tmp+10) << 8) & 0x0000ff00) | (*(tmp+11) & 0x000000ff));
	Xil_Out32(XPAR_PEARSONHASHING128PER_0_S00_AXI_BASEADDR + 12, ((*(tmp+12) << 24) & 0xff000000) | ((*(tmp+13) << 16) & 0x00ff0000) | ((*(tmp+14) << 8) & 0x0000ff00) | (*(tmp+15) & 0x000000ff));

	return Xil_In32(XPAR_PEARSONHASHING128PER_0_S00_AXI_BASEADDR + 16);
}

bool CheckhashFunction(unsigned int* pData1, unsigned int* pData2)
{
	if (*pData2 != *pData1){
		return false;
	}
	return true;
}

void PrintDataArray(unsigned int* pData)
{
	xil_printf("\n\r%x\n  ",*pData);
}

void test(char **characteristics)
{
	unsigned int timeElapsed;

	for (int i = 0; i < 5; i++){

		unsigned int dstData;
		unsigned int dstData1;

		unsigned int dstData2;
		unsigned int dstData3;

		xil_printf("\n\n\rCaracteristica a testar - %s\n\n  ",*(characteristics+i));

		xil_printf("\n\rSoftware vs. Hardware Assisted Hash Functions\n\r");

		RestartPerformanceTimer();
		srand(0);

		// Software only djb2
		RestartPerformanceTimer();
		dstData = djb2((characteristics+i));
		timeElapsed = StopAndGetPerformanceTimer();
		xil_printf("\n\rSoftware only djb2 time: %d microseconds",
				   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
		PrintDataArray(&dstData);

		// Hardware assisted djb2
		RestartPerformanceTimer();
		dstData1 = djb2Hw((characteristics+i));
		timeElapsed = StopAndGetPerformanceTimer();
		xil_printf("\n\rHardware assisted djb2 time: %d microseconds",
				   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
		PrintDataArray(&dstData1);

		xil_printf("\n\rChecking result: %s\n\r",
				CheckhashFunction(&dstData, &dstData1) ? "OK" : "Error");

		// Software only pearson
		RestartPerformanceTimer();
		dstData2 = pearson((characteristics+i));
		timeElapsed = StopAndGetPerformanceTimer();
		xil_printf("\n\rSoftware only pearson time: %d microseconds",
				   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
		PrintDataArray(&dstData2);

		// Hardware assisted pearson
		RestartPerformanceTimer();
		dstData3 = pearsonHw((characteristics+i));
		timeElapsed = StopAndGetPerformanceTimer();
		xil_printf("\n\rHardware assisted pearson time: %d microseconds",
				   timeElapsed / (XPAR_CPU_M_AXI_DP_FREQ_HZ / 1000000));
		PrintDataArray(&dstData3);

		xil_printf("\n\rChecking result: %s\n\r",
				CheckhashFunction(&dstData2, &dstData3) ? "OK" : "Error");
	}
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

	static char *characteristics[5] = {	"Tem uma espinha.", "Cabelo vermelho.", "Nao anda rebola.", "Orelhas grandes.", "Bigode na testa."};
	static char *buttons[5] = {"left button","right button","center button","up button","down button"};

	static char *persons[8] = {"Christian Guy", "Saad Maan", "Lord Brain", "Donald Duck", "Kash Register", "Crystal Methven", "Beautiful Existence", "Willie Stroker"};
	static char ids[8] = {'0', '1', '2', '3', '4', '5', '6', '7'};

	static int data[8][3] = {{0,2,4},{1,2,4},{0,1,3},{0,1,2},{2,3,4},{1,2,3},{0,1,4},{0,3,2}};

	static int charac = -1;

	static TFSMState fsmState = Finish;

	static bool init = true;
	static bool updown = false;

	if (hwTmrEventCount % 100 == 0)
	{

		if (init) inticiate(&data, &init, &characteristics);
		if (fsmState == Executing)  filter(fsmState, &characteristics, &ids, &charac, &data);

		UpdateStateMachine(&fsmState, &buttonStatus, &characteristics, &persons, &buttons, &ids);

	 	switch (fsmState) {
	 	case Executing:
			selectCharacteristic(fsmState, &buttonStatus, &characteristics, &buttons, &charac);
			break;
	 	case SelectPerson:
			 selectPerson(fsmState, &buttonStatus, 8, &ids, &updown);
			 break;
	 	case Finish:
	 		if (count==3){
				result(fsmState);
				reset(fsmState, &buttons, &ids,&init);
	 		}
	 		break;
	 	case TestMode:
	 		test(&characteristics);
			reset(fsmState, &buttons, &ids,&init);

	 		break;
	 	default:
	 		break;
	 	}
	}
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

	init_platform();

	XGpio_WriteReg(XPAR_AXI_GPIO_BUTTONS_BASEADDR, XGPIO_TRI_OFFSET, 0xFFFFFFFF);
	XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_TRI_OFFSET, 0xFFFF0000);

	xil_printf("\n\rUsing FIT timer.");

	status = SetupInterrupts(INTC_BASEADDR);
	if (status != XST_SUCCESS)
	{
		xil_printf("\n\rInterrupts setup failed\r\nExiting...");
		cleanup_platform();
		return XST_FAILURE;
	}
	xil_printf("\n\rInterrupts setup successful.");

	validButtons = validButtons | 0x1F;

	size_t (*hash_functions[])(const void*) = {
		pearsonHw,
		djb2Hw
	};

	bloom_filter = bloomFilterInit(1, hash_functions, 2);

	xil_printf("\rClick center button to go to the start menu\n\n");

	while (1)
		{
			XGpio_WriteReg(XPAR_AXI_GPIO_LEDS_BASEADDR, XGPIO_DATA_OFFSET, (count==3) ? (0x0001 << selectP) : 0x0000);
		}

	cleanup_platform();
	return XST_SUCCESS;
}
