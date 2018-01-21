#include <gpio.h>
#include <terminal.h>

#include <apds9950.h>

/*
  vytvori sa 5 i2c zbernic pre 5 senzorov

  vsetky SCL su spolocne na PORTC, pin 0
  SDA su na PORTC, pin1, pin2, pin3, pin4, pin5

  mozno bude treba spomalit zbernicu,
  zvacsit I2C_SPEED -> dat tam napr 35, takto : TI2C<TGPIOC, x, 0, 35> i2c_x
*/

class TI2C<TGPIOC, 1, 0, I2C_SPEED> i2c_0;
class TI2C<TGPIOC, 2, 0, I2C_SPEED> i2c_1;
class TI2C<TGPIOC, 3, 0, I2C_SPEED> i2c_2;
class TI2C<TGPIOC, 4, 0, I2C_SPEED> i2c_3;
class TI2C<TGPIOC, 5, 0, I2C_SPEED> i2c_4;

 
int main()
{
  terminal.printf("\nterminal ready\n\n");

  APDS9950 rgb0;
  APDS9950 rgb1;
  APDS9950 rgb2;
  APDS9950 rgb3;
  APDS9950 rgb4;

  int init_res;

  /*
    priradi i2c ku senzoru, a pokusi sa ho inicializovat,
    pri chybe vrati -1
    kazdy senzor potrebuje pointer na I2C zbernicu
  */


  init_res = rgb0.init(&i2c_0);
  terminal.printf("init res %i\n", init_res);

  init_res = rgb1.init(&i2c_1);
  terminal.printf("init res %i\n", init_res);

  init_res = rgb2.init(&i2c_2);
  terminal.printf("init res %i\n", init_res);

  init_res = rgb3.init(&i2c_3);
  terminal.printf("init res %i\n", init_res);

  init_res = rgb4.init(&i2c_4);
  terminal.printf("init res %i\n", init_res);

  while (1)
  {
    //precita vsetky RGB senzory
    rgb0.read();
    rgb1.read();
    rgb2.read();
    rgb3.read();
    rgb4.read();

    /*
      vypis hodnot R,G,B, a biela (A - ambient)
      pretypovanie (int32_t) musi byt, pretoze moj printf berie len 32bit int,
      a rgb.result je uint16
    */

   terminal.printf("%i %i %i %i\n", (int32_t)rgb0.result.r,
                                    (int32_t)rgb0.result.g,
                                    (int32_t)rgb0.result.b,
                                    (int32_t)rgb0.result.a);

   terminal.printf("%i %i %i %i\n", (int32_t)rgb1.result.r,
                                    (int32_t)rgb1.result.g,
                                    (int32_t)rgb1.result.b,
                                    (int32_t)rgb1.result.a);

   terminal.printf("%i %i %i %i\n", (int32_t)rgb2.result.r,
                                    (int32_t)rgb2.result.g,
                                    (int32_t)rgb2.result.b,
                                    (int32_t)rgb2.result.a);

   terminal.printf("%i %i %i %i\n", (int32_t)rgb3.result.r,
                                    (int32_t)rgb3.result.g,
                                    (int32_t)rgb3.result.b,
                                    (int32_t)rgb3.result.a);

   terminal.printf("%i %i %i %i\n", (int32_t)rgb4.result.r,
                                    (int32_t)rgb4.result.g,
                                    (int32_t)rgb4.result.b,
                                    (int32_t)rgb4.result.a);

    terminal.printf("\n\n\n");

    //TODO -> delay(1s);
  }
}
