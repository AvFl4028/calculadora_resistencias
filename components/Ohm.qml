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
        onCalculoSeleccionado: value => {
            ohmControler.calculo = value;
        }
    }
    Valores {
        id: valores
        anchors.topMargin: root.height * (1 / 5)
        anchors.top: main_title.bottom
        anchors.left: calculos.right
        anchors.leftMargin: root.cont_margin
        width: root.container_width
        onFirst_value: value => {
            ohmControler.firstValue = value;
        }
        onSecond_value: value => {
            ohmControler.secondValue = value;
        }
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

    Connections {
        target: ohmControler
        onResultChanged: value => {
            resultados.texto = value;
        }

        onFirstLabelChanged: value => {
            valores.primer_valor = value;
        }
        onSecondLabelChanged: value => {
            valores.segundo_valor = value;
        }
    }
}
