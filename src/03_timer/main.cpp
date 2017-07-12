#include <gpio.h>

#include <rt_timer.h>


class CTaskA: public CTaskInterface
{
  private:
    TGpio<TGPIOA, 5, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    CTaskA()
    {
      state = 0;
    }

    ~CTaskA()
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


class CTaskB: public CTaskInterface
{
  private:
    TGpio<TGPIOA, 6, GPIO_MODE_OUT> led;
    unsigned int state;

  public:
    CTaskB()
    {
      state = 0;
    }

    ~CTaskB()
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


int main()
{
  class CTaskA taskA;
  class CTaskA taskB;

  timer.add_task(&taskA, 100);
  timer.add_task(&taskB, 500);

  while (1)
  {
    timer.main();
  }
}
