import QtQuick

Rectangle {
    id: sidebar_parent
    color: "#141218"
    height: 390
    width: 80
    radius: 12
    property var menuOnClick
    property var colorsOnClick
    property var circuitOnClick
    property var ohmOnClick

    Rectangle {
        height: 276
        width: sidebar_parent.width
        // border.color: "red"
        // border.width: 2
        color: sidebar_parent.color
        y: (sidebar_parent.height / 2) - (height / 2)

        Rectangle {
            SideBarGrid {
                id: menu_grid
                texto: "Menú"
                onClick: function () {
                    if (sidebar_parent.menuOnClick) {
                        sidebar_parent.menuOnClick();
                    }
                }
            }

            SideBarGrid {
                id: colors_grid
                texto: "Colores"
                anchors.top: menu_grid.bottom
                onClick: function () {
                    if (sidebar_parent.colorsOnClick) {
                        sidebar_parent.colorsOnClick();
                    }
                }
            }

            SideBarGrid {
                id: circuit_grid
                texto: "Circuitos"
                anchors.top: colors_grid.bottom
                onClick: function () {
                    if (sidebar_parent.circuitOnClick) {
                        sidebar_parent.circuitOnClick();
                    }
                }
            }

            SideBarGrid {
                id: ohm_grid
                texto: "Ley de Ohm"
                anchors.top: circuit_grid.bottom
                onClick: function () {
                    if (sidebar_parent.ohmOnClick) {
                        sidebar_parent.ohmOnClick();
                    }
                }
            }
        }
    }
}
