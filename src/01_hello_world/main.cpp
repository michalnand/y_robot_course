#define F_CPU     10000000

#include <avr/io.h>
#include <util/delay.h>


#define LED         (1<<6)
#define LED_PORT    PORTA
#define LED_DDR     DDRA

int main()
{
  LED_DDR|= LED;
  LED_PORT&= ~LED;

  while (1)
  {
    LED_PORT&=~LED;
    _delay_ms(100);

    LED_PORT|= LED;
    _delay_ms(900);
  }
}
