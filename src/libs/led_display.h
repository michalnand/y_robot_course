#ifndef _LED_DISPLAY_H_
#define _LED_DISPLAY_H_

#include "gpio.h"
#include "timer.h"

class CLEDDisplay
{
  public:
    CLEDDisplay();
    ~CLEDDisplay();

    void display_hex(unsigned char number);
    void display_dec(unsigned char number);

  private:
    unsigned char led_display_bcd_7seg(unsigned char number);

};


#endif
