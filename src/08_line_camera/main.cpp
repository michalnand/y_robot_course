#include <gpio.h>

#include <timer.h>
#include <line_position.h>
#include <motor.h>
#include <pid.h>
#include <led_display.h>

LinePostion     line_camera;

class Blink: public Task
{
  private:
    unsigned int state;
    TGpio<TGPIOA, 5, GPIO_MODE_OUT> led;
    LEDDisplay led_display;

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
      /*
      line_camera.read();
      line_camera.process();
      line_camera.compute_line_position();

      int line_position = line_camera.get()+40;

      led_display.display_dec(line_position);
      */
      switch (state)
      {
        case 0: led = 1;  state = 1; break;
        case 1: led = 0;  state = 0; break;
      }
    }
};




class LineFollow: public Task
{
  private:
    Motor           motor;

  public:
    LineFollow()
    {

    }

    ~LineFollow()
    {

    }

    void main()
    {
      line_camera.read();
      line_camera.process();
      line_camera.compute_line_position();


      int32_t line_position = 0 - line_camera.get();

      int32_t turn = (line_position*(int32_t)180)/(int32_t)100;

      int speed = 40;

      int left  = turn + speed;
      int right =-turn + speed;

      motor.run(left, right);
    }
};





int main()
{
  Blink blink;



  timer.add_task(&blink, 200);


  LineFollow line_follow;


  TGpio<TGPIOB, 2, GPIO_MODE_IN_PULLUP> key;


  while (1)
  {

    while (key != 0)
      timer.main();


   timer.add_task(&line_follow, 100);
   while (1)
   {
     timer.main();
   }
  }

}
