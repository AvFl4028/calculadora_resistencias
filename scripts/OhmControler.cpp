#include "headers/OhmControler.h"

OhmControler::OhmControler(QObject *parent) : QObject(parent)
{
}

OhmControler::~OhmControler()
{
}

QString OhmControler::calculo() const
{
    return _calculo;
}

QString OhmControler::firstValue() const
{
    return _firstValue;
}

QString OhmControler::secondValue() const
{
    return _secondValue;
}

QString OhmControler::result() const
{
    return _result;
}

QString OhmControler::firstLabel() const
{
    return _firstLabel;
}

QString OhmControler::secondLabel() const
{
    return _secondLabel;
}

void OhmControler::setCalculo(const QString &value)
{
    if (value != _calculo)
    {
        _calculo = value;
        emit calculoChanged(_calculo);
    }
}

void OhmControler::setFirstValue(const QString &value)
{
    if (value != _firstValue)
    {
        _firstValue = value;
        emit firstValueChanged(_firstValue);
    }
}

void OhmControler::setSecondValue(const QString &value)
{
    if (value != _secondValue)
    {
        _secondValue = value;
        emit secondValueChanged(_secondValue);
    }
}

void OhmControler::setResult(const QString &value)
{
    if (value != _result)
    {
        _result = value;
        emit resultChanged(_result);
    }
}

void OhmControler::setFirstLabel(const QString &value)
{
    if (value != _firstLabel)
    {
        _firstLabel = value;
        emit firstLabelChanged(_firstLabel);
    }
}

void OhmControler::setSecondLabel(const QString &value)
{
    if (value != _secondLabel)
    {
        _secondLabel = value;
        emit secondLabelChanged(_secondLabel);
    }
}

template <typename Signal>
void OhmControler::setupConnection(QString msg, Signal func)
{
    QObject::connect(
        this, func, [this, msg](QString value)
        { qDebug() << msg + value << "\n"; updateValues(); });
}

void OhmControler::setupConnections()
{
    setupConnection("Calculo: ", &OhmControler::calculoChanged);
    setupConnection("Primer valor: ", &OhmControler::firstValueChanged);
    setupConnection("Segundo valor: ", &OhmControler::secondValueChanged);
    setupConnection("Resultado: ", &OhmControler::resultChanged);
    setupConnection("Primer label: ", &OhmControler::firstLabelChanged);
    setupConnection("Segundo label: ", &OhmControler::secondLabelChanged);
}

void OhmControler::updateValues()
{
    changeLabels();
    float primer_valor = toFloat(_firstValue);
    float segundo_valor = toFloat(_secondValue);
    std::stringstream valor;

    if (segundo_valor == -1 && primer_valor == -1)
    {
        setResult("Ambos valores vacios");
        return;
    }
    else if (segundo_valor == -2 && primer_valor == -2)
    {
        setResult("Error al convertir ambos valores");
        return;
    }
    else if (!checkValues(primer_valor, segundo_valor))
    {
        // setResult("Error al convertir un valor");
        return;
    }

    if (_calculo == calculos[0])
    {
        valor << Ohm::voltajeCalc(primer_valor, segundo_valor) << " v";
    }
    else if (_calculo == calculos[1])
    {
        valor << Ohm::corrienteCalc(primer_valor, segundo_valor) << " A";
    }
    else if (_calculo == calculos[2])
    {
        valor << Ohm::resistenciaCalc(primer_valor, segundo_valor) << " Ohms";
    }

    setResult(QString::fromStdString(valor.str()));
}

bool OhmControler::checkValues(float primer_valor, float segundo_valor)
{
    if (_calculo == calculos[0])
    {
        if (primer_valor == -1)
        {
            setResult("Valor de Corriente vacio");
            return false;
        }
        else if (segundo_valor == -1)
        {
            setResult("Valor de Resistencia vacio");
            return false;
        }
        else if (primer_valor == -2)
        {
            setResult("Error al convertir Corriente");
            return false;
        }
        else if (segundo_valor == -2)
        {
            setResult("Error al convertir Resistencia");
            return false;
        }
    }
    else if (_calculo == calculos[1])
    {
        if (primer_valor == -1)
        {
            setResult("Valor de Voltaje vacio");
            return false;
        }
        else if (segundo_valor == -1)
        {
            setResult("Valor de Resistencia vacio");
            return false;
        }
        else if (primer_valor == -2)
        {
            setResult("Error al convertir Voltaje");
            return false;
        }
        else if (segundo_valor == -2)
        {
            setResult("Error al convertir Resistencia");
            return false;
        }
    }
    else if (_calculo == calculos[2])
    {
        if (primer_valor == -1)
        {
            setResult("Valor de Voltaje vacio");
            return false;
        }
        else if (segundo_valor == -1)
        {
            setResult("Valor de Corriente vacio");
            return false;
        }
        else if (primer_valor == -2)
        {
            setResult("Error al convertir Voltaje");
            return false;
        }
        else if (segundo_valor == -2)
        {
            setResult("Error al convertir Corriente");
            return false;
        }
    }
    return true;
}

void OhmControler::changeLabels()
{
    if (_calculo == calculos[0])
    {
        setFirstLabel(calculos[1]);
        setSecondLabel(calculos[2]);
    }
    else if (_calculo == calculos[1])
    {
        setFirstLabel(calculos[0]);
        setSecondLabel(calculos[2]);
    }
    else if (_calculo == calculos[2])
    {
        setFirstLabel(calculos[0]);
        setSecondLabel(calculos[1]);
    }
}

float OhmControler::toFloat(QString mount)
{
    if (mount.isEmpty() || mount.isNull())
        return -1;

    bool ok = false;
    float result = mount.toFloat(&ok);

    if (!ok)
        return -2;

    return result;
}
