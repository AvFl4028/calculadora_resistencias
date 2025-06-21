#ifndef __OHM_H__
#define __OHM_H__

class Ohm
{
private:
    /* data */
public:
    Ohm(/* args */);
    ~Ohm();

    static float voltajeCalc(float corriente, float resistencia);
    static float corrienteCalc(float voltaje, float resistencia);
    static float resistenciaCalc(float voltaje, float corriente);
};

#endif // __OHM_H__