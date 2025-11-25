#include <stdio.h>
#include <time.h>
#include <unistd.h>

#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xstatus.h"
#include "Delay.h"
#include "LCD_SPI.h"
#include "LCD_Driver.h"
#include "LCD_GUI.h"
#include "ADC.h"
#include "I2C.h"

#include "xtmrctr.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "sprites.h"

extern XGpio gpio0;
extern XSpi  SpiInstance;	 /* The instance of the SPI device */
extern XSpi  SpiInstance1;
extern const unsigned char font[] ;

/*********** Macros ************/

#define INTC_DEVICE_ID 			XPAR_SCUGIC_0_DEVICE_ID
#define TMR_DEVICE_ID_0			XPAR_TMRCTR_0_DEVICE_ID
#define TMR_DEVICE_ID_1			XPAR_TMRCTR_1_DEVICE_ID
#define TMR_INTERRUPT_ID_0 		XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR
#define TMR_INTERRUPT_ID_1		XPAR_FABRIC_AXI_TIMER_1_INTERRUPT_INTR
#define LUZ_INTERRUPT_ID		XPAR_FABRIC_AXI_GPIO_3_IP2INTC_IRPT_INTR

static XScuGic intr_ctl_instance;
static XScuGic_Config *intr_cfg_instance;
static XTmrCtr timer0_instance;
static XTmrCtr timer1_instance;
static XGpio gpio1;
static XGpio gpio2;
static XGpio gpio3;


#define BACKGROUND  WHITE
#define FOREGROUND BLUE
#define DELAY 1000
#define RESET_VALUE_0 0xFFB3B4C0 //Lectura de perifericos
#define RESET_VALUE_1 0xFFD9DA60 //Actualización de pantalla

int main_x = 50;
int main_y = 50;
int last_main_x = 50;
int last_main_y = 50;
int arriba = 0;
int abajo = 0;
int derecha = 0;
int izquierda = 0;
int fixed_x;
int fixed_y;
int joyx;
int joyy;
int button0;
int button1;
int Status;
volatile int GameState = 0; 		//0 es Juego Corriendo
				   					//1 es Juego En Pausa

void leer_datos(void *CallbackRef, u8 TmrCtrNumber);

void refresh_screen(void *CallbackRef, u8 TmrCtrNumber);

void pausa(void *CallbackRef);

void draw_player();

void refresh_player();

void draw_background();

int InterruptSystemSetup(XScuGic *intr_ctl,
						 XScuGic_Config *intr_cfg,
						 XTmrCtr *TmrCtr0,
						 XTmrCtr *TmrCtr1,
						 XGpio	*GpioLuz,
						 int InterruptId0,
						 int InterruptId1,
						 int InterruptId2);

int TmrCtrSetup(XTmrCtr *TmrCtr,
				int TmrNum,
				int RstValue,
				int TmrId,
				void (*handler)(void *CallBackRef, u8 TmrCtrNumber)
				);



