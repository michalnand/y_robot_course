#ifndef _GYRO_H_
#define _GYRO_H_

#include "i2c.h"

struct sITG3200
{
    int32_t x, y, z;
};

class CGyro
{
  public:
    struct sITG3200 result;
    struct sITG3200 angles;

    struct sITG3200 offset;

  private:
    class CI2C_Interface *i2c;

  public:
    CGyro();
    ~CGyro();

    void init(class CI2C_Interface *i2c_);
    void read(bool calibration = false);

  private:
    void delay_loops(uint32_t loops);

};


#endif
