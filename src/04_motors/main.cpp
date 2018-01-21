#include <gpio.h>
#include <timer.h>
#include <motor.h>
#include <mem.h>

void motor_test(class Motor *motor)
{
  int speed = 200;

  motor->run(speed, 0);
  timer.delay_ms(500);

  motor->run(-speed, 0);
  timer.delay_ms(500);

  motor->run(0, speed);
  timer.delay_ms(500);

  motor->run(0, -speed);
  timer.delay_ms(500);

  motor->run(speed, speed);
  timer.delay_ms(500);
  motor->run(0, 0);
}



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



int main()
{
  Blink blink;
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key;

  timer.add_task(&blink, 200);

  Motor *motor;
  motor = new Motor;


  while (1)
  {
    while (key != 0)
      timer.main();

    motor_test(motor);
  }
}
