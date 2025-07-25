#include "headers/bandas.h"

Bandas::Bandas(Color col, int position)
    : _col(col), _position(position)
{
    // _col = col;
}

Bandas::~Bandas()
{
}

float Bandas::getValue()
{
    switch (_position)
    {
    case 0:
        return (float)_col * 100;
    case 1:
        return (float)_col * 10;
    case 2:
        return (float)_col * 1;
    case 3:
        return getMultiplier(_col);
    case 4:
        return getTolerance(_col);

    default:
        return 0.0;
    }
}

float Bandas::getMultiplier(Color mult)
{
    switch (mult)
    {
    case NEGRO:
        return 1;
    case MARRON:
        return 10;
    case ROJO:
        return 100;
    case NARANJA:
        return 1000;
    case AMARILLO:
        return 10000;
    case VERDE:
        return 100000;
    case AZUL:
        return 1000000;
    case VIOLETA:
        return 10000000;
    case GRIS:
        return 100000000;
    case BLANCO:
        return 1000000000;
    case ORO:
        return 0.1;
    case PLATA:
        return 0.001;
    default:
        return 0;
    }
}

float Bandas::getTolerance(Color tol)
{
    switch (tol)
    {
    case NEGRO:
        return 0.01;
    case MARRON:
        return 0.02;
    case VERDE:
        return 0.005;
    case AZUL:
        return 0.0025;
    case VIOLETA:
        return 0.001;
    case GRIS:
        return 0.0005;
    case ORO:
        return 0.05;
    case PLATA:
        return 0.1;
    default:
        return -1;
    }
}

Color Bandas::getColor()
{
    return _col;
}

Color Bandas::toColor(std::string color)
{
    Color result = NADA;
    if (color == "NEGRO")
        result = NEGRO;

    if (color == "MARRON")
        result = MARRON;

    if (color == "ROJO")
        result = ROJO;

    if (color == "NARANJA")
        result = NARANJA;

    if (color == "AMARILLO")
        result = AMARILLO;

    if (color == "VERDE")
        result = VERDE;

    if (color == "AZUL")
        result = AZUL;

    if (color == "VIOLETA")
        result = VIOLETA;

    if (color == "GRIS")
        result = GRIS;

    if (color == "BLANCO")
        result = BLANCO;

    if (color == "ORO")
        result = ORO;

    if (color == "PLATA")
        result = PLATA;

    return result;
}

std::string Bandas::getPPM(Color ppm)
{
    switch (ppm)
    {
    case MARRON:
        return "100 ppm";
    case ROJO:
        return "50 ppm";
    case NARANJA:
        return "15 ppm";
    case AMARILLO:
        return "25 ppm";
    case AZUL:
        return "10 ppm";
    case VIOLETA:
        return "5 ppm";

    default:
        return "No hay ppm valido";
    }
}