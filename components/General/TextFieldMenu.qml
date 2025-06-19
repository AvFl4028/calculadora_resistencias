pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls

Item {
    id: root
    property alias text: textField.text
    property alias options: listModel
    property alias popup_heignt: popup.height
    property int marginList: 10
    property int fontSize: 18
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
            height: parent.height //* (1 + (1 / 2))
            color: "#211F26"
            width: parent.width
        }
        ScrollView {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom

            anchors.topMargin: root.marginList
            anchors.leftMargin: root.marginList
            anchors.rightMargin: root.marginList
            anchors.bottomMargin: root.marginList

            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            ScrollBar.vertical.interactive: true

            ListView {
                id: listView
                // width: parent.width
                // height: parent.height

                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
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
