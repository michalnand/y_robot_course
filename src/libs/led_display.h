#ifndef _LED_DISPLAY_H_
#define _LED_DISPLAY_H_

#include "gpio.h"
#include "timer.h"

class LEDDisplay: public Task
{
  friend class Timer;

  private:
    unsigned char led_state;
    unsigned char led_dig1;
    unsigned char led_dig2;

  public:
    LEDDisplay();
    ~LEDDisplay();

    void display_hex(unsigned char number);
    void display_dec(unsigned char number);

  private:
    unsigned char led_display_bcd_7seg(unsigned char number);
    void main();
};


#endif
