import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    property string texto: "test"
    property string fondo: "#141218"
    property string fondo_activo: "#4A445B"
    property string circulo_back_normal: "#E6E0E9"
    property string circulo_back_active: "#CAC4D0"
    width: 56
    height: 32
    radius: 20
    color: fondo

    signal presionado

    Rectangle {
        id: circle

        y: (root.height / 2) - (height / 2)
        x: (root.width / 2) - (width / 2)

        width: 15
        height: width
        radius: width
        color: root.circulo_back_normal
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.presionado()
        hoverEnabled: true
        onEntered: {
            root.color = root.fondo_activo;
            circle.color = root.circulo_back_active;
        }
        onExited: {
            root.color = root.fondo;
            circle.color = root.circulo_back_normal;
        }
    }
}
