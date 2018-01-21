#ifndef _RT_TIMER_H_
#define _RT_TIMER_H_

#include <avr/io.h>
#include <avr/interrupt.h>
#include <task.h>

#define RT_TIMERS_COUNT    8

#define RT_CPU_FREQUENCY    (uint32_t)10000000    //10MHz
#define RT_FREQUENCY        (uint32_t)1000        //1000Hz


class Timer
{

  public:
    Timer();
    ~Timer();

    int add_task(Task *callback, unsigned int period_ms);
    void main();

    unsigned long int get_time();
    void delay_ms(unsigned long int ms_time);
    void delay_loops(unsigned long int loops);
};

extern class Timer timer;


#endif
