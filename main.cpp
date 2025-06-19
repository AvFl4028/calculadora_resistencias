#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "headers/resistencia.h"
#include "headers/ColorsControler.h"
#include "headers/Controler.h"
#include <QQmlContext>
#include <iostream>

int main(int argc, char *argv[])
{
    Bandas bands[] = {Bandas(NEGRO, 1), Bandas(AZUL, 2), Bandas(ROJO, 3), Bandas(AMARILLO, 4)};
    Resistencia res = Resistencia(bands, 4);

    std::cout << res.calcValue() << std::endl;

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    ColorsControler colorsControler;
    
    engine.rootContext()->setContextProperty("colorsControler", &colorsControler);

    const QUrl url(QStringLiteral("qrc:/CalculadoraResistencia/Main.qml"));

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []()
        { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    Controler::colorsConnectors(&colorsControler);

    engine.load(url);

    return app.exec();
}
