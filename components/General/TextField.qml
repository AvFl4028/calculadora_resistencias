import QtQuick

Rectangle {
    id: root
    property int fontSize: 25
    property alias readOnly: text_field.readOnly
    property alias placeholderText: text_field.text
    color: "transparent"
    border.color: "#D0BCFE"
    radius: 10
    border.width: 3
    width: 200
    height: 56

    TextInput {
        id: text_field
        height: root.height - 10
        width: root.width - 10
        font.bold: false
        font.family: "Roboto"
        font.pixelSize: root.fontSize
        color: "#D0BCFE"
        x: (root.width / 2) - (width / 2)
        y: (root.height / 2) - (height / 2)
    }
}
