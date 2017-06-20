#include <gpio.h>
#include <timer.h>

TGpio<TGPIOA, 5, GPIO_MODE_OUT> led1;
TGpio<TGPIOA, 6, GPIO_MODE_OUT> led2;

void taskA()
{
  static unsigned int state = 0;
  switch (state)
  {
    case 0: led1 = 1; state = 1; break;
    case 1: led1 = 0; state = 0; break;
  }
}


void taskB()
{
  static unsigned int state = 0;
  switch (state)
  {
    case 0: led2 = 1; state = 1; break;
    case 1: led2 = 0; state = 0; break;
  }
}



int main()
{
  timer.add_task(taskA, 100, false);
  timer.add_task(taskB, 500, true);

  while (1)
  {
    timer.main();
  }
}
