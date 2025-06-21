import QtQuick
import "../General"

Background {
    id: root
    property alias first_text: first_subtitle.text
    // height: (first_subtitle.height + first_title.height + second_subtitle.height + second_title.height) * (3 / 2)
    height: (first_subtitle.height + first_title.height) * (3 / 2)
    CardTitle {
        id: first_title
        anchors.top: parent.top
        anchors.topMargin: 20//10
        x: (parent.width / 2) - (width / 2)
        text: "Valores"
    }
    CardSubtitle {
        id: first_subtitle
        anchors.top: first_title.bottom
        anchors.topMargin: 10
        x: (parent.width / 2) - (width / 2)
        text: "0 Ohms "
    }
    // CardTitle {
    //     id: second_title
    //     anchors.top: first_subtitle.top
    //     anchors.topMargin: 20
    //     x: (parent.width / 2) - (width / 2)
    //     text: "Rango Tolerancia"
    // }
    // CardSubtitle {
    //     id: second_subtitle
    //     anchors.top: second_title.bottom
    //     anchors.topMargin: 10
    //     x: (parent.width / 2) - (width / 2)
    //     text: "(95, 105) Ohms"
    // }
}