int main(){

    //Initialize the UART
    init_platform();
	/* Initialize the GPIO 0 driver */
	Status = XGpio_Initialize(&gpio0, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio 0 Initialization Failed\r\n");
		return XST_FAILURE;
	}
	//Initialize Button AXI GPIO
	Status = XGpio_Initialize(&gpio1, XPAR_AXI_GPIO_1_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("Gpio 1 Initialization Failed\r\n");
		return XST_FAILURE;
	}
	//Initialize Candyman Controller AXI GPIO
	Status = XGpio_Initialize(&gpio2, XPAR_AXI_GPIO_2_DEVICE_ID);
		if (Status != XST_SUCCESS) {
			xil_printf("Gpio 2 Initialization Failed\r\n");
			return XST_FAILURE;
		}
	//Initialize Lux Interruption AXI GPIO
	Status = XGpio_Initialize(&gpio3, XPAR_AXI_GPIO_3_DEVICE_ID);
		if (Status != XST_SUCCESS){
			xil_printf("Gpio 3 Initialization Failed\r\n");
			return XST_FAILURE;
		}

	// Set up the AXI SPI Controller 0 (Screen)
	Status = XSpi_Init(&SpiInstance,SPI_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		xil_printf("SPI Mode Failed\r\n");
		return XST_FAILURE;
	}
	// Set up the AXI SPI Controller 0 (Joystick(x,y), accelerometer, potentiometer, mic)
	Status = init_adc(&SpiInstance1, SPI_DEVICE_ID_1);
	if (Status != XST_SUCCESS) {
		xil_printf("SPI-ADC Mode Failed\r\n");
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&gpio3, 1, 0xFFFFFFFF);

	//Initialize interruptions
	InterruptSystemSetup(&intr_ctl_instance,
						 intr_cfg_instance,
						 &timer0_instance,
						 &timer1_instance,
						 &gpio3,
						 TMR_INTERRUPT_ID_0,
						 TMR_INTERRUPT_ID_1,
						 LUZ_INTERRUPT_ID);

	// Set up the AXI IIC Controller 0 (temperature sensor, light sensor)
	Status = init_IIC();
	if (Status != XST_SUCCESS) {
		xil_printf("IIC Mode Failed\r\n");
		return XST_FAILURE;
	}

	LCD_SCAN_DIR LCD_ScanDir = SCAN_DIR_DFT;//SCAN_DIR_DFT = D2U_L2R
	LCD_Init(LCD_ScanDir );

	GUI_INTRO();
	XGpio_DiscreteWrite(&gpio2, 1, 0x0);
	delay_ms(500);
	LCD_Clear(GUI_BACKGROUND);
	draw_background();

	TmrCtrSetup(&timer0_instance, 0, RESET_VALUE_0, TMR_DEVICE_ID_0, leer_datos);
	TmrCtrSetup(&timer1_instance, 0, RESET_VALUE_1, TMR_DEVICE_ID_1, refresh_screen);

	return XST_SUCCESS;
}

void pausa(void *CallbackRef){
    XGpio_InterruptDisable(&gpio3, XGPIO_IR_CH1_MASK);

    if ((XGpio_InterruptGetStatus(&gpio3) & XGPIO_IR_CH1_MASK) != XGPIO_IR_CH1_MASK){
    	return;
    }
    xil_printf("Interrupcion activada");

	if (GameState != 1){
		GameState = 1;
		XGpio_DiscreteWrite(&gpio2, 1, 0x1); //Apagamos la música
		LCD_Clear(GUI_BACKGROUND);
	}
//	else if (GameState == 1){
//		GameState = 0;
//		draw_background();
//		XGpio_DiscreteWrite(&gpio2, 1, 0x1); //Encendemos la música
//	}
	(void)XGpio_InterruptClear(&gpio3, XGPIO_IR_CH1_MASK);
	XGpio_InterruptEnable(&gpio3, XGPIO_IR_CH1_MASK);

}

void leer_datos(void *CallbackRef, u8 TmrCtrNumber){

	read_opt();

	if (GameState != 1){
		//Procesamiento de mover jugador
		joyx = read_joyx();
		joyy = read_joyy();

		if (joyx > 600){
			main_x += 1;
			derecha = 1;
		}
		else if (joyx < 400){
			main_x -= 1;
			izquierda = 1;
		}

		if (joyy > 600){
			main_y -= 1;
			arriba = 1;
		}
		else if (joyy < 400){
			main_y += 1;
			abajo = 1;
		}

		if (main_x > 122){
			main_x = 122;
		}
		else if (main_x < 4){
			main_x = 4;
		}

		if (main_y > 122){
			main_y = 122;
		}
		else if (main_y < 4){
			main_y = 4;
		}
		//Procesamiento de cofre
		button0 = XGpio_DiscreteRead(&gpio1, 1);
		button1 = XGpio_DiscreteRead(&gpio1, 2);
	}
}

void refresh_screen(void *CallbackRef, u8 TmrCtrNumber){
	if (GameState != 1){
		draw_player();
		refresh_player();
		last_main_x = main_x;
		last_main_y = main_y;
	}
}

void draw_player(){
	for(int i = 0; i < 9; i++){
		for(int j = 0; j < 9; j++){
			GUI_DrawPoint(main_x - 4 + i, main_y - 4 + j, player_sprite[i][j], 1,1);
		}
	}
}

