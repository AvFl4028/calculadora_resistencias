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
    std::stringstream valor;
    int num = _numResistencias.toInt();
    float result = 0;

    if (num == 4)
    {
        float valores[4] = {toFloat(_r_uno_valor), toFloat(_r_dos_valor), toFloat(_r_tres_valor), toFloat(_r_cuatro_valor)};
        if (_circuito == "Serie")
        {
            result = Circuitos::SerieCalc(valores, num);
        }
        else if (_circuito == "Paralelo")
        {
            result = Circuitos::ParaleloCalc(valores, num);
        }
    }

    if (num == 5)
    {
        float valores[5] = {toFloat(_r_uno_valor), toFloat(_r_dos_valor), toFloat(_r_tres_valor), toFloat(_r_cuatro_valor), toFloat(_r_cinco_valor)};
        if (_circuito == "Serie")
        {
            result = Circuitos::SerieCalc(valores, num);
        }
        else if (_circuito == "Paralelo")
        {
            result = Circuitos::ParaleloCalc(valores, num);
        }
    }

    if (num == 6)
    {
        float valores[6] = {toFloat(_r_uno_valor), toFloat(_r_dos_valor), toFloat(_r_tres_valor), toFloat(_r_cuatro_valor), toFloat(_r_cinco_valor), toFloat(_r_seis_valor)};
        if (_circuito == "Serie")
        {
            result = Circuitos::SerieCalc(valores, num);
        }
        else if (_circuito == "Paralelo")
        {
            result = Circuitos::ParaleloCalc(valores, num);
        }
    }

    if (result == -1)
    {
        valor << "Error, falta de datos";
    }
    else if (result == -2)
    {
        valor << "Error, R=1/0!";
    }
    else
    {
        valor << result;
    }

    setValor(QString::fromStdString(valor.str() + " Ohms"));
}

float CircuitosControler::toFloat(QString mount)
{
    if (mount.isEmpty() || mount.isNull())
        return -1;

    try
    {
        float result = 0;
        result = mount.toFloat();
        return result;
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
        qDebug() << e.what() << "\n";
    }

    return -2;
}