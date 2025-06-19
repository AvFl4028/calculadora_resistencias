#ifndef BANDAS_H
#define BANDAS_H
#include "Colors.h"

class Bandas
{
private:
    int _position;
    Color _col;

public:
    Bandas(Color col, int position);
    ~Bandas();
    float getValue();
    static float getMultiplier(Color mult = NADA);
    static float getTolerance(Color tol = NADA);
    Color getColor();
};
#endif // BANDAS_H
