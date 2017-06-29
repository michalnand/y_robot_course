#include "gyro.h"


#define MPU6050_ADDRESS             (((unsigned char)0x68)<<1)

#define MPU6050_GYRO_XOUT_H         ((unsigned char)0x43)
#define MPU6050_GYRO_XOUT_L         ((unsigned char)0x44)
#define MPU6050_GYRO_YOUT_H         ((unsigned char)0x45)
#define MPU6050_GYRO_YOUT_L         ((unsigned char)0x46)
#define MPU6050_GYRO_ZOUT_H         ((unsigned char)0x47)
#define MPU6050_GYRO_ZOUT_L         ((unsigned char)0x48)


#define MPU6050_PWR_MGMT_1          ((unsigned char)0x6B)
#define MPU6050_SMPLRT_DIV          ((unsigned char)0x19)
#define MPU6050_CONFIG              ((unsigned char)0x1A)
#define MPU6050_GYRO_CONFIG         ((unsigned char)0x1B)

CGyro::CGyro()
{

}

void CGyro::init(class CI2C_Interface *i2c_)
{
    i2c = i2c_;


    result.x = 0;
    result.y = 0;
    result.z = 0;

    offset.x = 0;
    offset.y = 0;
    offset.z = 0;

    angles.x = 0;
    angles.y = 0;
    angles.z = 0;

    delay_loops(10000);

    i2c->write_reg(MPU6050_ADDRESS, MPU6050_PWR_MGMT_1, 0x01);  //PLL with x-axis gyroscope
    i2c->write_reg(MPU6050_ADDRESS, MPU6050_CONFIG, 0x03);
    i2c->write_reg(MPU6050_ADDRESS, MPU6050_SMPLRT_DIV, 0x04);  //200Hz



    // Set gyroscope full scale range
     // Range selects FS_SEL and AFS_SEL are 0 - 3, so 2-bit values are left-shifted into positions 4:3
    unsigned char c =  i2c->read_reg(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG);

    i2c->write_reg(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG, c & ~0xE0); // Clear self-test bits [7:5]
    i2c->write_reg(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG, c & ~0x18); // Clear AFS bits [4:3]
    i2c->write_reg(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG, c | (1 << 4)); // Set 1000deg/s scale range for the gyro


    delay_loops(10000);

    read();

    int32_t calibration_iterations = 200;
    for (int32_t  i = 0; i < calibration_iterations; i++)
    {
      read(true);
      delay_loops(1000);
    }

    offset.x = offset.x/calibration_iterations;
    offset.y = offset.y/calibration_iterations;
    offset.z = offset.z/calibration_iterations;


    angles.x = 0;
    angles.y = 0;
    angles.z = 0;
}

CGyro::~CGyro()
{

}

void CGyro::read(bool calibration)
{
  //TODO read gyro
  int16_t x, y, z;

  i2c->start();

  i2c->write(MPU6050_ADDRESS);
  i2c->write(MPU6050_GYRO_XOUT_H);

  i2c->stop();


  i2c->start();
  i2c->write(MPU6050_ADDRESS|0x01);
  x = ((uint16_t)i2c->read(1)) << 8;
  x|= ((uint16_t)i2c->read(1));

  y = ((uint16_t)i2c->read(1)) << 8;
  y|= ((uint16_t)i2c->read(1));

  z = ((uint16_t)i2c->read(1)) << 8;
  z|= ((uint16_t)i2c->read(0));
  i2c->stop();

  if (calibration)
  {
    offset.x+= (int32_t)x;
    offset.y+= (int32_t)y;
    offset.z+= (int32_t)z;
  }

  result.x = (int32_t)x - offset.x;
  result.y = (int32_t)y - offset.y;
  result.z = (int32_t)z - offset.z;

  angles.x+= result.x/100;
  angles.y+= result.y/100;
  angles.z+= result.z/100;
}

void CGyro::delay_loops(uint32_t loops)
{
  while (loops--)
    __asm("nop");
}
