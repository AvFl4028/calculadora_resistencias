#ifndef __CONTROLER_H__
#define __CONTROLER_H__

#include "ColorsControler.h"
#include "resistencia.h"
#include <QObject>
#include <QDebug>

class Controler
{
private:
    ColorsControler colors;

public:
    ColorsControler *getColorsControler();
    Controler(/* args */);
    ~Controler();
};

#endif // __CONTROLER_H__