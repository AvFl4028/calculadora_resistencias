import QtQuick
import QtQuick.Controls.Material
import "components" // <-- importa la carpeta

Window {
    id: main
    // Material.theme: Material.Dark
    // Material.accentColor: Material.Purple

    Material.theme: Material.System
    width: 640
    height: 480
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

        SideBar{
            id: sidebar
            y: (main.height / 2) - (sidebar.height / 2)
        }
    }
}