void refresh_player(){
	if (derecha == 1){
		fixed_x = last_main_x - 4;
		fixed_y = last_main_y - 4;
		for (int i = 0; i < 9; i++){
			GUI_DrawPoint(fixed_x, fixed_y + i, background_sprite[fixed_y + i][fixed_x],1,1);
		}
		derecha = 0;
	}
	if (izquierda == 1){
		fixed_x = last_main_x + 4;
		fixed_y = last_main_y - 4;
		for (int i = 0; i < 9; i++){
			GUI_DrawPoint(fixed_x, fixed_y + i, background_sprite[fixed_y + i][fixed_x],1,1);
		}
		izquierda = 0;
	}
	if (arriba == 1){
		fixed_x = last_main_x - 4;
		fixed_y = last_main_y + 4;
		for (int i = 0; i < 9; i++){
			GUI_DrawPoint(fixed_x + i, fixed_y, background_sprite[fixed_y][fixed_x + i],1,1);
		}
		arriba = 0;
	}
	if (abajo  == 1){
		fixed_x = last_main_x - 4;
		fixed_y = last_main_y - 4;
		for (int i = 0; i < 9; i++){
			GUI_DrawPoint(fixed_x + i, fixed_y, background_sprite[fixed_y][fixed_x + i],1,1);
		}
		abajo = 0;
	}
}

void draw_background(){
	for (int i = 0; i < 128; i++){
		for(int j = 0; j < 128; j++){
			GUI_DrawPoint(j,i,background_sprite[i][j],1,1);
		}
	}
}

int InterruptSystemSetup(XScuGic *intr_ctl,
						 XScuGic_Config *intr_cfg,
						 XTmrCtr *TmrCtr0,
						 XTmrCtr *TmrCtr1,
						 XGpio	 *GpioLuz,
						 int InterruptId0,
						 int InterruptId1,
						 int InterruptId2){

	//************* Initialize interrupt controller ***********************
	intr_cfg = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == intr_cfg){
		return XST_FAILURE;
	}
	Status = XScuGic_CfgInitialize(intr_ctl, intr_cfg, intr_cfg->CpuBaseAddress);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	Xil_ExceptionInit();
	//Connect interrupt controller to ARM hardware interrupt handling logic
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, intr_ctl);
	//Enable ARM interrupts
	Xil_ExceptionEnable();

	//Set interrupt priority and rising_edge trigger
	//0xA0, indica prioridad media
	//0x3, indica rising_edge trigger
	XScuGic_SetPriorityTriggerType(intr_ctl, InterruptId0, 0xC0, 0x3);
	XScuGic_SetPriorityTriggerType(intr_ctl, InterruptId1, 0xB0, 0x3);
	XScuGic_SetPriorityTriggerType(intr_ctl, InterruptId2, 0x00, 0x1);

	//Connect interrupt handler
	Status = XScuGic_Connect(intr_ctl, InterruptId0, (Xil_InterruptHandler)XTmrCtr_InterruptHandler, TmrCtr0);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}
	Status = XScuGic_Connect(intr_ctl, InterruptId1, (Xil_InterruptHandler)XTmrCtr_InterruptHandler, TmrCtr1);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}
	Status = XScuGic_Connect(intr_ctl, InterruptId2, (Xil_InterruptHandler)pausa, GpioLuz);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	//Enable LUZ Interrupt
	XGpio_InterruptEnable(GpioLuz, XGPIO_IR_CH1_MASK);
	XGpio_InterruptGlobalEnable(GpioLuz);

	//Enable device interrupt
	XScuGic_Enable(intr_ctl, InterruptId0);
	XScuGic_Enable(intr_ctl, InterruptId1);
	XScuGic_Enable(intr_ctl, InterruptId2);

	//***************** End Interrupt Controller **************************

	return XST_SUCCESS;
}

int TmrCtrSetup(XTmrCtr *TmrCtr,
				int TmrNum,
				int RstValue,
				int TmrId,
				void (*handler)(void *CallBackRef, u8 TmrCtrNumber)
				){
	//***************** Initialize TmrCounter *****************************
	Status = XTmrCtr_Initialize(TmrCtr, TmrId);
	if (Status != XST_SUCCESS){
		return XST_FAILURE;
	}

	XTmrCtr_SetHandler(TmrCtr, handler, TmrCtr);

	XTmrCtr_SetOptions(TmrCtr, TmrNum, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);

	XTmrCtr_SetResetValue(TmrCtr, TmrNum, RstValue);

	XTmrCtr_Start(TmrCtr, TmrNum);
	//***************** End Timer Counter **********************************
	return XST_SUCCESS;
}

