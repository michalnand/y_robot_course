#define F_CPU     10000000

#include <util/delay.h>
#include <gpio.h>


int main()
{
  TGpio<TGPIOA, 5, GPIO_MODE_OUT> led1;
  TGpio<TGPIOA, 6, GPIO_MODE_OUT> led2;
 
  while (1)
  {
    led1 = 0;
    led2 = 0;
    _delay_ms(100);

    led1 = 1;
    led2 = 1;
    _delay_ms(900);
  }
}
