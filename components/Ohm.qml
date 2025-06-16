import QtQuick
import "General"
import "Ohm"

Rectangle {
    id: root
    color: "transparent"
    Title {
        id: main_title
        x: (root.width / 2) - (width / 2)
        texto: "Calculadora de ley de ohm"
    }
    Calc{
        id: calculos
        anchors.top: main_title.bottom
    }
    Results {
        id: resultados
        anchors.top: main_title.bottom
        anchors.left: calculos.right
        title: "Resultado"
        texto: "100 ohms"
    }
}
