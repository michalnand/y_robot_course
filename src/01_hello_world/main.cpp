#define F_CPU     10000000

#include <avr/io.h>
#include <util/delay.h>

class Led
{
  private:
    unsigned char pin;

  public:
    Led(unsigned char pin)
    {
      this->pin = pin;
      DDRA|= (1<<pin);
      off();
    }


    void on()
    {
      PORTA&=~ (1<<pin);
    }

    void off()
    {
      PORTA|= (1<<pin);
    }

    void operator =(char value)
    {
      if (value != 0)
        on();
      else
        off();
    }
};


int main()
{
  Led led_a(5), led_b(6);

  /*
  while (1)
  {
    led_a.on();
    led_b.on();
    _delay_ms(100);

    led_a.off();
    led_b.off();
    _delay_ms(900);
  }
  */

  while (1)
  { 
    led_a = 1;
    led_b = 1;
    _delay_ms(100);

    led_a = 0;
    led_b = 0;
    _delay_ms(900);
  }
}
