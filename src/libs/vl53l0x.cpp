#include "vl53l0x.h"


#include <stdint.h>

#define VL53L0X_ADDRESS                             ((unsigned char)0x52) // ((unsigned char)0b0101 0010)
#define VL53L0X_WHO_AM_I                            ((unsigned char)0x00C0)
#define VL53L0X_WHO_AM_I_VALUE                      ((unsigned char)0xEE) //who am i value

#define SYSRANGE_START                              ((unsigned char)0x00)
#define SYSTEM_THRESH_HIGH                          ((unsigned char)0x0C)
#define SYSTEM_THRESH_LOW                           ((unsigned char)0x0E)

#define SYSTEM_SEQUENCE_CONFIG                      ((unsigned char)0x01)
#define SYSTEM_RANGE_CONFIG                         ((unsigned char)0x09)
#define SYSTEM_INTERMEASUREMENT_PERIOD              ((unsigned char)0x04)

#define SYSTEM_INTERRUPT_CONFIG_GPIO                ((unsigned char)0x0A)

#define GPIO_HV_MUX_ACTIVE_HIGH                     ((unsigned char)0x84)

#define SYSTEM_INTERRUPT_CLEAR                      ((unsigned char)0x0B)

#define RESULT_INTERRUPT_STATUS                     ((unsigned char)0x13)
#define RESULT_RANGE_STATUS                         ((unsigned char)0x14)

#define RESULT_CORE_AMBIENT_WINDOW_EVENTS_RTN       ((unsigned char)0xBC)
#define RESULT_CORE_RANGING_TOTAL_EVENTS_RTN        ((unsigned char)0xC0)
#define RESULT_CORE_AMBIENT_WINDOW_EVENTS_REF       ((unsigned char)0xD0)
#define RESULT_CORE_RANGING_TOTAL_EVENTS_REF        ((unsigned char)0xD4)
#define RESULT_PEAK_SIGNAL_RATE_REF                 ((unsigned char)0xB6)

#define ALGO_PART_TO_PART_RANGE_OFFSET_MM           ((unsigned char)0x28)

#define I2C_SLAVE_DEVICE_ADDRESS                    ((unsigned char)0x8A)

#define MSRC_CONFIG_CONTROL                         ((unsigned char)0x60)

#define PRE_RANGE_CONFIG_MIN_SNR                    ((unsigned char)0x27)
#define PRE_RANGE_CONFIG_VALID_PHASE_LOW            ((unsigned char)0x56)
#define PRE_RANGE_CONFIG_VALID_PHASE_HIGH           ((unsigned char)0x57)
#define PRE_RANGE_MIN_COUNT_RATE_RTN_LIMIT          ((unsigned char)0x64)

#define FINAL_RANGE_CONFIG_MIN_SNR                  ((unsigned char)0x67)
#define FINAL_RANGE_CONFIG_VALID_PHASE_LOW          ((unsigned char)0x47)
#define FINAL_RANGE_CONFIG_VALID_PHASE_HIGH         ((unsigned char)0x48)
#define FINAL_RANGE_CONFIG_MIN_COUNT_RATE_RTN_LIMIT ((unsigned char)0x44)

#define PRE_RANGE_CONFIG_SIGMA_THRESH_HI            ((unsigned char)0x61)
#define PRE_RANGE_CONFIG_SIGMA_THRESH_LO            ((unsigned char)0x62)

#define PRE_RANGE_CONFIG_VCSEL_PERIOD               ((unsigned char)0x50)
#define PRE_RANGE_CONFIG_TIMEOUT_MACROP_HI          ((unsigned char)0x51)
#define PRE_RANGE_CONFIG_TIMEOUT_MACROP_LO          ((unsigned char)0x52)

#define SYSTEM_HISTOGRAM_BIN                        ((unsigned char)0x81)
#define HISTOGRAM_CONFIG_INITIAL_PHASE_SELECT       ((unsigned char)0x33)
#define HISTOGRAM_CONFIG_READOUT_CTRL               ((unsigned char)0x55)

