#ifndef _LINE_CAMERA_H_
#define _LINE_CAMERA_H_

#include "array.h"
#include "gpio.h"

#define CAMERA_N_PIXELS ((unsigned int)128)

class LineCamera
{
  public:
    Array<int8_t, CAMERA_N_PIXELS> pixels;

  private:
    TGpio<TGPIOA, 2, GPIO_MODE_IN_FLOATING> camera_out;   //PA2 -> ADC2
    TGpio<TGPIOA, 3, GPIO_MODE_OUT> clk;                  //PA3
    TGpio<TGPIOA, 4, GPIO_MODE_OUT> si;                   //PA4

  public:
    LineCamera();
    ~LineCamera();


    void read();
    void process();

  private:
    void adc_init(unsigned char ch);
    int adc_read();
    void delay_micro();
};

#endif
