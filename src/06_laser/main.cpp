#include <gpio.h>
#include <timer.h>
#include <gyro.h>
#include <motor.h>


#include <vl53l0x.h>
#include <led_display.h>



class Blink: public Task
{
  private:
    TGpio<TGPIOA, 5, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    Blink()
    {
      state = 0;
    }

    ~Blink()
    {

    }

    void main()
    {
      switch (state)
      {
        case 0: led = 1; state = 1; break;
        case 1: led = 0; state = 0; break;
      }
    }
};

class LaserTask: public Task
{
  private:
    VL53L0X      laser;
    LEDDisplay   led_display;
    uint32_t distance;


  public:
    LaserTask()
    {
      led_display.display_dec(0);
      laser.init(&i2c);
      distance = 0;
    }

    ~LaserTask()
    {

    }


    void main()
    {
      distance = (31*distance + (laser.read() - 20) )/32;

      if (distance > 300)
        distance = 300;

      led_display.display_dec(distance/10);
    }
};





int main()
{
  Blink blink_task;
  LaserTask laser_task;

  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;

  timer.add_task(&blink_task, 200);

  timer.add_task(&laser_task, 20);

  while(1)
  {
    timer.main();
  }


}
