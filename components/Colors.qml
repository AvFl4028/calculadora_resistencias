import QtQuick
import "General"
import "Colors"

Rectangle {
    id: root
    color: "transparent"
    Title {
        id: title
        x: (root.width / 2) - (width / 2)
        texto: "Calculadora de código de colores de resistencias"
    }
    ResistenciaPreview {
        id: resistencia_preview
        anchors.top: title.bottom
        anchors.topMargin: 40
        width: root.width * (5 / 10)
        height: root.height * (4 / 10)
    }
    Results {
        anchors.top: resistencia_preview.bottom
        anchors.topMargin: 40
        title: "Valores"
        texto: "10"
        title_second: "Rango Tolerancia"
        texto_second: "100"
        width: resistencia_preview.width *(4/10)
    }
    InputGroup {
        // width: 300
        // height: 500
        anchors.top: title.bottom
        anchors.topMargin: 40
        anchors.right: root.right
        anchors.rightMargin: root.width * (1 / 10)
        anchors.leftMargin: root.width * (1 / 10)
        anchors.left: resistencia_preview.right
        anchors.bottom: root.bottom
        anchors.bottomMargin: 40
    }
}
