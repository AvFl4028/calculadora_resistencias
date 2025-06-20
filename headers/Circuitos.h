#ifndef __CIRCUITOS_H__
#define __CIRCUITOS_H__

class Circuitos
{
private:
    /* data */
public:
    Circuitos(/* args */);
    ~Circuitos();
    static float SerieCalc(float *resistencias, int numResistencias);
    static float ParaleloCalc(float *resistencias, int numResistencias);
};


#endif // __CIRCUITOS_H__