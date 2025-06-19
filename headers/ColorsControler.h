#ifndef __COLORSCONTROLER_H__
#define __COLORSCONTROLER_H__

#include <QObject>

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

public:
    explicit ColorsControler(QObject *parent = nullptr);
    QString msg() const;
    QString banda_uno_color() const;
    QString banda_dos_color() const;
    QString banda_tres_color() const;
    QString banda_cuatro_color() const;
    QString banda_cinco_color() const;
    QString banda_seis_color() const;

    void setMsg(const QString &newMsg);
    void setBanda_uno_color(const QString &newMsg);
    void setBanda_dos_color(const QString &newMsg);
    void setBanda_tres_color(const QString &newMsg);
    void setBanda_cuatro_color(const QString &newMsg);
    void setBanda_cinco_color(const QString &newMsg);
    void setBanda_seis_color(const QString &newMsg);

signals:
    void msgChanged();
    void banda_uno_color_changed();
    void banda_dos_color_changed();
    void banda_tres_color_changed();
    void banda_cuatro_color_changed();
    void banda_cinco_color_changed();
    void banda_seis_color_changed();

private:
    QString _msg;

    QString _banda_uno_color;
    QString _banda_dos_color;
    QString _banda_tres_color;
    QString _banda_cuatro_color;
    QString _banda_cinco_color;
    QString _banda_seis_color;
};

#endif // __COLORSCONTROLER_H__