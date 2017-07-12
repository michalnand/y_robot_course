#include <gpio.h>
#include <timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>

#include "stability_kernel.h"

TGpio<TGPIOA, 5, GPIO_MODE_OUT> led1;

void blink()
{
  static unsigned int state = 0;
  switch (state)
  {
    case 0: led1 = 1; state = 1; break;
    case 1: led1 = 0; state = 0; break;
  }
}


class CStabilityKernel stability_kernel;

void stability_kernel_task()
{
  stability_kernel();
}


void gyro_test()
{
  unsigned int cnt = 0;
    class CGyro gyro;

    gyro.init(&i2c);



    while (1)
    {
      gyro.read();

      if ((cnt++%10) == 0)
      {
        terminal.printf("%i %i %i :", gyro.angles.x, gyro.angles.y, gyro.angles.z);

        terminal.printf("\n");
      }
      timer.delay_ms(10);
    }
}

int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;
  timer.add_task(blink, 200, false);


  terminal.printf("\nterminal ready\n\n");


  while (1)
  {
    while ((key1 != 0) && (key2 != 0))
      __asm("nop");

    bool pd_controller = false;
    if (key1 == 0)
      pd_controller = true;

   stability_kernel.init(pd_controller);
   timer.add_task(stability_kernel_task, 5, true);
   while (1)
   {
     timer.main();
   }
  }

}
