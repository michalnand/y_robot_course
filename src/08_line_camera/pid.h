#ifndef _PID_H_
#define _PID_H_

class PID
{
  private:
    float u, range;
    float e0, e1, e2;
    float k0, k1, k2;

  public:
    PID();
    PID(float kp, float ki, float kd, float range);
    ~PID();

    void init(float kp, float ki, float kd, float range);


    float process(float error);
};


#endif
