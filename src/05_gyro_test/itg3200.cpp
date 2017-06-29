#include "itg3200.h"
#include <i2c.h>

#define ITG3200_ADDRESS             ((unsigned char)0xD0|(1<<1))

#define ITG3200_WHO_AM_I            ((unsigned char)0x00)
#define ITG3200_SMPLRT_DIV          ((unsigned char)0x15)
#define ITG3200_DLPF_FS             ((unsigned char)0x16)
#define ITG3200_INT_CFG             ((unsigned char)0x17)
#define ITG3200_INT_STATUS          ((unsigned char)0x1A)
#define ITG3200_TEMP_OUT_H          ((unsigned char)0x1B)
#define ITG3200_TEMP_OUT_L          ((unsigned char)0x1C)
#define ITG3200_GYRO_XOUT_H         ((unsigned char)0x1D)
#define ITG3200_GYRO_XOUT_L         ((unsigned char)0x1E)
#define ITG3200_GYRO_YOUT_H         ((unsigned char)0x1F)
#define ITG3200_GYRO_YOUT_L         ((unsigned char)0x20)
#define ITG3200_GYRO_ZOUT_H         ((unsigned char)0x21)
#define ITG3200_GYRO_ZOUT_L         ((unsigned char)0x22)
#define ITG3200_PWR_MGM             ((unsigned char)0x3E)


CITG3200::CITG3200()
{
  result.x = 0;
  result.y = 0;
  result.z = 0;

  i2c.write_reg(ITG3200_ADDRESS, ITG3200_SMPLRT_DIV, 7);            //125Hz sample rate
  i2c.write_reg(ITG3200_ADDRESS, ITG3200_DLPF_FS, (1<<3)|(1<<4));  //2000deg/s range
}

CITG3200::~CITG3200()
{


}

void CITG3200::read()
{
  i2c.start();

  i2c.write(ITG3200_ADDRESS);
  i2c.write(ITG3200_GYRO_XOUT_H);

  i2c.stop();


  i2c.start();
  i2c.write(ITG3200_ADDRESS|0x01);
  result.x = ((uint16_t)i2c.read(1)) << 8;
  result.x|= ((uint16_t)i2c.read(1));

  result.y = ((uint16_t)i2c.read(1)) << 8;
  result.y|= ((uint16_t)i2c.read(1));

  result.z = ((uint16_t)i2c.read(1)) << 8;
  result.z|= ((uint16_t)i2c.read(0));
  i2c.stop();
}
