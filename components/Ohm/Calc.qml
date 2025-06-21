import QtQuick
import "../General"

Background {
    id: root

    property string title: "Calculo"
    property string texto
    property string font: "Roboto"
    property int title_font_size: 24
    property string fontColor: "#E8DEF8"
    signal calculoSeleccionado(string valor)

    height: 170

    Rectangle {
        id: container
        color: "transparent"
        width: root.width * (2 / 3)
        height: root.height * (2 / 3)
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

        TextFieldMenu {
            id: num_bandas_menu
            text: ""
            anchors.top: title.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            popup_heignt: height * 2
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.topMargin: 20
            onOptionSelected: (valor) => {
                console.log("Calcul emitió: ", valor);
                root.calculoSeleccionado(valor);  // <- reenviamos la señal
            }

            Component.onCompleted: {
                options.append({
                    "value": "Resistencia"
                });
                options.append({
                    "value": "Voltaje"
                });
                options.append({
                    "value": "Corriente"
                });
            }
        }
    }
}
