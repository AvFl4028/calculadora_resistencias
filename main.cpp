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

    Controler control;

    engine.rootContext()->setContextProperty("colorsControler", control.getColorsControler());
    engine.rootContext()->setContextProperty("circuitosControler", control.getCircuitosControler());
    engine.rootContext()->setContextProperty("ohmControler", control.getOhmControler());

    const QUrl url(QStringLiteral("qrc:/CalculadoraResistencia/Main.qml"));

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []()
        { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    control.getColorsControler()->connectors();
    control.getCircuitosControler()->setupConnections();
    control.getOhmControler()->setupConnections();

    engine.load(url);

    return app.exec();
}