#define FINAL_RANGE_CONFIG_VCSEL_PERIOD             ((unsigned char)0x70)
#define FINAL_RANGE_CONFIG_TIMEOUT_MACROP_HI        ((unsigned char)0x71)
#define FINAL_RANGE_CONFIG_TIMEOUT_MACROP_LO        ((unsigned char)0x72)
#define CROSSTALK_COMPENSATION_PEAK_RATE_MCPS       ((unsigned char)0x20)

#define MSRC_CONFIG_TIMEOUT_MACROP                  ((unsigned char)0x46)

#define SOFT_RESET_GO2_SOFT_RESET_N                 ((unsigned char)0xBF)
#define IDENTIFICATION_MODEL_ID                     ((unsigned char)0xC0)
#define IDENTIFICATION_REVISION_ID                  ((unsigned char)0xC2)

#define OSC_CALIBRATE_VAL                           ((unsigned char)0xF8)

#define GLOBAL_CONFIG_VCSEL_WIDTH                   ((unsigned char)0x32)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_0            ((unsigned char)0xB0)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_1            ((unsigned char)0xB1)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_2            ((unsigned char)0xB2)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_3            ((unsigned char)0xB3)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_4            ((unsigned char)0xB4)
#define GLOBAL_CONFIG_SPAD_ENABLES_REF_5            ((unsigned char)0xB5)

#define GLOBAL_CONFIG_REF_EN_START_SELECT           ((unsigned char)0xB6)
#define DYNAMIC_SPAD_NUM_REQUESTED_REF_SPAD         ((unsigned char)0x4E)
#define DYNAMIC_SPAD_REF_EN_START_OFFSET            ((unsigned char)0x4F)
#define POWER_MANAGEMENT_GO1_POWER_FORCE            ((unsigned char)0x80)

#define VHV_CONFIG_PAD_SCL_SDA__EXTSUP_HV           ((unsigned char)0x89)

#define ALGO_PHASECAL_LIM                           ((unsigned char)0x30)
#define ALGO_PHASECAL_CONFIG_TIMEOUT                ((unsigned char)0x30)


VL53L0X::VL53L0X()
{

}

VL53L0X::~VL53L0X()
{

} 

int VL53L0X::init(class I2C_Interface *i2c_)
{
  uint32_t loops;

  this->i2c = i2c_;

  distance_result = 8192;

  //set 2.8V mode
  i2c->write_reg(VL53L0X_ADDRESS, VHV_CONFIG_PAD_SCL_SDA__EXTSUP_HV, i2c->read_reg(VL53L0X_ADDRESS, VHV_CONFIG_PAD_SCL_SDA__EXTSUP_HV)|0x01);

  // Read WHO_AM_I register for VL53L0X, expected value 0xEE
  if (i2c->read_reg(VL53L0X_ADDRESS, VL53L0X_WHO_AM_I) != VL53L0X_WHO_AM_I_VALUE)
    return -2;

  i2c->write_reg(VL53L0X_ADDRESS, SOFT_RESET_GO2_SOFT_RESET_N, 0x01);  // reset device
  loops = 100000;
  while (loops--)
    __asm("nop");


  // "Set I2C standard mode"
  i2c->write_reg(VL53L0X_ADDRESS, 0x88, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x00);
  uint8_t stop_variable = i2c->read_reg(VL53L0X_ADDRESS, 0x91);
  (void)stop_variable;
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x00);



  unsigned char spad_count = 0;
  bool spad_type_is_aperture;
  getSPADinfo(&spad_count, &spad_type_is_aperture);

  // The SPAD map (RefGoodSpadMap) is read by VL53L0X_get_info_from_device() in
  // the API, but the same data seems to be more easily readable from
  // GLOBAL_CONFIG_SPAD_ENABLES_REF_0 through _6, so read it from there
  unsigned char ref_spad_map[6];
  i2c->read_reg_multi(VL53L0X_ADDRESS, GLOBAL_CONFIG_SPAD_ENABLES_REF_0, ref_spad_map, 6);

  // -- VL53L0X_set_reference_spads() begin (assume NVM values are valid)
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, DYNAMIC_SPAD_REF_EN_START_OFFSET, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, DYNAMIC_SPAD_NUM_REQUESTED_REF_SPAD, 0x2C);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, GLOBAL_CONFIG_REF_EN_START_SELECT, 0xB4);

  unsigned char first_spad_to_enable = spad_type_is_aperture ? 12 : 0; // 12 is the first aperture spad
  unsigned char spads_enabled = 0;

  for (unsigned char i = 0; i < 48; i++)
  {
    if (i < first_spad_to_enable || spads_enabled == spad_count)
    {
      // This bit is lower than the first one that should be enabled, or
      // (reference_spad_count) bits have already been enabled, so zero this bit
      ref_spad_map[i / 8] &= ~(1 << (i % 8));
    }
    else if ((ref_spad_map[i / 8] >> (i % 8)) & 0x1)
    {
      spads_enabled++;
    }
  }

  i2c->write_reg_multi(VL53L0X_ADDRESS, GLOBAL_CONFIG_SPAD_ENABLES_REF_0, ref_spad_map, 6);


