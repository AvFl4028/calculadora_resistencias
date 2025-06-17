import QtQuick
import "../General"

Background {
    id: root
    property string title: "Valores"
    property string texto
    property string font: "Roboto"
    property int title_font_size: 24
    property int subtitle_font_size: 16
    property string fontColor: "#E8DEF8"
    height: 230

    signal first_value(string value)
    signal second_value(string value)

    Rectangle {
        id: container
        width: parent.width * (8 / 10)
        height: parent.height * (8 / 10)
        x: (parent.width / 2) - (width / 2)
        y: (parent.height / 2) - (height / 2)
        color: "transparent"
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
            id: text_value_one
            text: "Valor 1"
            anchors.top: title.bottom
            anchors.topMargin: 10
            x: (container.width / 2) - (width / 2)
            font.bold: true
            font.family: root.font
            font.pixelSize: root.subtitle_font_size
            color: root.fontColor
        }
        TextField {
            id: first_text_field
            fontSize: 20
            anchors.top: text_value_one.bottom
            anchors.topMargin: 10
            height: 40
            x: (container.width / 2) - (width / 2)
            onTextChanged: value => {
                console.log(value);
                root.first_value(value);
            }
        }
        Text {
            id: text_value_two
            text: "Valor 2"
            x: (container.width / 2) - (width / 2)
            anchors.top: first_text_field.bottom
            anchors.topMargin: 10
            font.bold: true
            font.family: root.font
            font.pixelSize: root.subtitle_font_size
            color: root.fontColor
        }
        TextField {
            fontSize: 20
            anchors.top: text_value_two.bottom
            anchors.topMargin: 20
            height: 40
            x: (container.width / 2) - (width / 2)
            onTextChanged: value => {
                console.log(value);
                root.second_value(value);
            }
        }
    }
}
