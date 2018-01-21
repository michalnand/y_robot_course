#include "gyro.h"

/*
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
*/

#define LSM6DS0_ADDRESS                      ((unsigned char)0xD6)
#define LSM6DS0_WHO_AM_I             ((unsigned char)0x0F)
#define LSM6DS0_WHO_AM_I_VALUE       ((unsigned char)0x68)

#define LSM6DS0_CTRL_REG1_G         ((unsigned char)0x10)
#define LSM6DS0_CTRL_REG2_G         ((unsigned char)0x11)
#define LSM6DS0_CTRL_REG3_G         ((unsigned char)0x12)
#define LSM6DS0_CTRL_REG4_G         ((unsigned char)0x1E)
#define LSM6DS0_CTRL_REG10_G        ((unsigned char)0x24)

#define LSM6DS0_GYRO_XOUT_L         ((unsigned char)0x18)
#define LSM6DS0_GYRO_XOUT_H         ((unsigned char)0x19)
#define LSM6DS0_GYRO_YOUT_L         ((unsigned char)0x1A)
#define LSM6DS0_GYRO_YOUT_H         ((unsigned char)0x1B)
#define LSM6DS0_GYRO_ZOUT_L         ((unsigned char)0x1C)
#define LSM6DS0_GYRO_ZOUT_H         ((unsigned char)0x1D)






#define LSM6DS0_FIFO_CTR	           ((unsigned char)0x2E)


#define LSM6DS0_G_ODR_PD                                ((unsigned char)0x00) /*!< Output Data Rate: Power-down*/
#define LSM6DS0_G_ODR_14_9HZ                            ((unsigned char)0x20) /*!< Output Data Rate: 14.9 Hz, cutoff 5Hz */
#define LSM6DS0_G_ODR_59_5HZ                            ((unsigned char)0x40) /*!< Output Data Rate: 59.5 Hz, cutoff 19Hz */
#define LSM6DS0_G_ODR_119HZ                             ((unsigned char)0x60) /*!< Output Data Rate: 119 Hz, cutoff 38Hz*/
#define LSM6DS0_G_ODR_238HZ                             ((unsigned char)0x80) /*!< Output Data Rate: 238 Hz, cutoff 76Hz*/
#define LSM6DS0_G_ODR_476HZ                             ((unsigned char)0xA0) /*!< Output Data Rate: 476 Hz, cutoff 100Hz*/
#define LSM6DS0_G_ODR_952HZ                             ((unsigned char)0xC0)

#define LSM6DS0_G_FS_245                               ((unsigned char)0x00) /*!< Full scale: 245 dps*/
#define LSM6DS0_G_FS_500                               ((unsigned char)0x08) /*!< Full scale: 500 dps */
#define LSM6DS0_G_FS_2000                              ((unsigned char)0x18) /*!< Full scale: 2000 dps */

#define LSM6DS0_G_XEN_ENABLE                           ((unsigned char)0x08)
#define LSM6DS0_G_YEN_ENABLE                           ((unsigned char)0x10)
#define LSM6DS0_G_ZEN_ENABLE                           ((unsigned char)0x20)


#define LSM6DS0_XG_CTRL_REG6_XL                        ((unsigned char)0x20)
#define LSM6DS0_XG_CTRL_REG5_XL                        ((unsigned char)0x1F)
#define LSM6DS0_XG_OUT_X_L_XL                          ((unsigned char)0x28)
#define LSM6DS0_XG_OUT_X_H_XL                          ((unsigned char)0x29)
#define LSM6DS0_XG_OUT_Y_L_XL                          ((unsigned char)0x2A)
#define LSM6DS0_XG_OUT_Y_H_XL                          ((unsigned char)0x2B)
#define LSM6DS0_XG_OUT_Z_L_XL                          ((unsigned char)0x2C)
#define LSM6DS0_XG_OUT_Z_H_XL                          ((unsigned char)0x2D)


