#include "apds9950.h"

/*APDS-9950 RGB sensor*/
#define RGB_ADDRESS		(0x39<<1)

#define RGB_COMMAND		(1<<7)


/*APDS-9950 registers */
#define RGB_ENABLE		0x00
#define RGB_ATIME			0x01
#define RGB_WTIME			0x03
#define RGB_AILTL			0x04
#define RGB_AILTH			0x05

#define RGB_AIHTL			0x06
#define RGB_AIHTH			0x07

#define RGB_PILTL			0x08
#define RGB_PILTH			0x09

#define RGB_PIHTL			0x0A
#define RGB_PIHTH			0x0B

#define RGB_PERS			      0x0C
#define RGB_CONFIG			    0x0D
#define RGB_PPULSE			    0x0E

#define RGB_CONTROL			    0x0F
#define RGB_ID				      0x12
#define RGB_ID_VALUE				0x69

#define RGB_STATUS 			0x13

#define RGB_CDATAL			0x14
#define RGB_CDATAH			0x15
#define RGB_RDATAL			0x16
#define RGB_RDATAH			0x17
#define RGB_GDATAL			0x18
#define RGB_GDATAH			0x19
#define RGB_BDATAL			0x1A
#define RGB_BDATAH			0x1B
#define RGB_PDATAL 			0x1C
#define RGB_PDATAH 			0x1D


APDS9950::APDS9950()
{
  result.r = 0;
  result.g = 0;
  result.b = 0;
  result.a = 0;
  result.proximity = 0;
  i2c = nullptr;
}

APDS9950::~APDS9950()
{

}

int APDS9950::init(class I2C_Interface *i2c)
{
  this->i2c = i2c;

  i2c->write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ATIME, 0xFF); 			/*2.4ms time*/
  i2c->write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_WTIME, 0xFF); 			/*2.4ms time*/

  i2c->write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONFIG, 0); 				/*dont wait long*/
  i2c->write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ENABLE, (1<<1)|(1<<0));	/*power on, RGBC enable*/

  /*
    proximity sensor setup
    100mA LED current
    use IR diode
    60x GAIN
  */
  i2c->write_reg(RGB_ADDRESS, RGB_COMMAND|RGB_CONTROL, (1<<5)|(1<<0)|(1<<1));


  if (i2c->read_reg(RGB_ADDRESS, RGB_COMMAND|RGB_ID) != RGB_ID_VALUE)
    return -1;

  return 0;
}

void APDS9950::read()
{
  uint16_t tmp;

  i2c->start();
	i2c->write(RGB_ADDRESS);
	i2c->write(RGB_COMMAND|RGB_CDATAL|(1<<5));
  i2c->stop();

	i2c->start();
	i2c->write(RGB_ADDRESS|0x01);

	tmp = ((uint16_t)i2c->read(1))<<0;
  tmp|= ((uint16_t)i2c->read(1))<<8;
  result.a = tmp;

  tmp = ((uint16_t)i2c->read(1))<<0;
  tmp|= ((uint16_t)i2c->read(1))<<8;
  result.r = tmp;

  tmp = ((uint16_t)i2c->read(1))<<0;
  tmp|= ((uint16_t)i2c->read(1))<<8;
  result.g = tmp;

  tmp = ((uint16_t)i2c->read(1))<<0;
  tmp|= ((uint16_t)i2c->read(1))<<8;
  result.b = tmp;

  tmp = ((uint16_t)i2c->read(1))<<0;
  tmp|= ((uint16_t)i2c->read(0))<<8;
  result.proximity = tmp;

	i2c->stop();
}
