#include <gpio.h>
#include <timer.h>
#include <i2c.h>
#include <terminal.h>
#include <itg3200.h>

TGpio<TGPIOB, 5, GPIO_MODE_OUT> led1;

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
  CITG3200 gyro;

  timer.add_task(blink, 50, false);

  terminal.printf("init done\n");
  while (1)
  {
    gyro.read();
    terminal.printf("%i %i %i\n", gyro.result.x, gyro.result.y, gyro.result.z);
    timer.delay_ms(100);
  }
}
