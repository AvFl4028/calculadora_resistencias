#include "headers/ColorsControler.h"

ColorsControler::ColorsControler(QObject *parent)
    : QObject(parent), _msg("Texto inicial") {}

QString ColorsControler::msg() const
{
    return _msg;
}

void ColorsControler::setMsg(const QString &newMsg)
{
    if (newMsg != _msg)
    {
        _msg = newMsg;
        emit msgChanged();
    }
}

QString ColorsControler::banda_uno_color() const
{
    return _banda_uno_color;
}

QString ColorsControler::banda_dos_color() const
{
    return _banda_dos_color;
}

QString ColorsControler::banda_tres_color() const
{
    return _banda_tres_color;
}

QString ColorsControler::banda_cuatro_color() const
{
    return _banda_cuatro_color;
}

QString ColorsControler::banda_cinco_color() const
{
    return _banda_cinco_color;
}

QString ColorsControler::banda_seis_color() const
{
    return _banda_seis_color;
}

void ColorsControler::setBanda_uno_color(const QString &newMsg)
{
    if (newMsg != _banda_uno_color)
    {
        _banda_uno_color = newMsg;
        emit banda_uno_color_changed();
    }
}

void ColorsControler::setBanda_dos_color(const QString &newMsg)
{
    if (newMsg != _banda_dos_color)
    {
        _banda_dos_color = newMsg;
        emit banda_dos_color_changed();
    }
}

void ColorsControler::setBanda_tres_color(const QString &newMsg)
{
    if (newMsg != _banda_tres_color)
    {
        _banda_tres_color = newMsg;
        emit banda_tres_color_changed();
    }
}

void ColorsControler::setBanda_cuatro_color(const QString &newMsg)
{
    if (newMsg != _banda_cuatro_color)
    {
        _banda_cuatro_color = newMsg;
        emit banda_cuatro_color_changed();
    }
}

void ColorsControler::setBanda_cinco_color(const QString &newMsg)
{
    if (newMsg != _banda_cinco_color)
    {
        _banda_cinco_color = newMsg;
        emit banda_cinco_color_changed();
    }
}

void ColorsControler::setBanda_seis_color(const QString &newMsg)
{
    if (newMsg != _banda_seis_color)
    {
        _banda_seis_color = newMsg;
        emit banda_seis_color_changed();
    }
}
