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
    opacity: 1
    visible: true
    Rectangle {
        id: banda_uno
        width: root.bandasWidth
        height: root.height
        color: "#d9d9d9"
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
        color: "#d9d9d9"
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
        color: "#d9d9d9"
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
        color: "#d9d9d9"
        radius: 0
        border.width: 1
        border.color: "transparent"
        opacity: 1
        visible: true
    }
}
