#include <gpio.h>

#include <timer.h>


class TaskA: public Task
{
  private:
    TGpio<TGPIOA, 5, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    TaskA()
    {
      state = 0;
    }

    ~TaskA()
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


class TaskB: public Task
{
  private:
    TGpio<TGPIOA, 6, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    TaskB()
    {
      state = 0;
    }

    ~TaskB()
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
 

int main()
{
  class TaskA taskA;
  class TaskA taskB;

  timer.add_task(&taskA, 100);
  timer.add_task(&taskB, 500);

  while (1)
  {
    timer.main();
  }
}
