#ifndef _ITG3200_H_
#define _ITG3200_H_


struct sITG3200
{
    int x, y, z;
};


class CITG3200
{
  public:
    struct sITG3200 result;

  public:
    CITG3200();
    ~CITG3200();

    void read();
};

#endif