#define LSM6DS0_XL_ODR_10HZ                             ((uint8_t)0x20) /*!< Output Data Rate: 10 Hz*/
#define LSM6DS0_XL_ODR_50HZ                             ((uint8_t)0x40) /*!< Output Data Rate: 50 Hz */
#define LSM6DS0_XL_ODR_119HZ                            ((uint8_t)0x60) /*!< Output Data Rate: 119 Hz */
#define LSM6DS0_XL_ODR_238HZ                            ((uint8_t)0x80) /*!< Output Data Rate: 238 Hz */
#define LSM6DS0_XL_ODR_476HZ                            ((uint8_t)0xA0) /*!< Output Data Rate: 476 Hz */
#define LSM6DS0_XL_ODR_952HZ                            ((uint8_t)0xC0) /*!< Output Data Rate: 952 Hz */

#define LSM6DS0_XL_ODR_MASK                             ((uint8_t)0xE0)


#define LSM6DS0_XL_FS_2G                                ((uint8_t)0x00) /*!< Full scale: +- 2g */
#define LSM6DS0_XL_FS_4G                                ((uint8_t)0x10) /*!< Full scale: +- 4g */
#define LSM6DS0_XL_FS_8G                                ((uint8_t)0x18) /*!< Full scale: +- 8g */


#define LSM6DS0_XL_ZEN_ENABLE                             ((uint8_t)0x20)
#define LSM6DS0_XL_YEN_ENABLE                           ((uint8_t)0x10)
#define LSM6DS0_XL_XEN_ENABLE                           ((uint8_t)0x08)



Gyro::Gyro()
{

}

void Gyro::init(class I2C_Interface *i2c_)
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

    present = 0;

    if (i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_WHO_AM_I) == LSM6DS0_WHO_AM_I_VALUE)
      present = 1;


    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_CTRL_REG1_G, LSM6DS0_G_ODR_476HZ | LSM6DS0_G_FS_500 );
    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_CTRL_REG4_G, LSM6DS0_G_XEN_ENABLE|LSM6DS0_G_YEN_ENABLE|LSM6DS0_G_ZEN_ENABLE); // anable x, y, z axis
    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_FIFO_CTR, 0); //bypass mode
    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_CTRL_REG3_G, 0); //hp filter disable

    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_CTRL_REG6_XL, LSM6DS0_XL_ODR_119HZ | LSM6DS0_XL_FS_2G); //output data rate, full scale
    i2c->write_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_CTRL_REG5_XL, LSM6DS0_XL_XEN_ENABLE|LSM6DS0_XL_YEN_ENABLE|LSM6DS0_XL_ZEN_ENABLE);



    delay_loops(10000);

    read();

    samples = 0;
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

    acceleration.x = 0;
    acceleration.y = 0;
    acceleration.z = 0;
}

Gyro::~Gyro()
{

}

void Gyro::read(bool calibration)
{
  if (i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_WHO_AM_I) == LSM6DS0_WHO_AM_I_VALUE)
    present = 1;
  else
    present = 0;

  int16_t x = 0, y = 0, z = 0;


  x = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_XOUT_H))<<8;
  x|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_XOUT_L))<<0;

  y = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_YOUT_H))<<8;
  y|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_YOUT_L))<<0;

  z = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_ZOUT_H))<<8;
  z|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_GYRO_ZOUT_L))<<0;


  if (calibration)
  {
    offset.x+= x;
    offset.y+= y;
    offset.z+= z;
  }

  result.x = x - offset.x;
  result.y = y - offset.y;
  result.z = z - offset.z;

  angles.x+= result.x/25;
  angles.y+= result.y/25;
  angles.z+= result.z/25;



  x = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_X_H_XL))<<8;
  x|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_X_L_XL))<<0;

  y = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_Y_H_XL))<<8;
  y|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_Y_L_XL))<<0;

  z = ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_Z_H_XL))<<8;
  z|= ((int16_t)i2c->read_reg(LSM6DS0_ADDRESS, LSM6DS0_XG_OUT_Z_L_XL))<<0;

  acceleration.x = x;
  acceleration.y = y;
  acceleration.z = z;

}



void Gyro::delay_loops(uint32_t loops)
{
  while (loops--)
    __asm("nop");
}
