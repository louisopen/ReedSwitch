#include "HT66F002.h"
#define ReedSwitch 	_pa1
#define Out_wifi	_pa6	//output
#define Sleep_info	_pa5
#pragma rambank0
unsigned char Rb;
unsigned char RbBuf;
unsigned char SwCnt;
unsigned char OutCnt;
bit ScanKey_F;
bit first_low_F;
bit first_high_F;
bit Get_Out_F;

#pragma vector timer0_isr @ 0x10
void ClearRAM(void);
void ScanKey(void);
void Get_Out(void);
//------------------------------------------
//
//------------------------------------------
void main()
{
	//_pac1 = 0;		//pa1 output mode.
	//_papu2 = 1;		//pa2 be use pull up.
	_pac6 = 0; 		//pa6 output for wifi enable.
	Out_wifi = 0;	//to init. Ameba enable pin
	
	ClearRAM();
	_smod = 0b00000000;
	_stm0c1 = 0b11000001;
	_stm0al = 0xee;
	_stm0ah = 0x00;
	_stma0e = 1;
	_mf0e = 1;
	_emi = 1;
	_stm0c0 = 0b00011000;
	while (1)
	{
		_clrwdt();
		if(ScanKey_F) ScanKey();
		if(Get_Out_F) Get_Out();
		
	}
}
//------------------------------------------
//
//------------------------------------------
void Get_Out(void)
{
	if(OutCnt >= 10)
	{
		Get_Out_F = 0;
		Out_wifi = 0;		//finished output.
	}
}
//------------------------------------------
//
//------------------------------------------
void ScanKey(void)
{
	ScanKey_F = 0;
	if(ReedSwitch)			//Reed switch High / Low detect. Please used external big regsiser.
		Rb = 0;
	else
		Rb = 1;

	if(Rb == RbBuf)
	{
		SwCnt++;
		if(SwCnt >= 4)
		{
			SwCnt = 4;
			if(RbBuf == 1)
			{
				first_low_F = 1;				
				if(first_high_F)
				{
					first_high_F = 0;
					if(!Sleep_info)		//Low for Ameba sleep mode.
					{	
						Out_wifi = 1;	//output port active.
						Get_Out_F = 1;	//output flag
						OutCnt = 0;		//output counting at time out of finished
					}
				}
			}else
			{
				first_high_F = 1;								
				if(first_low_F)
				{
					first_low_F = 0;
					if(!Sleep_info)		//Low for Ameba sleep mode.
					{
						Out_wifi = 1;	//output port active.
						Get_Out_F = 1;	//output flag
						OutCnt = 0;		//output counting at time out of finished
					}
				}				
			}
		}
	}else
	{
		SwCnt = 0;
		RbBuf = Rb;
	}
}
//------------------------------------------
//	around 7~10ms
//------------------------------------------
void timer0_isr(void)
{
	_stma0f = 0;
	ScanKey_F = 1;
	OutCnt++;
}
//------------------------------------------
//
//------------------------------------------
void ClearRAM(void)
{
	for (_mp0 = 0x40; _mp0 < 0xff; _mp0++)
	{
		_iar0 = 0;
	}
	_iar0 = 0;
}
