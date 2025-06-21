pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import "../General"

Background {
    id: root

    signal resistenciaUnoValue(string value)
    signal resistenciaDosValue(string value)
    signal resistenciaTresValue(string value)
    signal resistenciaCuatroValue(string value)
    signal resistenciaCincoValue(string value)
    signal resistenciaSeisValue(string value)

    property int marginField: 40
    property int textFieldFontSize: 20
    property alias quintoValorVisible: quinto_valor_loader.visible
    property alias sextoValorVisible: sexto_valor_loader.visible

    height: (title.height + primer_valor.height + segunda_valor.height + tercer_valor.height) * (3 / 2)

    CardTitle {
        id: title
        text: "Resistencias"
        anchors.top: parent.top
        anchors.topMargin: 20
        x: (root.width / 2) - (width / 2)
    }

    ScrollView {
        anchors.top: title.bottom
        anchors.topMargin: 20
        anchors.bottom: root.bottom
        anchors.bottomMargin: 20
        width: primer_valor.width * (11 / 10)
        x: (root.width - width) / 2

        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        Column {
            id: fieldsColumn
            spacing: root.marginField
            padding: 8

            TextField {
                id: primer_valor
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaUnoValue(value);
                }
            }

            TextField {
                id: segunda_valor
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaDosValue(value);
                }
            }

            TextField {
                id: tercer_valor
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaTresValue(value);
                }
            }

            TextField {
                id: cuarto_valor
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaCuatroValue(value);
                }
            }

            Loader {
                id: quinto_valor_loader
                visible: false
                sourceComponent: quinto_valor_component
            }

            Loader {
                id: sexto_valor_loader
                visible: false
                sourceComponent: sexto_valor_component
            }
        }

        Component {
            id: quinto_valor_component
            TextField {
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaCincoValue(value);
                }
            }
        }

        Component {
            id: sexto_valor_component
            TextField {
                fontSize: root.textFieldFontSize
                height: 40
                onTextChanged: value => {
                    root.resistenciaSeisValue(value);
                }
            }
        }
    }
}
