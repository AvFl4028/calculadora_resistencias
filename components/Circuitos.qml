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
            circuitosControler.numResistencias = value;
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
        onSecondValue: value => {
            circuitosControler.circuito = value;
        }
    }

    Valores {
        id: valores
        anchors.top: title.bottom
        anchors.topMargin: root.height * (1 / 5)
        anchors.left: numResistencias.right
        anchors.leftMargin: root.cont_margin
        width: root.container_width
        height: numResistencias.height
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
            circuitosControler.r_uno_valor = value;
        }

        onResistenciaDosValue: value => {
            circuitosControler.r_dos_valor = value;
        }

        onResistenciaTresValue: value => {
            circuitosControler.r_tres_valor = value;
        }

        onResistenciaCuatroValue: value => {
            circuitosControler.r_cuatro_valor = value;
        }

        onResistenciaCincoValue: value => {
            circuitosControler.r_cinco_valor = value;
        }

        onResistenciaSeisValue: value => {
            circuitosControler.r_seis_valor = value;
        }
    }

    Connections {
        target: circuitosControler
        onValorChanged: value => {
            valores.first_text = value;
        }
    }
}
