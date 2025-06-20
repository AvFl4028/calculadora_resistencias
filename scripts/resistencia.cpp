#include "headers/resistencia.h"

Resistencia::Resistencia(Bandas *band, int numBandas)
{
    bandas = band;
    _numBandas = numBandas;
}

Resistencia::Resistencia()
{
}

void Resistencia::setBandas(Bandas *band)
{
    bandas = band;
}

void Resistencia::setNumBandas(int numBandas)
{
    _numBandas = numBandas;
}

Resistencia::~Resistencia()
{
}

long long Resistencia::calcValue()
{
    long long value = 0;
    if (_numBandas == 4)
    {
        for (int i = 0; i < 2; i++)
        {
            value += bandas[i].getValue();
        }
        value = value * Bandas::getMultiplier(bandas[2].getColor());
    }

    if (_numBandas == 5 || _numBandas == 6)
    {
        for (int i = 0; i < 3; i++)
        {
            value += bandas[i].getValue();
        }
        value = value * Bandas::getMultiplier(bandas[3].getColor());
    }
    return value;
}

std::string Resistencia::getValuesTolerance()
{
    std::string result = "";

    long long valorTeorico = calcValue();
    float tolerancia;

    if (_numBandas == 4)
        tolerancia = Bandas::getTolerance(bandas[3].getColor());
    else if (_numBandas == 5 || _numBandas == 6)
        tolerancia = Bandas::getTolerance(bandas[4].getColor());
    else
        return "Error tolerancia";

    float valorTolerancia = valorTeorico * tolerancia;

    long long min = valorTeorico - valorTolerancia;
    long long max = valorTeorico + valorTolerancia;

    return "(" + std::to_string(min) + ", " + std::to_string(max) + ")";
}