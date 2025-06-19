#include "headers/resistencia.h"

Resistencia::Resistencia(Bandas *band, int numBandas)
{
    bandas = band;
    _numBandas = numBandas;
}

Resistencia::~Resistencia()
{
}

int Resistencia::calcValue()
{
    int value = 0;
    if (_numBandas == 4)
    {
        for (int i = 0; i < 2; i++)
        {
            value += bandas[i].getValue();
        }
        value = value * Bandas::getMultiplier(bandas[2].getColor());
    }

    if (_numBandas == 5 || _numBandas == 5)
    {
        for (int i = 0; i < 3; i++)
        {
            value += bandas[i].getValue();
        }
        value = value * Bandas::getMultiplier(bandas[3].getColor());
    }
    return value;
}
