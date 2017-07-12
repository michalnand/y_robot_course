#include <gpio.h>
#include <timer.h>
#include <gyro.h>
#include <motor.h>
#include <terminal.h>

#include <vl53l0x.h>
#include <led_display.h>


#include <lidar_kernel.h>


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





class CLidarKernel lidar_kernel;

void lidar_kernel_task()
{
  lidar_kernel();
}



int main()
{
  TGpio<TGPIOB, 3, GPIO_MODE_IN_PULLUP> key1;
  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key2;
  TGpio<TGPIOA, 7, GPIO_MODE_OUT> beep;

  beep = 1;

  timer.add_task(blink, 200, false);


  terminal.printf("\nterminal ready\n\n");

  class CVL53L0X laser;

  class CLEDDisplay led_display;

  led_display.display_dec(0);

  while (1)
  {
    while ((key1 != 0) && (key2 != 0))
      __asm("nop");
/*
    lidar_kernel.init();
    timer.add_task(lidar_kernel_task, 10, true);
    while (1)
    {
      timer.main();
    }
  */
   laser.init(&i2c);

   while (1)
   {
     int32_t distance_average = 0;
     for (unsigned int i = 0; i < 64; i++)
     {
      distance_average+= laser.read();
      timer.delay_ms(10);
     }

    distance_average/= 64;

     terminal.printf("%i\n", distance_average);

     led_display.display_dec(distance_average/10);

    
/*
     beep = 0;
     timer.delay_ms(20);



     uint32_t beep_time = distance_average/2;
     if (beep_time < 10)
      beep_time = 10;
     if (beep_time > 1000)
      beep_time = 1000;

     beep = 1;
     timer.delay_ms(beep_time);
     */
   }

  }

}
