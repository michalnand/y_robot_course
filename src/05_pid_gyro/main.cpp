#include <gpio.h>

#include <timer.h>
#include <gyro.h>
#include <motor.h>
#include <pid.h>


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




class Stabilization: public Task
{
  private:
    Motor   motor;
    Gyro    gyro;
    PID     pid;

  public:
    Stabilization()
    {
      gyro.init(&i2c);
      mode(false);
    }

    ~Stabilization()
    {

    }

    void mode(bool pd_controller)
    {
      if (pd_controller)
        pid.init(1.5, 0.0, 5.0, 255.0);
      else
        pid.init(1.0, 0.0, 0.0, 255.0);
    }


    void main()
    {
      gyro.read();
      float angle = -gyro.angles.y*0.1;

      float turn = pid.process(0.0 - angle);

      float speed = 0;
      
      int left  = turn + speed;
      int right =-turn + speed;

      motor.run(left, right);
    }
};





int main()
{
  Blink blink;
  timer.add_task(&blink, 200);

  Stabilization stabilization;


  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;


  while (1)
  {
    while ((key1 != 0) && (key2 != 0))
      timer.main();

    if (key1 == 0)
      stabilization.mode(true);

   timer.add_task(&stabilization, 10);
   while (1)
   {
     timer.main();
   }
  }

}
