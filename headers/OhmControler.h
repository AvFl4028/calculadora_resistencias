#ifndef __OHMCONTROLER_H__
#define __OHMCONTROLER_H__
#include <QObject>
#include <qdebug.h>
#include <string>
#include <sstream>
#include <iostream>
#include "Ohm.h"

class OhmControler : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString calculo READ calculo WRITE setCalculo NOTIFY calculoChanged)
    Q_PROPERTY(QString firstValue READ firstValue WRITE setFirstValue NOTIFY firstValueChanged)
    Q_PROPERTY(QString secondValue READ secondValue WRITE setSecondValue NOTIFY secondValueChanged)
    Q_PROPERTY(QString result READ result WRITE setResult NOTIFY resultChanged)
    Q_PROPERTY(QString firstLabel READ firstLabel WRITE setFirstLabel NOTIFY firstLabelChanged)
    Q_PROPERTY(QString secondLabel READ secondLabel WRITE setSecondLabel NOTIFY secondLabelChanged)

private:
    QString _calculo;
    QString _firstValue;
    QString _secondValue;
    QString _result;
    QString _firstLabel;
    QString _secondLabel;

    QString calculos[3] = {"Voltaje", "Corriente", "Resistencia"};

    template <typename Signal>
    void setupConnection(QString msg, Signal func);
    void updateValues();
    float toFloat(QString mount);
    void changeLabels();
    bool checkValues(float primer_valor, float segundo_valor);

public:
    OhmControler(QObject *parent = nullptr);
    ~OhmControler();

    QString calculo() const;
    QString firstValue() const;
    QString secondValue() const;
    QString result() const;
    QString firstLabel() const;
    QString secondLabel() const;

    void setCalculo(const QString &value);
    void setFirstValue(const QString &value);
    void setSecondValue(const QString &value);
    void setResult(const QString &value);
    void setFirstLabel(const QString &value);
    void setSecondLabel(const QString &value);

    void setupConnections();

signals:
    void calculoChanged(QString value);
    void firstValueChanged(QString value);
    void secondValueChanged(QString value);
    void resultChanged(QString value);
    void firstLabelChanged(QString value);
    void secondLabelChanged(QString value);
};

#endif // __OHMCONTROLER_H__