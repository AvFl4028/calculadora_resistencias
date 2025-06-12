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
        // border.color: "red"
        // border.width: 2
        color: sidebar_parent.color
        y: (sidebar_parent.height / 2) - (height / 2)

        Rectangle {
            SideBarGrid {
                id: menu_grid
                texto: "Menú"
                onClick: function(){
                    console.log("Test sidebar")
                }
            }

            SideBarGrid {
                id: colors_grid
                texto: "Colores"
                anchors.top: menu_grid.bottom
            }

            SideBarGrid {
                id: circuit_grid
                texto: "Circuitos"
                anchors.top: colors_grid.bottom
            }

            SideBarGrid {
                id: ohm_grid
                texto: "Ley de Ohm"
                anchors.top: circuit_grid.bottom
            }
        }
    }
}
