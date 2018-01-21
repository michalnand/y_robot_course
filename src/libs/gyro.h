#ifndef _GYRO_H_
#define _GYRO_H_

#include "i2c.h"

struct sLSM_3VECT
{
    int32_t x, y, z;
};

class Gyro
{
  public:
    struct sLSM_3VECT acceleration;

    struct sLSM_3VECT result;
    struct sLSM_3VECT angles;

    struct sLSM_3VECT offset;

    int32_t present;
    int32_t samples;


  private:
    class I2C_Interface *i2c;

  public:
    Gyro();
    ~Gyro();

    void init(class I2C_Interface *i2c_);
    void read(bool calibration = false);

  private:
    void delay_loops(uint32_t loops);

};


#endif
