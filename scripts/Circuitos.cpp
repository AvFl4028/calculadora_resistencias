#include "headers/Circuitos.h"

Circuitos::Circuitos(/* args */)
{
}

Circuitos::~Circuitos()
{
}

float Circuitos::SerieCalc(float *resistencias, int numResistencias)
{
    float result = 0.0;
    for (int i = 0; i < numResistencias; i++)
    {
        if (resistencias[i] < 0)
        {
            return -1;
        }
        result += resistencias[i];
    }
    return result;
}

float Circuitos::ParaleloCalc(float *resistencias, int numResistencias)
{
    float result = 0.0;
    for (int i = 0; i < numResistencias; i++)
    {
        if (resistencias[i] <= 0)
        {
            return -1;
        }

        result += (1 / resistencias[i]);
    }

    if (result == 0)
        return -2;

    return (1 / result);
}