#include <gpio.h>
#include <timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>

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


void gyro_example(bool gyro_enabled)
{
  float kp = 3.0;
  float ki = 0.0;
  float kd = 30.0;

  float k0 = kp + ki + kd;
  float k1 = -kp - 2.0*kd;
  float k2 = kd;

  float e0 = 0.0;
  float e1 = 0.0;
  float e2 = 0.0;
  float u = 0.0;

  class CMotor motor;
  class CGyro gyro;
  gyro.init(&i2c);

  float speed = 100*0;
  while (1)
  {
    gyro.read();

    float angle = 0.0;

    if (gyro_enabled)
      angle = -gyro.angles.z*0.1;

    e2 = e1;
    e1 = e0;
    e0 = 0.0 - angle;   //subtract required and meassured value

    u+= k0*e0 + k1*e1 + k2*e2;  //process PID controller

    int left = u + speed;
    int right = -u + speed;

    motor.run(left, right);

    timer.delay_ms(2);
  }
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
        terminal.printf("%i %i %i :", gyro.offset.x, gyro.offset.y, gyro.offset.z);
        terminal.printf("%i %i %i :", gyro.result.x, gyro.result.y, gyro.result.z);
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

    bool gyro_enabled = false;
    if (key1 == 0)
      gyro_enabled = true;

    gyro_example(gyro_enabled);
  }

}
