#ifndef __CONTROLER_H__
#define __CONTROLER_H__

#include "ColorsControler.h"
#include <QObject>
#include <QDebug>

class Controler
{
    public:
        static void colorsConnectors(ColorsControler *controler);
};

#endif // __CONTROLER_H__