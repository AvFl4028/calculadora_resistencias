#ifndef RESISTENCIA_H
#define RESISTENCIA_H

#include "bandas.h"

class Resistencia
{
private:
    int value;
    Bandas* bandas;
    int _numBandas;
    int getNumBandas();

public:
    Resistencia(Bandas* band, int numBandas);

    ~Resistencia();
    int calcValue();
    int *getValuesTolerance();
};

#endif // RESISTENCIA_H
