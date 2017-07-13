#include <gpio.h>
#include <rt_timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>

#include <vl53l0x.h>
#include <led_display.h>



class CBlink: public CTaskInterface
{
  private:
    TGpio<TGPIOA, 5, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    CBlink()
    {
      state = 0;
    }

    ~CBlink()
    {

    }

    void operator ()()
    {
      switch (state)
      {
        case 0: led = 1; state = 1; break;
        case 1: led = 0; state = 0; break;
      }
    }
};

class CLaserTask: public CTaskInterface
{
  private:
    class CVL53L0X      laser;
    class CLEDDisplay   led_display;

    TGpio<TGPIOA, 7, GPIO_MODE_OUT> beep;

    uint32_t distance;
    uint32_t beep_counter;

    float u, k0, k1, k2, e0, e1, e2;

    class CMotor motor;

  public:
    CLaserTask()
    {
      beep = 1;

      float kp = 2.0;
      float ki = 0.0;
      float kd = 2.0;

      u = 0.0;
      k0 = kp + ki + kd;
      k1 = -kp + -2.0*kd;
      k2 = kd;

      e0 = 0;
      e1 = 0;
      e2 = 0;
    }

    ~CLaserTask()
    {

    }

    void init()
    {
      led_display.display_dec(0);
      laser.init(&i2c);
      distance = 1000;
      beep_counter = 0;
    }

    void operator ()()
    {
      distance = (31*distance + (laser.read() - 20) )/32;

      if (distance > 300)
        distance = 300;

      terminal.printf("%i\n", distance);

      led_display.display_dec(distance/10);

      
      if (beep_counter != 0)
        beep_counter--;
      else
      {
        beep_counter = distance/10;
      }

      if (beep_counter == 1)
        beep = 0;
      else
        beep = 1;


      e2 = e1;
      e1 = e0;
      e0 = 150.0 - distance;

      u+= k0*e0 + k1*e1 + k2*e2;

      int speed = u;
    //  motor.run(speed, speed);
    }
};


class CBlink blink_task;
class CLaserTask laser_task;


int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;

  timer.add_task(&blink_task, 200);

  terminal.printf("\nterminal ready\n\n");


  while (1)
  {
    while ((key1 != 0) && (key2 != 0))
      timer.main();

    laser_task.init();
    timer.add_task(&laser_task, 20);

    while(1)
    {
      timer.main();
    }




/*
     beep = 0;
     timer.delay_ms(20);



     uint32_t beep_time = distance_average/2;
     if (beep_time < 10)
      beep_time = 10;
     if (beep_time > 1000)
      beep_time = 1000;

     beep = 1;
     timer.delay_ms(beep_time);
     */

  }

}
