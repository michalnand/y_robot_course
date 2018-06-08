#include "line_camera.h"

//https://github.com/hobgreenson/arduino-TSL1401/blob/master/linearArrayCodeFullFrame.ino

LineCamera::LineCamera()
{
  si  = 0;
  clk = 0;
}


LineCamera::~LineCamera()
{

}

void LineCamera::read()
{
  adc_init(2);
  delay_micro();


  si  = 1;
  delay_micro();

  clk = 1;
  delay_micro();

  si  = 0;
  delay_micro();

  clk = 0;
  delay_micro();

/*
 si = 1;
 delay_micro();
 clk = 1;
 delay_micro();
 si = 0;
 delay_micro();
 clk = 0;
 delay_micro();
*/

  for (unsigned int i = 0; i < pixels.size(); i++)
  {
    clk = 1;
    delay_micro();

    pixels[i] = adc_read()>>3;
    clk = 0;
    delay_micro();
  }
}

void LineCamera::process()
{
  int32_t average = 0;
  for (unsigned int i = 0; i < pixels.size(); i++)
    average+= pixels[i];
  average/= pixels.size();

  for (unsigned int i = 0; i < pixels.size(); i++)
    pixels[i]-= average;

  for (unsigned int i = 0; i < pixels.size(); i++)
    if (pixels[i] > 0)
      pixels[i] = 1;
    else
      pixels[i] = -1;

}


void LineCamera::adc_init(unsigned char ch)
{
  // AREF = AVcc
  ADMUX = (1<<REFS0);

  //8x prescaler
  ADCSRA = (1<<ADEN)|(1<<ADPS1)|(1<<ADPS0);

  ADMUX|= ch&0x07;
}

int LineCamera::adc_read()
{
  ADCSRA |= 1<<ADSC;

  while (ADCSRA & (1<<ADSC))
  {
    __asm("nop");
  }

	return ADC;
}

void LineCamera::delay_micro()
{
  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");

  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");

  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");

  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");
  __asm volatile("nop");
}
