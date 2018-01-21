#ifndef _VL53L0X_H_
#define _VL53L0X_H_

#include "i2c.h"

class VL53L0X
{
  private:
    int distance_result;

    unsigned char range_data[14];

  private:
    class I2C_Interface *i2c;

  public:
    VL53L0X();
    ~VL53L0X();

    int init(class I2C_Interface *i2c_);

    int read();
    int get();

  private:
    bool getSPADinfo(unsigned char *count, bool * type_is_aperture);
    bool performSingleRefCalibration(unsigned char vhv_init_byte);

};


#endif
