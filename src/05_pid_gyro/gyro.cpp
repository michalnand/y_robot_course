#include "gyro.h"

#include <math.h>

#define HMC5883_ADDRESS         0x3C

#define HMC5883_CONFIG_A        0x00
#define HMC5883_CONFIG_B        0x01
#define HMC5883_MODE            0x02

#define HMC5883_OUT_X_MSB       0x03
#define HMC5883_OUT_X_LSB       0x04
#define HMC5883_OUT_Z_MSB       0x05
#define HMC5883_OUT_Z_LSB       0x06
#define HMC5883_OUT_Y_MSB       0x07
#define HMC5883_OUT_Y_LSB       0x08


#define HMC5883_ID              0x0A
#define HMC5883_ID_VALUE        (unsigned char)((1<<6)|(1<<3))

TGpio<TGPIOA, 6, GPIO_MODE_OUT> error;



CGyro::CGyro()
{

}

void CGyro::init(class CI2C_Interface *i2c_)
{
    i2c = i2c_;

    //TODO init gyro via i2c

    //30Hz data rate
    i2c->write_reg(HMC5883_ADDRESS, HMC5883_CONFIG_A, (1<<4)|(1<<2));

    //maximal gain
    i2c->write_reg(HMC5883_ADDRESS, HMC5883_CONFIG_B, 0);

    //continuos mode
    i2c->write_reg(HMC5883_ADDRESS, HMC5883_MODE, 0);

    if (i2c->read_reg(HMC5883_ADDRESS, HMC5883_ID) != HMC5883_ID_VALUE)
      error = 0;
    else
      error = 1;

    yaw = 0;
    gyro_offset = 0;

    int32_t  calibration_iterations = 100;
    int32_t  tmp_offset = 0;
    for (int32_t  i = 0; i < calibration_iterations; i++)
    {
      read();
      tmp_offset+= get_yaw();
    }

    gyro_offset = tmp_offset/calibration_iterations;

    yaw = 0;
}

CGyro::~CGyro()
{

}

void CGyro::read()
{
  //TODO read gyro
  int16_t x, y, z;

  i2c->start();

  i2c->write(HMC5883_ADDRESS);
  i2c->write(HMC5883_OUT_X_MSB);

  i2c->stop();


  i2c->start();
  i2c->write(HMC5883_ADDRESS|0x01);
  x = ((uint16_t)i2c->read(1)) << 8;
  x|= ((uint16_t)i2c->read(1));

  z = ((uint16_t)i2c->read(1)) << 8;
  z|= ((uint16_t)i2c->read(1));

  y = ((uint16_t)i2c->read(1)) << 8;
  y|= ((uint16_t)i2c->read(0));
  i2c->stop();

  long int yaw_ = 180.0*atan2(1.0*y, 1.0*x)/3.141592654;
  yaw = yaw_ - gyro_offset;
}

int32_t CGyro::get_yaw()
{
  return yaw;
}
