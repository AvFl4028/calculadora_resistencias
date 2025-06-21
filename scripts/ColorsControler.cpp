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

QString ColorsControler::valor() const
{
    return _valor;
}

QString ColorsControler::valorTolerancia() const
{
    return _valorTolerancia;
}

QString ColorsControler::numBandas() const
{
    return _numBandasString;
}

void ColorsControler::setBanda_uno_color(const QString &newMsg)
{
    if (newMsg != _banda_uno_color)
    {
        _banda_uno_color = newMsg;
        emit banda_uno_color_changed(bandColor(_banda_uno_color));
    }
}

void ColorsControler::setBanda_dos_color(const QString &newMsg)
{
    if (newMsg != _banda_dos_color)
    {
        _banda_dos_color = newMsg;
        emit banda_dos_color_changed(bandColor(_banda_dos_color));
    }
}

void ColorsControler::setBanda_tres_color(const QString &newMsg)
{
    if (newMsg != _banda_tres_color)
    {
        _banda_tres_color = newMsg;
        emit banda_tres_color_changed(bandColor(_banda_tres_color));
    }
}

void ColorsControler::setBanda_cuatro_color(const QString &newMsg)
{
    if (newMsg != _banda_cuatro_color)
    {
        _banda_cuatro_color = newMsg;
        emit banda_cuatro_color_changed(bandColor(_banda_cuatro_color));
    }
}

void ColorsControler::setBanda_cinco_color(const QString &newMsg)
{
    if (newMsg != _banda_cinco_color)
    {
        _banda_cinco_color = newMsg;
        emit banda_cinco_color_changed(bandColor(_banda_cinco_color));
    }
}

void ColorsControler::setBanda_seis_color(const QString &newMsg)
{
    if (newMsg != _banda_seis_color)
    {
        _banda_seis_color = newMsg;
        emit banda_seis_color_changed(bandColor(_banda_seis_color));
    }
}

void ColorsControler::setValor(const QString &value)
{
    if (value != _valor)
    {
        _valor = value;
        emit valor_changed(_valor);
    }
}

void ColorsControler::setValorTolerancia(const QString &value)
{
    if (value != _valorTolerancia)
    {
        _valorTolerancia = value;
        emit valorTolerancia_changed(_valorTolerancia);
    }
}

void ColorsControler::setNumBandas(const QString &value)
{
    if (value != _numBandasString)
    {
        _numBandasString = value;
        emit numBandas_changed(_numBandasString);
    }
}

QString ColorsControler::bandColor(QString color)
{
    QString result = "";

    if (color == "NEGRO")
        result = "black";

    if (color == "MARRON")
        result = "brown";

    if (color == "ROJO")
        result = "red";

    if (color == "NARANJA")
        result = "orange";

    if (color == "AMARILLO")
        result = "yellow";

    if (color == "VERDE")
        result = "green";

    if (color == "AZUL")
        result = "blue";

    if (color == "VIOLETA")
        result = "violet";

    if (color == "GRIS")
        result = "grey";

    if (color == "BLANCO")
        result = "white";

    if (color == "ORO")
        result = "gold";

    if (color == "PLATA")
        result = "silver";

    return result;
}

int ColorsControler::getNumBandas()
{
    int result = 0;

    if (_numBandasString == "4")
        result = 4;
    if (_numBandasString == "5")
        result = 5;
    if (_numBandasString == "6")
        result = 6;

    return result;
}

void ColorsControler::connectors()
{
    QObject::connect(
        this, &ColorsControler::msgChanged, [](void)
        { qDebug() << "Señal activada con texto" << "\n"; });

    QObject::connect(
        this, &ColorsControler::banda_uno_color_changed, [this](QString value)
        { qDebug() << "Banda 1: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::banda_dos_color_changed, [this](QString value)
        { qDebug() << "Banda 2: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::banda_tres_color_changed, [this](QString value)
        { qDebug() << "Banda 3: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::banda_cuatro_color_changed, [this](QString value)
        { qDebug() << "Banda 4: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::banda_cinco_color_changed, [this](QString value)
        { qDebug() << "Banda 5: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::banda_seis_color_changed, [this](QString value)
        { qDebug() << "Banda 6: " + value << "\n"; updateResistenciaValues(); });

    QObject::connect(
        this, &ColorsControler::valor_changed, [](QString value)
        { qDebug() << "Valor: " + value << "\n"; });

    QObject::connect(
        this, &ColorsControler::valorTolerancia_changed, [](QString value)
        { qDebug() << "Tolerancia: " + value << "\n"; });

    QObject::connect(
        this, &ColorsControler::numBandas_changed, [this](QString value)
        { qDebug() << "Num Bandas: " + value << "\n"; updateResistenciaValues(); });
}

void ColorsControler::updateResistenciaValues()
{
    int numBandas = getNumBandas();
    std::string ppm = "";

    auto color = [](const QString &q)
    {
        return Bandas::toColor(q.toStdString());
    };

    if (numBandas == 4)
    {
        Bandas bandas[4] = {
            Bandas(color(_banda_uno_color), 1),
            Bandas(color(_banda_dos_color), 2),
            Bandas(color(_banda_tres_color), 3),
            Bandas(color(_banda_cuatro_color), 4)};

        res.setNumBandas(4);
        res.setBandas(bandas);
    }

    if (numBandas == 4)
    {
        Bandas bandas[4] = {
            Bandas(color(_banda_uno_color), 1),
            Bandas(color(_banda_dos_color), 2),
            Bandas(color(_banda_tres_color), 3),
            Bandas(color(_banda_cuatro_color), 4)};

        res.setNumBandas(4);
        res.setBandas(bandas);
    }
    if (numBandas == 5)
    {
        Bandas bandas[5] = {
            Bandas(color(_banda_uno_color), 0),
            Bandas(color(_banda_dos_color), 1),
            Bandas(color(_banda_tres_color), 2),
            Bandas(color(_banda_cuatro_color), 3),
            Bandas(color(_banda_cinco_color), 4)};

        res.setNumBandas(5);
        res.setBandas(bandas);
    }
    if (numBandas == 6)
    {
        Bandas bandas[6] = {
            Bandas(color(_banda_uno_color), 0),
            Bandas(color(_banda_dos_color), 1),
            Bandas(color(_banda_tres_color), 2),
            Bandas(color(_banda_cuatro_color), 3),
            Bandas(color(_banda_cinco_color), 4),
            Bandas(color(_banda_seis_color), 5)};

        res.setNumBandas(6);
        res.setBandas(bandas);
        ppm = Bandas::getPPM(bandas[5].getColor());
    }

    std::stringstream ss;
    ss << res.calcValue();

    setValor(QString::fromStdString(ss.str() + " Ohms " + ppm));
    setValorTolerancia(QString::fromStdString(res.getValuesTolerance()));
}