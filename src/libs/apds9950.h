#ifndef _APDS_9950_H_
#define _APDS_9950_H_

#include <i2c.h>

struct sAPDS9950Result
{
  uint16_t r, g, b, a;
  uint16_t proximity;
};


class APDS9950
{
  private:
    class I2C_Interface *i2c;

  public:
    struct sAPDS9950Result result;

  public:
    APDS9950();
    ~APDS9950();

    int init(class I2C_Interface *i2c);

    void read();
};

#endif
