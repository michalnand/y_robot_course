#include "motor.h"

CMotor::CMotor()
{
    DDRD = (1<<5)|(1<<6) | (1<<4)|(1<<7);		// vystupy na motory
  	PORTD&=~(1<<5)|(1<<6) | (1<<4)|(1<<7);

  	TCCR1A = (1<<COM1A1) | (1<<COM1B1) | (1<<WGM10); // neinvertovana, fazovo korigovana pwm
  	TCCR1B = (1<<CS11);				//clk/8

  	OCR1AH = 0;					// pwm hodnoty na 0 -> zastavit motory
  	OCR1AL = 0;

  	OCR1BH = 0;
    OCR1BL = 0;
}

CMotor::~CMotor()
{

}


void CMotor::run(int left, int right)
{
    if (left>255)
  		left = 255;

  	if (left<-255)
  		left = -255;

  	if (right>255)
  		right = 255;

  	if (right<-255)
  		right = -255;


  	/*pravy motor*/
  	if (right > 0)
  	{
  		OCR1AL = right;
  		PORTD|= (1<<6); /*APHASE*/
  	}
  	else
  	if (right < 0)
  	{
  		OCR1AL = -right;
  		PORTD&= ~(1<<6); /*APHASE*/
  	}
  	else
  		OCR1AL = 0;


  	/*lavy motor*/
  	if (left > 0)
  	{
  		OCR1BL = left;
  		PORTD&= ~(1<<7); /*BPHASE*/
  	}
  	else
  	if (left < 0)
  	{
  		OCR1BL = -left;
  		PORTD|= (1<<7); /*BPHASE*/
  	}
  	else
      OCR1BL = 0;
}
