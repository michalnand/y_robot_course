#include <gpio.h>
#include <timer.h>
#include <motor.h>
#include <mem.h>

void motor_test( class CMotor *motor)
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

int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key;

  timer.add_task(blink, 200, false);

  class CMotor *motor;
  motor = new CMotor;


  while (1)
  {
    while (key != 0)
      __asm("nop");

    motor_test(motor);
  }
}
