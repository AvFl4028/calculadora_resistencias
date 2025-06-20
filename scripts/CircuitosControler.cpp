#include "headers/CircuitosControler.h"

CircuitosControler::CircuitosControler(QObject *parent)
    : QObject(parent), _msg("Texto inicial") {}

CircuitosControler::~CircuitosControler()
{
}

void CircuitosControler::setMsg(const QString &newMsg)
{
    if (_msg != newMsg)
    {
        _msg = newMsg;
        emit msgChanged(newMsg);
    }
}

QString CircuitosControler::msg() const
{
    return _msg;
}

QString CircuitosControler::circuito() const
{
    return _circuito;
}

QString CircuitosControler::numResistencias() const
{
    return _numResistencias;
}

QString CircuitosControler::valor() const
{
    return _valor;
}

QString CircuitosControler::valorTolerancia() const
{
    return _valorTolerancia;
}

QString CircuitosControler::r_uno_valor() const
{
    return _r_uno_valor;
}

QString CircuitosControler::r_dos_valor() const
{
    return _r_dos_valor;
}

QString CircuitosControler::r_tres_valor() const
{
    return _r_tres_valor;
}

QString CircuitosControler::r_cuatro_valor() const
{
    return _r_cuatro_valor;
}

QString CircuitosControler::r_cinco_valor() const
{
    return _r_cinco_valor;
}

QString CircuitosControler::r_seis_valor() const
{
    return _r_seis_valor;
}

void CircuitosControler::setCircuito(const QString &value)
{
    if (_circuito != value)
    {
        _circuito = value;
        emit circuitoChanged(value);
    }
}

void CircuitosControler::setNumResistencias(const QString &value)
{
    if (_numResistencias != value)
    {
        _numResistencias = value;
        emit numResistenciasChanged(value);
    }
}

void CircuitosControler::setValor(const QString &value)
{
    if (_valor != value)
    {
        _valor = value;
        emit valorChanged(value);
    }
}

void CircuitosControler::setValorTolerancia(const QString &value)
{
    if (_valorTolerancia != value)
    {
        _valorTolerancia = value;
        emit valorToleranciaChanged(value);
    }
}

void CircuitosControler::set_r_uno_valor(const QString &value)
{
    if (_r_uno_valor != value)
    {
        _r_uno_valor = value;
        emit r_uno_valor_changed(value);
    }
}

void CircuitosControler::set_r_dos_valor(const QString &value)
{
    if (_r_dos_valor != value)
    {
        _r_dos_valor = value;
        emit r_dos_valor_changed(value);
    }
}

void CircuitosControler::set_r_tres_valor(const QString &value)
{
    if (_r_tres_valor != value)
    {
        _r_tres_valor = value;
        emit r_tres_valor_changed(value);
    }
}

void CircuitosControler::set_r_cuatro_valor(const QString &value)
{
    if (_r_cuatro_valor != value)
    {
        _r_cuatro_valor = value;
        emit r_cuatro_valor_changed(value);
    }
}

void CircuitosControler::set_r_cinco_valor(const QString &value)
{
    if (_r_cinco_valor != value)
    {
        _r_cinco_valor = value;
        emit r_cinco_valor_changed(value);
    }
}

void CircuitosControler::set_r_seis_valor(const QString &value)
{
    if (_r_seis_valor != value)
    {
        _r_seis_valor = value;
        emit r_seis_valor_changed(value);
    }
}

template <typename Signal>
void CircuitosControler::setupConnection(QString msg, Signal func)
{
    QObject::connect(
        this, func, [this, msg](QString value)
        { qDebug() << msg + value << "\n"; updateValues(); });
}

void CircuitosControler::setupConnections()
{
    setupConnection("Mensaje cambiado a: ", &CircuitosControler::msgChanged);

    setupConnection("Valor: ", &CircuitosControler::valorChanged);
    setupConnection("Valor Tolerancia: ", &CircuitosControler::valorToleranciaChanged);

    setupConnection("Numero de resistencias: ", &CircuitosControler::numResistenciasChanged);
    setupConnection("Circuito: ", &CircuitosControler::circuitoChanged);

    setupConnection("Resistencia 1 valor: ", &CircuitosControler::r_uno_valor_changed);
    setupConnection("Resistencia 2 valor: ", &CircuitosControler::r_dos_valor_changed);
    setupConnection("Resistencia 3 valor: ", &CircuitosControler::r_tres_valor_changed);
    setupConnection("Resistencia 4 valor: ", &CircuitosControler::r_cuatro_valor_changed);
    setupConnection("Resistencia 5 valor: ", &CircuitosControler::r_cinco_valor_changed);
    setupConnection("Resistencia 6 valor: ", &CircuitosControler::r_seis_valor_changed);
}

void CircuitosControler::updateValues()
{
    if (_numResistencias == "4")
    {
        
    }
}
