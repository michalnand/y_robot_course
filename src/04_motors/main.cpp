#include <gpio.h>
#include <timer.h>
#include <motor.h>

int main()
{
  class CMotor motor;

  motor.run(100, 0);
  timer.delay_ms(500);

  motor.run(-100, 0);
  timer.delay_ms(500);

  motor.run(0, 100);
  timer.delay_ms(500);

  motor.run(0, -100);
  timer.delay_ms(500);

  motor.run(100, 100);
  timer.delay_ms(500);
  motor.run(0, 0);

  while (1)
  {
    timer.main();
  }
}
