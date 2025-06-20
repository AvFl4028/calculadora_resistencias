#include "headers/Controler.h"

Controler::Controler(/* args */)
{
}

Controler::~Controler()
{
}

ColorsControler *Controler::getColorsControler()
{
    return &colors;
}

CircuitosControler *Controler::getCircuitosControler()
{
    return &circuitos;
}