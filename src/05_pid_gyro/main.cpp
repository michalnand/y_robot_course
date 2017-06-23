#include <gpio.h>
#include <timer.h>
#include <robot_controll.h>

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

class CRobotControll robot_controll;

int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key;
  timer.add_task(blink, 200, false);

  robot_controll.init();
  while (1)
  {
    while (key != 0)
      __asm("nop");

    robot_controll.main();
  }
}
