#include "headers/Ohm.h"

Ohm::Ohm(/* args */)
{
}

Ohm::~Ohm()
{
}

float Ohm::voltajeCalc(float corriente, float resistencia)
{
    if (corriente <= 0 || resistencia <= 0)
        return -1;

    return corriente * resistencia;
}

float Ohm::corrienteCalc(float voltaje, float resistencia)
{
    if (voltaje <= 0 || resistencia <= 0)
        return -1;

    return voltaje / resistencia;
}

float Ohm::resistenciaCalc(float voltaje, float corriente)
{
    if (corriente <= 0 || voltaje <= 0)
        return -1;

    return voltaje / corriente;
}
