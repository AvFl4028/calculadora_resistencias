import QtQuick
import "General"
import "Ohm"

Rectangle {
    id: root
    color: "transparent"
    property int containers: 3
    property int cont_margin: 100
    property int container_width: (width / containers) - cont_margin
    Title {
        id: main_title
        x: (root.width / 2) - (width / 2)
        texto: "Calculadora de ley de ohm"
    }
    Calc {
        id: calculos
        anchors.top: main_title.bottom
        width: root.container_width
        anchors.topMargin: root.height * (1 / 5)
    }
    Valores {
        id: valores
        anchors.topMargin: root.height * (1 / 5)
        anchors.top: main_title.bottom
        anchors.left: calculos.right
        anchors.leftMargin: root.cont_margin
        width: root.container_width
    }
    Results {
        id: resultados
        anchors.top: main_title.bottom
        anchors.topMargin: root.height * (1 / 5)
        anchors.left: valores.right
        anchors.leftMargin: root.cont_margin
        width: root.container_width
        title: "Resultado"
        texto: "0 ohms"
    }
}
