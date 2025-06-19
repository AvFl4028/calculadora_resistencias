import QtQuick
import "General"
import "Circuitos"

Rectangle {
    id: root

    color: "transparent"
    property int containers: 3
    property int cont_margin: 100
    property int container_width: (width / containers) - cont_margin

    Title {
        id: title
        x: (root.width / 2) - (width / 2)
        texto: "Calculadora de circuitos de resistencias"
    }

    NumResistencias {
        id: numResistencias
        anchors.top: title.bottom
        anchors.topMargin: root.height * (1 / 5)
        width: root.container_width
        // height: root.height
        onFirstValue: value => {
            if (value == "4") {
                resistencias.quintoValorVisible = false;
                resistencias.sextoValorVisible = false;
            }
            if (value == "5") {
                resistencias.quintoValorVisible = true;
                resistencias.sextoValorVisible = false;
            }
            if (value == "6") {
                resistencias.quintoValorVisible = true;
                resistencias.sextoValorVisible = true;
            }
        }
    }

    Valores {
        id: valores
        anchors.top: title.bottom
        anchors.topMargin: root.height * (1 / 5)
        anchors.left: numResistencias.right
        anchors.leftMargin: root.cont_margin
        width: root.container_width
    }

    Resistencias {
        id: resistencias
        anchors.top: title.bottom
        anchors.topMargin: root.height * (1 / 5)
        anchors.left: valores.right
        anchors.leftMargin: root.cont_margin
        anchors.bottom: root.bottom
        anchors.bottomMargin: root.cont_margin
        width: root.container_width

        onResistenciaUnoValue: value => {
            console.log(value);
        }
    }
}
