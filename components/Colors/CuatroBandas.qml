pragma ComponentBehavior: Bound
import QtQuick

Rectangle {
    id: root
    height: 230
    width: 460
    color: "transparent"
    radius: 0
    border.width: 1
    border.color: "transparent"
    property int separacion: 10
    property int numBandas: 4
    property int numSeparaciones: 3
    property int bandasWidth: width / (numBandas + numSeparaciones)
    property string defaultColor: "#d9d9d9"
    signal banda_uno_color(string valor)
    signal banda_dos_color(string valor)
    signal banda_tres_color(string valor)
    signal banda_cuatro_color(string valor)

    onBanda_uno_color: value => {
        banda_uno.color = value
    }
    onBanda_dos_color: value => {
        banda_dos.color = value
    }
    onBanda_tres_color: value => {
        banda_tres.color = value
    }
    onBanda_cuatro_color: value => {
        banda_cuatro.color = value
    }

    opacity: 1
    visible: true
    Rectangle {
        id: banda_uno
        width: root.bandasWidth
        height: root.height
        color: root.defaultColor
        radius: 0
        border.width: 1
        border.color: "transparent"
        opacity: 1
        visible: true
    }
    Rectangle {
        id: banda_dos
        anchors.left: banda_uno.right
        anchors.leftMargin: root.bandasWidth
        width: root.bandasWidth
        height: root.height
        color: root.defaultColor
        radius: 0
        border.width: 1
        border.color: "transparent"
        opacity: 1
        visible: true
    }
    Rectangle {
        id: banda_tres
        anchors.left: banda_dos.right
        anchors.leftMargin: root.bandasWidth
        width: root.bandasWidth
        height: root.height
        color: root.defaultColor
        radius: 0
        border.width: 1
        border.color: "transparent"
        opacity: 1
        visible: true
    }
    Rectangle {
        id: banda_cuatro
        anchors.left: banda_tres.right
        anchors.leftMargin: root.bandasWidth
        width: root.bandasWidth
        height: root.height
        color: root.defaultColor
        radius: 0
        border.width: 1
        border.color: "transparent"
        opacity: 1
        visible: true
    }
}
