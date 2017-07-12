#ifndef _LED_DISPLAY_H_
#define _LED_DISPLAY_H_

#include "gpio.h"
#include "rt_timer.h"

class CLEDDisplay: public CTaskInterface
{
  friend class CRTTimer;

  private:
    unsigned char led_state;
    unsigned char led_dig1;
    unsigned char led_dig2;

  public:
    CLEDDisplay(); 
    ~CLEDDisplay();

    void display_hex(unsigned char number);
    void display_dec(unsigned char number);

  private:
    unsigned char led_display_bcd_7seg(unsigned char number);
    void operator()();
};


#endif
