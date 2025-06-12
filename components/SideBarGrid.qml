import QtQuick

Rectangle {
    id: grid
    property string texto: ""
    width: 80
    height: 70
    color: "#141218"
    property var onClick
    // border.color: "blue"
    // border.width: 2
    SideBarBtn {
        id: btn
        y: (grid.height / 2) - (height / 2)
        x: (grid.width / 2) - (width / 2)
        onClick: function () {
            if (grid.onClick) {
                grid.onClick();
            }
        }
    }
    Text {
        y: (grid.height / 2) - (height / 2) + ((btn.height * 2) / 3)
        x: (grid.width / 2) - (width / 2)
        text: grid.texto
        color: "#CAC4D0"
        font.family: "Roboto"
        font.pixelSize: 12
    }
}
