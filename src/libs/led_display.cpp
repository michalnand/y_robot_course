#include "led_display.h"


#define LED_DISP_SEL_PORT	PORTB
#define LED_DISP_SEL_DIR	DDRB

#define LED_DISP_PORT		PORTC
#define LED_DISP_DIR		DDRC

#define LED_DIG1	(1<<0)
#define LED_DIG2	(1<<1)

CLEDDisplay::CLEDDisplay()
{
  led_state = 0;
  led_dig1 = 0xff;
  led_dig2 = 0xff;

  LED_DISP_SEL_DIR|= LED_DIG1 | LED_DIG2;
  LED_DISP_SEL_PORT|= LED_DIG1 | LED_DIG2;

  LED_DISP_PORT = 0xff;
  LED_DISP_DIR = 0xff;

  timer.add_task(this, 5);
}

CLEDDisplay::~CLEDDisplay()
{

}

void CLEDDisplay::display_hex(unsigned char number)
{
	led_dig1 = led_display_bcd_7seg(number>>4);
	led_dig2 = led_display_bcd_7seg(number&0x0f);

}

void CLEDDisplay::display_dec(unsigned char number)
{
  if (number > 99)
    number = 99;

	led_dig1 = led_display_bcd_7seg(number/10);
	led_dig2 = led_display_bcd_7seg(number%10);
}



unsigned char CLEDDisplay::led_display_bcd_7seg(unsigned char number)
{
	unsigned char res;
	switch(number)
	{
		case 0:		res=((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4)|(1<<5)); break;
		case 1:		res=((1<<1)|(1<<2)); break;
		case 2:		res=((1<<0)|(1<<1)|(1<<6)|(1<<4)|(1<<3)); break;
		case 3:		res=((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<6)); break;
		case 4:		res=((1<<1)|(1<<2)|(1<<5)|(1<<6)); break;
		case 5:		res=((1<<0)|(1<<5)|(1<<6)|(1<<2)|(1<<3)); break;
		case 6:		res=((1<<0)|(1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)); break;
		case 7:		res=((1<<0)|(1<<1)|(1<<2)); break;
		case 8:		res=((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)); break;
		case 9:		res=((1<<0)|(1<<1)|(1<<2)|(1<<3)|(1<<5)|(1<<6)); break;
		case 10:	res=((1<<0)|(1<<1)|(1<<5)|(1<<6)|(1<<4)|(1<<2)); break;
		case 11:	res=((1<<2)|(1<<3)|(1<<4)|(1<<5)|(1<<6)); break;
		case 12:	res=((1<<3)|(1<<4)|(1<<5)|(1<<0)); break;
		case 13:	res=((1<<1)|(1<<2)|(1<<3)|(1<<4)|(1<<6)); break;
		case 14:	res=((1<<0)|(1<<3)|(1<<4)|(1<<5)|(1<<6)); break;
		case 15:	res=((1<<0)|(1<<4)|(1<<5)|(1<<6)); break;

		default:	res = 0;
	}

	return (~res);
}

void CLEDDisplay::operator()()
{
  switch (led_state)
	{
		case 0:
			LED_DISP_SEL_PORT|=LED_DIG1|LED_DIG2;

			LED_DISP_PORT = led_dig1;

			LED_DISP_SEL_PORT&=~LED_DIG1;

			led_state = 1;
			break;

		case 1:
			LED_DISP_SEL_PORT|=LED_DIG1|LED_DIG2;

			LED_DISP_PORT = led_dig2;

			LED_DISP_SEL_PORT&=~LED_DIG2;

			led_state = 0;
			break;
  }
}
