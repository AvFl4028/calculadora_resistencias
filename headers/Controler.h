#ifndef __CONTROLER_H__
#define __CONTROLER_H__

#include "ColorsControler.h"
#include "CircuitosControler.h"
#include "resistencia.h"
#include <QObject>
#include <QDebug>

class Controler
{
private:
    ColorsControler colors;
    CircuitosControler circuitos;

public:
    ColorsControler *getColorsControler();
    CircuitosControler *getCircuitosControler();
    Controler(/* args */);
    ~Controler();
};

#endif // __CONTROLER_H__