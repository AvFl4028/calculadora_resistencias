import QtQuick
import "General"

Background {
    // color: "#2B2930"
    id: menu
    property int fontSize: 57
    Text {
        x: (menu.width / 2) - (width / 2)
        y: (menu.height / 2) - (height / 2)
        text: "Calculadora de Resistencias"
        font.family: "Roboto"
        font.bold: true
        font.pixelSize: menu.fontSize
        color: "#d0bcfe"
    }
}