/*
  // -- VL53L0X_load_tuning_settings() begin
  // DefaultTuningSettings from vl53l0x_tuning.h

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x09, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x10, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x11, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0x24, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x25, 0xFF);
  i2c->write_reg(VL53L0X_ADDRESS, 0x75, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x4E, 0x2C);
  i2c->write_reg(VL53L0X_ADDRESS, 0x48, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x30, 0x20);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x30, 0x09);
  i2c->write_reg(VL53L0X_ADDRESS, 0x54, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x31, 0x04);
  i2c->write_reg(VL53L0X_ADDRESS, 0x32, 0x03);
  i2c->write_reg(VL53L0X_ADDRESS, 0x40, 0x83);
  i2c->write_reg(VL53L0X_ADDRESS, 0x46, 0x25);
  i2c->write_reg(VL53L0X_ADDRESS, 0x60, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x27, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x50, 0x06);
  i2c->write_reg(VL53L0X_ADDRESS, 0x51, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x52, 0x96);
  i2c->write_reg(VL53L0X_ADDRESS, 0x56, 0x08);
  i2c->write_reg(VL53L0X_ADDRESS, 0x57, 0x30);
  i2c->write_reg(VL53L0X_ADDRESS, 0x61, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x62, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x64, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x65, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x66, 0xA0);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x22, 0x32);
  i2c->write_reg(VL53L0X_ADDRESS, 0x47, 0x14);
  i2c->write_reg(VL53L0X_ADDRESS, 0x49, 0xFF);
  i2c->write_reg(VL53L0X_ADDRESS, 0x4A, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x7A, 0x0A);
  i2c->write_reg(VL53L0X_ADDRESS, 0x7B, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x78, 0x21);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x23, 0x34);
  i2c->write_reg(VL53L0X_ADDRESS, 0x42, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x44, 0xFF);
  i2c->write_reg(VL53L0X_ADDRESS, 0x45, 0x26);
  i2c->write_reg(VL53L0X_ADDRESS, 0x46, 0x05);
  i2c->write_reg(VL53L0X_ADDRESS, 0x40, 0x40);
  i2c->write_reg(VL53L0X_ADDRESS, 0x0E, 0x06);
  i2c->write_reg(VL53L0X_ADDRESS, 0x20, 0x1A);
  i2c->write_reg(VL53L0X_ADDRESS, 0x43, 0x40);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x34, 0x03);
  i2c->write_reg(VL53L0X_ADDRESS, 0x35, 0x44);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x31, 0x04);
  i2c->write_reg(VL53L0X_ADDRESS, 0x4B, 0x09);
  i2c->write_reg(VL53L0X_ADDRESS, 0x4C, 0x05);
  i2c->write_reg(VL53L0X_ADDRESS, 0x4D, 0x04);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x44, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x45, 0x20);
  i2c->write_reg(VL53L0X_ADDRESS, 0x47, 0x08);
  i2c->write_reg(VL53L0X_ADDRESS, 0x48, 0x28);
  i2c->write_reg(VL53L0X_ADDRESS, 0x67, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x70, 0x04);
  i2c->write_reg(VL53L0X_ADDRESS, 0x71, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x72, 0xFE);
  i2c->write_reg(VL53L0X_ADDRESS, 0x76, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x77, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x0D, 0x01);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x01, 0xF8);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x8E, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x00);

// -- VL53L0X_load_tuning_settings() end
*/









  // Configure GPIO1 for interrupt, active LOW
  unsigned char actHIGH = i2c->read_reg(VL53L0X_ADDRESS, GPIO_HV_MUX_ACTIVE_HIGH);
  i2c->write_reg(VL53L0X_ADDRESS, SYSTEM_INTERRUPT_CONFIG_GPIO, 0x04); // enable data ready interrupt
  i2c->write_reg(VL53L0X_ADDRESS, GPIO_HV_MUX_ACTIVE_HIGH, actHIGH & ~0x10); // GPIO1 interrupt active LOW
  i2c->write_reg(VL53L0X_ADDRESS, SYSTEM_INTERRUPT_CLEAR, 0x01); // clear interrupt


  i2c->write_reg(VL53L0X_ADDRESS, SYSRANGE_START, 0x02);

  return 0;
}

