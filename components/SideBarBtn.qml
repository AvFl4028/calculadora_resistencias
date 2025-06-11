import QtQuick
import QtQuick.Controls

Rectangle {
    property string texto: "test"
    property string fondo: "#141218"
    property string fondo_activo: "#E8DEF8"
    property string circulo_back_normal: "#E6E0E9"
    property string circulo_back_active: "#CAC4D0"

    width: 80
    height: 70
    color: fondo
    border.color: "blue"
    border.width: 2

    Button {
        x: (parent.width / 2) - (width / 2)

        background: parent.circulo_back_active

        Rectangle {
            width: parent.width / 3
            height: width
            radius: width
            color: "#E6E0E9"
            visible: true
        }
    }

    Text {
        text: parent.texto
        color: parent.circulo_back_normal
    }
}
