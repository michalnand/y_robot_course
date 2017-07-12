#include "lidar_kernel.h"



CLidarKernel::CLidarKernel()
{

}

CLidarKernel::~CLidarKernel()
{

}

void CLidarKernel::init()
{
  gyro.init(&i2c);
  laser.init(&i2c);

  gyro.read();
  laser.read();

  angle = -gyro.angles.y;
  state = 0;
  iterations = 0;
  speed = 0;
}

void CLidarKernel::operator ()()
{
  gyro.read();
  angle = -gyro.angles.y;


  laser.read();

  put_to_view_array(angle/100 + 60, laser.get());

  iterations++;

  if (iterations > 64)
  {
    iterations = 0;

    for (unsigned int i = 0; i < VIEW_ARRAY_SIZE; i++)
    {
      int32_t tmp = view_array[i];
      terminal.printf("%i ", tmp);
    }
    terminal.printf("\n");
  }

  switch (state)
  {
    case 0:
             if (speed < 80)
              speed++;
             if (angle < -6000)
              state = 1;
             break;

    case 1:
              if (speed > -80)
                speed--;
              if (angle > 6000)
               state = 0;
              break;
  }

  motor.run(-speed, speed);

}

void CLidarKernel::put_to_view_array(int32_t angle, int16_t distance)
{
  if (angle < 0)
    angle = 0;

  if (angle >= (VIEW_ARRAY_SIZE-1))
    angle = VIEW_ARRAY_SIZE-1;

  view_array[angle] = (15*view_array[angle] + distance)/16;
}
