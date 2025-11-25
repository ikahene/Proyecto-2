#include "I2C.h"
XIic  iic;
u8 SendBuffer[2];
u8 RecvBuffer[2];
u8 config[3];
u8 configLow[3];
u8 configHigh[3];
u8 SendBuffer1[2];
u8 SendBufferH[2];
u8 SendBufferL[2];
int Lux;
int16_t val;
int temp;
int Start = 1;

int init_IIC() {

		XIic_Config *iic_conf;

	    init_platform();

	    iic_conf = XIic_LookupConfig(IIC_dev);
	    XIic_CfgInitialize(&iic, iic_conf, iic_conf->BaseAddress);
	    XIic_Start(&iic);


		SendBuffer[0] = 0xfe;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);
		XIic_Recv(iic.BaseAddress,TMP_ADDR,(u8 *)&RecvBuffer, 2,XIIC_STOP);


		SendBuffer[0] = 0x02;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_STOP);

		SendBuffer[0] = 0x80;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);
		SendBuffer[0] = 0x82;
		XIic_Send(iic.BaseAddress,TMP_ADDR,(u8 *)&SendBuffer, 1,XIIC_REPEATED_START);

	    return XST_SUCCESS;
}

int read_tmp(){
	SendBuffer[0] = 0x01; // envia para leer temp
	XIic_Send(iic.BaseAddress, TMP_ADDR, (u8 *)&SendBuffer, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress, TMP_ADDR, (u8 *)&RecvBuffer, 2, XIIC_STOP);
	val = (RecvBuffer[0] << 8) | (RecvBuffer[1]);
	temp = val / 128;
	return temp;
}
int read_opt(){
    // Light Sensor Configuration
	u8 config[3] = {0x01, 0xC4, 0x10};
//	u8 configLow[3] = {0x02, 0xB0, 0x0A};
	u8 configLow[3] = {0x02, 0x00, 0x00};
//	u8 configHigh[3] = {0x03, 0xB3, 0xD0};
	u8 configHigh[3] = {0x03, 0xC3, 0x52};

	if (Start == 1){
		XIic_Send(iic.BaseAddress, OPT_ADDR, (u8 *)&config, 3, XIIC_STOP);
		XIic_Send(iic.BaseAddress, OPT_ADDR, (u8 *)&configLow, 3, XIIC_STOP);
		XIic_Send(iic.BaseAddress, OPT_ADDR, (u8 *)&configHigh, 3, XIIC_STOP);
		Start = 0;
	}
	SendBuffer1[0] = 0x01;
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&SendBuffer1, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress,OPT_ADDR,(u8 *)&RecvBuffer, 2, XIIC_STOP);

	SendBufferL[0] = 0x02;
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&SendBufferL, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress,OPT_ADDR,(u8 *)&RecvBuffer, 2, XIIC_STOP);

	SendBufferH[0] = 0x03;
	XIic_Send(iic.BaseAddress,OPT_ADDR,(u8 *)&SendBufferH, 1, XIIC_REPEATED_START);
	XIic_Recv(iic.BaseAddress,OPT_ADDR,(u8 *)&RecvBuffer, 2, XIIC_STOP);

    //Read Light Sensor Measure
    SendBuffer[0] = 0x00;
    XIic_Send(iic.BaseAddress, OPT_ADDR, SendBuffer, 1, XIIC_REPEATED_START);
    XIic_Recv(iic.BaseAddress, OPT_ADDR, RecvBuffer, 2, XIIC_STOP);
    Lux = ((RecvBuffer[0])*256 + (RecvBuffer[1]));

    return Lux;
}
