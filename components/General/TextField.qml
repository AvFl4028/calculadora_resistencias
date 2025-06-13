import QtQuick

Rectangle{
    id: root
    color: "transparent"
    border.color: "#D0BCFE"
    border.width: 3
    width: 200
    height: 56

    TextEdit{
        id: text_field
        height: root.height - 10
        width: root.width - 10
    }
}