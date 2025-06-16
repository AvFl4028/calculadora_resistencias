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
    property int numBandas: 6
    property int numSeparaciones: 5
    property int bandasWidth: width / (numBandas + numSeparaciones)
    opacity: 1
    visible: true

    property string defaultColor: "#d9d9d9"
    signal banda_uno_color(string valor)
    signal banda_dos_color(string valor)
    signal banda_tres_color(string valor)
    signal banda_cuatro_color(string valor)
    signal banda_cinco_color(string valor)
    signal banda_seis_color(string valor)

    onBanda_uno_color: value => {
        banda_uno.color = value;
    }
    onBanda_dos_color: value => {
        banda_dos.color = value;
    }
    onBanda_tres_color: value => {
        banda_tres.color = value;
    }
    onBanda_cuatro_color: value => {
        banda_cuatro.color = value;
    }
    onBanda_cinco_color: value => {
        banda_cinco.color = value
    }
    onBanda_seis_color: value => {
        banda_seis.color = value;
    }

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
    Rectangle {
        id: banda_cinco
        anchors.left: banda_cuatro.right
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
        id: banda_seis
        anchors.left: banda_cinco.right
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
