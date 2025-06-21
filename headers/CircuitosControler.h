#ifndef __CIRCUITOSCONTROLER_H__
#define __CIRCUITOSCONTROLER_H__
#include <QObject>
#include <qdebug.h>
#include "Circuitos.h"
#include <stdexcept>
#include <iostream>
#include <string>
#include <sstream>

class CircuitosControler : public QObject
{

    Q_OBJECT

    Q_PROPERTY(QString msg READ msg WRITE setMsg NOTIFY msgChanged)

    Q_PROPERTY(QString circuito READ circuito WRITE setCircuito NOTIFY circuitoChanged)
    Q_PROPERTY(QString numResistencias READ numResistencias WRITE setNumResistencias NOTIFY numResistenciasChanged)

    Q_PROPERTY(QString valor READ valor WRITE setValor NOTIFY valorChanged)

    Q_PROPERTY(QString r_uno_valor READ r_uno_valor WRITE set_r_uno_valor NOTIFY r_uno_valor_changed)
    Q_PROPERTY(QString r_dos_valor READ r_dos_valor WRITE set_r_dos_valor NOTIFY r_dos_valor_changed)
    Q_PROPERTY(QString r_tres_valor READ r_tres_valor WRITE set_r_tres_valor NOTIFY r_tres_valor_changed)
    Q_PROPERTY(QString r_cuatro_valor READ r_cuatro_valor WRITE set_r_cuatro_valor NOTIFY r_cuatro_valor_changed)
    Q_PROPERTY(QString r_cinco_valor READ r_cinco_valor WRITE set_r_cinco_valor NOTIFY r_cinco_valor_changed)
    Q_PROPERTY(QString r_seis_valor READ r_seis_valor WRITE set_r_seis_valor NOTIFY r_seis_valor_changed)

private:
    QString _msg;
    QString _circuito;
    QString _numResistencias;
    QString _valor;
    QString _valorTolerancia;
    QString _r_uno_valor;
    QString _r_dos_valor;
    QString _r_tres_valor;
    QString _r_cuatro_valor;
    QString _r_cinco_valor;
    QString _r_seis_valor;

    void updateValues();
    template <typename Signal>
    void setupConnection(QString msg, Signal func);
    float toFloat(QString mount);

public:
    explicit CircuitosControler(QObject *parent = nullptr);
    ~CircuitosControler();

    QString msg() const;

    QString circuito() const;
    QString numResistencias() const;

    QString valor() const;

    QString r_uno_valor() const;
    QString r_dos_valor() const;
    QString r_tres_valor() const;
    QString r_cuatro_valor() const;
    QString r_cinco_valor() const;
    QString r_seis_valor() const;

    void setMsg(const QString &newMsg);

    void setCircuito(const QString &value);
    void setNumResistencias(const QString &value);

    void setValor(const QString &value);

    void set_r_uno_valor(const QString &value);
    void set_r_dos_valor(const QString &value);
    void set_r_tres_valor(const QString &value);
    void set_r_cuatro_valor(const QString &value);
    void set_r_cinco_valor(const QString &value);
    void set_r_seis_valor(const QString &value);

    void setupConnections();

signals:
    void msgChanged(QString value);
    void circuitoChanged(QString value);
    void numResistenciasChanged(QString value);
    void valorChanged(QString value);
    void r_uno_valor_changed(QString value);
    void r_dos_valor_changed(QString value);
    void r_tres_valor_changed(QString value);
    void r_cuatro_valor_changed(QString value);
    void r_cinco_valor_changed(QString value);
    void r_seis_valor_changed(QString value);
};

#endif // __CIRCUITOSCONTROLER_H__