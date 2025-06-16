pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls.Material
import "components/SideBar" // <-- importa la carpeta
import "components"

Window {
    id: main
    // Material.theme: Material.Dark
    // Material.accentColor: Material.Purple

    Material.theme: Material.System
    property int marginSideBar: 50
    width: 1280
    height: 600
    visible: true
    title: qsTr("Calculadora de Resistencias")

    Pane {
        width: main.width
        height: main.height
        background: Rectangle {
            width: main.width
            height: main.height
            color: "#1D1B20"
        }

        SideBar {
            id: sidebar
            y: (main.height / 2) - (sidebar.height / 2)

            menuOnClick: function () {
                menu_load.active = true;
                colors_loader.active = false;
                circuit_loader.active = false;
                ohm_loader.active = false;
            }

            colorsOnClick: function () {
                menu_load.active = false;
                colors_loader.active = true;
                circuit_loader.active = false;
                ohm_loader.active = false;
            }

            circuitOnClick: function () {
                console.log("circuit");
                menu_load.active = false;
                colors_loader.active = false;
                circuit_loader.active = true;
                ohm_loader.active = false;
            }

            ohmOnClick: function () {
                console.log("ohm");
                menu_load.active = false;
                colors_loader.active = false;
                circuit_loader.active = false;
                ohm_loader.active = true;
            }
        }

        Loader {
            id: menu_load
            active: false
            sourceComponent: menu_component
        }

        Loader {
            id: colors_loader
            active: true
            sourceComponent: colors_component
        }

        Loader {
            id: circuit_loader
            active: false
            sourceComponent: circuit_component
        }

        Loader {
            id: ohm_loader
            active: false
            sourceComponent: ohm_component
        }

        Component {
            id: menu_component
            Menu {
                id: menu
                fontSize: 35
                width: 450
                x: (main.width / 2) - (width / 2)
                y: (main.height / 3) - (height / 2)
            }
        }

        Component {
            id: colors_component
            Colors {
                x: sidebar.x + sidebar.width + 10 + main.marginSideBar
                height: main.height
                width: main.width - (sidebar.x + sidebar.width + 10 + main.marginSideBar)
            }
        }
        Component {
            id: circuit_component
            Rectangle {
                width: 300
                height: width
                color: "red"

                x: (main.width / 2) - (width / 2)
                y: (main.height / 3) - (height / 2)
            }
        }
        Component {
            id: ohm_component
            Ohm {
                x: sidebar.x + sidebar.width + 10 + main.marginSideBar
                height: main.height
                width: main.width - (sidebar.x + sidebar.width + 10 + main.marginSideBar)
            }
        }
    }
}
