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
        width: root.width * (2 / 5)
        height: root.height * (2 / 5)
    }
    Results {
        anchors.top: resistencia_preview.bottom
        anchors.topMargin: 40
        title: "Valores"
        texto: "10"
        title_second: "Rango Tolerancia"
        texto_second: "100"
    }
    Background {
        width: 300
        height: 500
        x: (root.width * (3 / 4))
        TextField {}
    }
}
