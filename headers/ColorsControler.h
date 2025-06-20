#ifndef __COLORSCONTROLER_H__
#define __COLORSCONTROLER_H__

#include <QObject>
#include "resistencia.h"
#include <qdebug.h>
#include <sstream>

class ColorsControler : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString msg READ msg WRITE setMsg NOTIFY msgChanged)

    Q_PROPERTY(QString banda_uno_color READ banda_uno_color WRITE setBanda_uno_color NOTIFY banda_uno_color_changed)

    Q_PROPERTY(QString banda_dos_color READ banda_dos_color WRITE setBanda_dos_color NOTIFY banda_dos_color_changed)

    Q_PROPERTY(QString banda_tres_color READ banda_tres_color WRITE setBanda_tres_color NOTIFY banda_tres_color_changed)

    Q_PROPERTY(QString banda_cuatro_color READ banda_cuatro_color WRITE setBanda_cuatro_color NOTIFY banda_cuatro_color_changed)

    Q_PROPERTY(QString banda_cinco_color READ banda_cinco_color WRITE setBanda_cinco_color NOTIFY banda_cinco_color_changed)

    Q_PROPERTY(QString banda_seis_color READ banda_seis_color WRITE setBanda_seis_color NOTIFY banda_seis_color_changed)

    Q_PROPERTY(QString valor READ valor WRITE setValor NOTIFY valor_changed)

    Q_PROPERTY(QString valorTolerancia READ valorTolerancia WRITE setValorTolerancia NOTIFY valorTolerancia_changed)
    
    Q_PROPERTY(QString numBandas READ numBandas WRITE setNumBandas NOTIFY numBandas_changed)

public:
    explicit ColorsControler(QObject *parent = nullptr);

    QString msg() const;

    QString banda_uno_color() const;
    QString banda_dos_color() const;
    QString banda_tres_color() const;
    QString banda_cuatro_color() const;
    QString banda_cinco_color() const;
    QString banda_seis_color() const;

    QString valor() const;
    QString valorTolerancia() const;
    
    QString numBandas() const;

    void setMsg(const QString &newMsg);

    void setBanda_uno_color(const QString &newMsg);
    void setBanda_dos_color(const QString &newMsg);
    void setBanda_tres_color(const QString &newMsg);
    void setBanda_cuatro_color(const QString &newMsg);
    void setBanda_cinco_color(const QString &newMsg);
    void setBanda_seis_color(const QString &newMsg);

    void setValor(const QString &value);
    void setValorTolerancia(const QString &value);
    
    void setNumBandas(const QString &value);

    int getNumBandas();
    void connectors();

signals:
    void msgChanged();

    void banda_uno_color_changed(QString color);
    void banda_dos_color_changed(QString color);
    void banda_tres_color_changed(QString color);
    void banda_cuatro_color_changed(QString color);
    void banda_cinco_color_changed(QString color);
    void banda_seis_color_changed(QString color);

    void valor_changed(QString valor);
    void valorTolerancia_changed(QString valor);
    
    void numBandas_changed(QString valor);


private:

    Resistencia res;

    QString _msg;

    QString _banda_uno_color;
    QString _banda_dos_color;
    QString _banda_tres_color;
    QString _banda_cuatro_color;
    QString _banda_cinco_color;
    QString _banda_seis_color;
    
    QString _valor;
    QString _valorTolerancia;
    
    QString _numBandasString;

    QString bandColor(QString color);

    void updateResistenciaValues();
    
};

#endif // __COLORSCONTROLER_H__