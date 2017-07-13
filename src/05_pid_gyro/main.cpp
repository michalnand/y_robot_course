#include <gpio.h>
#include <rt_timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>

#include "stability_kernel.h"


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


class CStabilityKernel stability_kernel;
class CBlink blink;


int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;

  terminal.printf("\nterminal ready\n\n");

  timer.add_task(&blink, 200);


  while (1)
  {
    while ((key1 != 0) && (key2 != 0))
      timer.main();

    bool pd_controller = false;
    if (key1 == 0)
      pd_controller = true;

   stability_kernel.init(pd_controller);

   timer.add_task(&stability_kernel, 10);
   while (1)
   {
     timer.main();
   }
  }

}
