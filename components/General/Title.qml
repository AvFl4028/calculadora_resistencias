import QtQuick

Background {
    id: root
    property string texto
    width: texto.width + 20
    Text{
        id: texto
        x: (root.width / 2) - (width / 2)
        y: (root.height / 2) - (height / 2)
        text: root.texto
        color: "#D0BCFE"
        font.family: "Roboto"
        font.bold: true
        font.pixelSize: 35
    }
}
