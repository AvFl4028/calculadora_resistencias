import QtQuick
import "../General"

Background {
    id: root
    signal firstValue(string value)
    signal secondValue(string value)

    height: (first_title.height + first_value.height + second_title.height + second_value.height) * 2
    CardTitle {
        id: first_title
        x: (root.width / 2) - (width / 2)
        anchors.top: parent.top
        anchors.topMargin: 20
        text: "Num. Resistencias"
    }
    TextFieldMenu {
        text: ""
        id: first_value
        x: (root.width / 2) - (width / 2)
        anchors.top: first_title.bottom
        anchors.topMargin: 20
        popup_heignt: height * 2
        Component.onCompleted: {
            options.append({
                "value": "4"
            });
            options.append({
                "value": "5"
            });
            options.append({
                "value": "6"
            });
        }
        onOptionSelected: value => {
            root.firstValue(value);
        }
    }
    CardTitle {
        id: second_title
        x: (root.width / 2) - (width / 2)
        text: "Circuitos"
        anchors.top: first_value.bottom
        anchors.topMargin: 40
    }
    TextFieldMenu {
        id: second_value
        x: (root.width / 2) - (width / 2)
        text: ""
        anchors.top: second_title.bottom
        anchors.topMargin: 20
        popup_heignt: height * 2
        Component.onCompleted: {
            options.append({
                "value": "Serie"
            });
            options.append({
                "value": "Paralelo"
            });
        }
        onOptionSelected: value => {
            root.secondValue(value);
        }
    }
}