int VL53L0X::read()
{
  i2c->write_reg(VL53L0X_ADDRESS, SYSTEM_INTERRUPT_CLEAR, 0x01); // clear interrupt
  i2c->read_reg_multi(VL53L0X_ADDRESS, RESULT_RANGE_STATUS, range_data, 14); // continuous ranging

  unsigned char error =  (range_data[0] & 0x78) >> 3;
  (void)error;

  int distance_tmp = (((uint16_t)range_data[10]) << 8) | ((uint16_t)range_data[11]);

  if ((distance_tmp > 5) && (distance_tmp < 1024))
  {
    int filter_alpha = 8;
    distance_result = (filter_alpha*distance_result + distance_tmp)/(filter_alpha + 1);
  }
  else
    distance_result = 1024;

  return distance_result;
}

int VL53L0X::get()
{
  return distance_result;
}





// Get reference SPAD (single photon avalanche diode) count and type
// based on VL53L0X_get_info_from_device(),
// but only gets reference SPAD count and type
bool VL53L0X::getSPADinfo(unsigned char *count, bool * type_is_aperture)
{
  unsigned char tmp;
  *count = 0;

  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x00);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x06);
  i2c->write_reg(VL53L0X_ADDRESS, 0x83, i2c->read_reg(VL53L0X_ADDRESS, 0x83) | 0x04);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x07);
  i2c->write_reg(VL53L0X_ADDRESS, 0x81, 0x01);

  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x01);

  i2c->write_reg(VL53L0X_ADDRESS, 0x94, 0x6b);
  i2c->write_reg(VL53L0X_ADDRESS, 0x83, 0x00);

  uint32_t loops = 1000000;
  while (i2c->read_reg(VL53L0X_ADDRESS, 0x83) == 0x00)
  {
    if (loops == 0)
      return false;

    loops--;
  }

  i2c->write_reg(VL53L0X_ADDRESS, 0x83, 0x01);
  tmp = i2c->read_reg(VL53L0X_ADDRESS, 0x92);

  *count = tmp & 0x7f;
  *type_is_aperture = (tmp >> 7) & 0x01;

  i2c->write_reg(VL53L0X_ADDRESS, 0x81, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x06);
  i2c->write_reg(VL53L0X_ADDRESS, 0x83,  i2c->read_reg(VL53L0X_ADDRESS,  0x83  & ~0x04) ); //i2c->read_reg(VL53L0X_ADDRESS, 0x83) & ~0x04);
  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, 0x00, 0x01);

  i2c->write_reg(VL53L0X_ADDRESS, 0xFF, 0x00);
  i2c->write_reg(VL53L0X_ADDRESS, 0x80, 0x00);

  return true;
}

bool VL53L0X::performSingleRefCalibration(unsigned char vhv_init_byte)
{
  i2c->write_reg(VL53L0X_ADDRESS, SYSRANGE_START, 0x01 | vhv_init_byte); // VL53L0X_REG_SYSRANGE_MODE_START_STOP

  uint32_t loops = 1000000;
  while ((i2c->read_reg(VL53L0X_ADDRESS, RESULT_INTERRUPT_STATUS) & 0x07) == 0)
  {
    if (loops == 0)
      return false;

    loops--;
  }

  i2c->write_reg(VL53L0X_ADDRESS, SYSTEM_INTERRUPT_CLEAR, 0x01);
  i2c->write_reg(VL53L0X_ADDRESS, SYSRANGE_START, 0x00);

  return true;
}
