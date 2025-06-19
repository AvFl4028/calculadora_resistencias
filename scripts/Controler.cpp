#include "headers/Controler.h"

void Controler::colorsConnectors(ColorsControler *controler)
{
    QObject::connect(
        controler, &ColorsControler::msgChanged, [](void)
        { qDebug() << "Señal activada con texto" << "\n"; });
}