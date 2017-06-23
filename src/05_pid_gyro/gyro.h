#ifndef _GYRO_H_
#define _GYRO_H_

#include "i2c.h"

class CGyro
{
  private:
    int32_t yaw;
    int32_t gyro_offset;

    class CI2C_Interface *i2c;

  public:
    CGyro();
    ~CGyro();

    void init(class CI2C_Interface *i2c_);

    void read();
    int32_t  get_yaw();
};


#endif
