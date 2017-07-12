#ifndef _LIDAR_KERNEL_H_
#define _LIDAR_KERNEL_H_


#include <gpio.h>
#include <timer.h>
#include <motor.h>
#include <terminal.h>


#include <gyro.h>
#include <vl53l0x.h>



#define VIEW_ARRAY_SIZE   180

class CLidarKernel
{
  private:
    unsigned char state;

    int32_t angle;
    int32_t iterations;

    class CGyro gyro;
    class CMotor motor;
    class CVL53L0X laser;

    int16_t view_array[VIEW_ARRAY_SIZE];
    int speed;
  public:
    CLidarKernel();
    ~CLidarKernel();

    void init();

    void operator ()();

  private:
    void put_to_view_array(int32_t angle, int16_t distance);
};


#endif
