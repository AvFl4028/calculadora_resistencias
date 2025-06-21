#ifndef __CONTROLER_H__
#define __CONTROLER_H__

#include "ColorsControler.h"
#include "CircuitosControler.h"
#include "OhmControler.h"
#include <QObject>
#include <QDebug>

class Controler
{
private:
    ColorsControler colors;
    CircuitosControler circuitos;
    OhmControler ohm;

public:
    ColorsControler *getColorsControler();
    CircuitosControler *getCircuitosControler();
    OhmControler *getOhmControler();
    Controler(/* args */);
    ~Controler();
};

#endif // __CONTROLER_H__