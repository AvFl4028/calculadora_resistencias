#ifndef RESISTENCIA_H
#define RESISTENCIA_H

#include "bandas.h"
#include <string>

class Resistencia
{
private:
    int value;
    Bandas *bandas;
    int _numBandas;
    int getNumBandas();

public:
    Resistencia(Bandas *band, int numBandas);
    Resistencia();

    ~Resistencia();
    long long calcValue();
    std::string getValuesTolerance();

    void setBandas(Bandas *band);
    void setNumBandas(int numBands);
};

#endif // RESISTENCIA_H
