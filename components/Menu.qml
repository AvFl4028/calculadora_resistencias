import QtQuick

Rectangle {
    // color: "#2B2930"
    id: menu
    property int fontSize: 57
    color: "#2b2930"
    radius: 16
    width: 300
    height: 80
    Text {
        x: (menu.width / 2) - (width / 2)
        y: (menu.height / 2) - (height / 2)
        text: "Calculadora de Resistencias"
        font.family: "Roboto"
        font.pixelSize: menu.fontSize
        color: "#d0bcfe"
    }
}
