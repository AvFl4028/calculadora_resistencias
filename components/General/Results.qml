import QtQuick

Background {
    id: root
    property string title
    property string texto
    property string texto_second
    property string title_second
    property string font: "Roboto"
    property int title_font_size: 24
    property int subtitle_font_size: 16
    property string fontColor: "#E8DEF8"
    height: 170

    Rectangle {
        id: container
        color: "transparent"
        width: root.width * (2/3)
        height: root.height * (2/3)
        // border.width: 1
        // border.color: "red"
        x: (root.width / 2) - (width / 2)
        y: (root.height / 2) - (height / 2)

        Text {
            id: title
            text: root.title
            x: (container.width / 2) - (width / 2)
            font.bold: true
            font.family: root.font
            font.pixelSize: root.title_font_size
            color: root.fontColor
        }
        Text {
            id: subtitle
            anchors.top: title.bottom
            anchors.topMargin: 5
            x: (container.width / 2) - (width / 2)
            text: root.texto
            font.bold: false
            font.family: root.font
            font.pixelSize: root.subtitle_font_size
            color: root.fontColor
        }
        Text {
            id: title_dos
            text: root.title_second
            x: (container.width / 2) - (width / 2)
            anchors.top: subtitle.bottom
            anchors.topMargin: 10
            font.bold: true
            font.family: root.font
            font.pixelSize: root.title_font_size
            color: root.fontColor
        }
        Text {
            id: subtitle_dos
            anchors.top: title_dos.bottom
            anchors.topMargin: 5
            x: (container.width / 2) - (width / 2)
            text: root.texto_second
            font.bold: false
            font.family: root.font
            font.pixelSize: root.subtitle_font_size
            color: root.fontColor
        }
    }
}
