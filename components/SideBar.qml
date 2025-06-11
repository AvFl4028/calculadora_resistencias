import QtQuick

Rectangle {
    id: sidebar_parent
    color: "#141218"
    height: 390
    width: 80
    radius: 12

    Rectangle {
        height: 276
        width: sidebar_parent.width
        border.color: "red"
        border.width: 2
        color: sidebar_parent.color
        y: (sidebar_parent.height / 2) - (height / 2)
        SideBarBtn {
            id: menu_btn
        }
        SideBarBtn {
            id: colors_btn
            anchors.top: menu_btn.bottom
        }
        SideBarBtn {
            id: circuit_btn
            anchors.top: colors_btn.bottom
        }
        SideBarBtn{
            id: ohm_btn
            anchors.top: circuit_btn.bottom
        }
    }
}
