pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls

Item {
    id: root
    property alias text: textField.text
    property alias options: listModel
    property int fontSize: 20
    // property var options
    signal optionSelected(string value)

    width: 250
    height: 40

    TextField {
        id: textField
        width: parent.width
        height: parent.height
        text: "Selecciona un color"
        readOnly: true

        background: Rectangle {
            color: "transparent"
            border.color: "#D0BCFE"
            radius: 10
            border.width: 3
        }

        font.bold: false
        font.family: "Roboto"
        font.pixelSize: root.fontSize
        color: "#D0BCFE"

        // Abrir menú al dar clic
        MouseArea {
            anchors.fill: parent
            onClicked: popup.open()
        }
    }

    // Popup con opciones
    Popup {
        id: popup
        width: textField.width
        height: 200
        y: textField.height + 4
        modal: false
        focus: false
        background: Background {
            height: 200
            color: "#211F26"
            width: parent.width
        }
        ScrollView {
            anchors.top: parent.top
            anchors.topMargin: 10
            width: parent.width
            height: 125
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            
            ListView {
                id: listView
                width: parent.width
                height: parent.height
                model: listModel
                delegate: ItemDelegate {
                    required property string value
                    text: value
                    font.family: "Roboto"
                    font.pixelSize: root.fontSize
                    // color: "#D0BCFE"
                    width: parent.width
                    onClicked: {
                        textField.text = value;
                        root.optionSelected(value);
                        popup.close();
                    }
                }
            }
        }
    }

    // Modelo de lista
    ListModel {
        id: listModel
        // Puedes llenarlo desde fuera usando: `options.append(...)`
    }
}
