import QtQuick

Background {
    id: root
    property string title
    property string font: "Roboto"
    property int title_font_size: 24
    property int subtitle_font_size: 16
    property string fontColor: "#E8DEF8"

    Text {
        id: title
        text: root.title
        x: (root.width / 2) - (width / 2)
        font.bold: true
        font.family: root.font
        font.pixelSize: root.title_font_size
        color: root.fontColor
        anchors.top: root.top
        anchors.topMargin: 20
    }

    TextFieldMenu {
        id: banda_uno
        Component.onCompleted: {
            options.append({
                "value": "NEGRO"
            });
            options.append({
                "value": "MARRON"
            });
            options.append({
                "value": "ROJO"
            });
            options.append({
                "value": "NARANJA"
            });
            options.append({
                "value": "AMARILLO"
            });
            options.append({
                "value": "VERDE"
            });
            options.append({
                "value": "AZUL"
            });
            options.append({
                "value": "VIOLETA"
            });
            options.append({
                "value": "GRIS"
            });
            options.append({
                "value": "BLANCO"
            });
            options.append({
                "value": "ORO"
            });
            options.append({
                "value": "PLATA"
            });
        }
        anchors.top: title.bottom
        anchors.topMargin: root.height * (1 / 10)
        x: (root.width / 2) - (width / 2)
        onOptionSelected: (valor) => {
            console.log(valor)
        }
    }

    TextFieldMenu {
        id: banda_dos
        Component.onCompleted: {
            options.append({
                "value": "NEGRO"
            });
            options.append({
                "value": "MARRON"
            });
            options.append({
                "value": "ROJO"
            });
            options.append({
                "value": "NARANJA"
            });
            options.append({
                "value": "AMARILLO"
            });
            options.append({
                "value": "VERDE"
            });
            options.append({
                "value": "AZUL"
            });
            options.append({
                "value": "VIOLETA"
            });
            options.append({
                "value": "GRIS"
            });
            options.append({
                "value": "BLANCO"
            });
            options.append({
                "value": "ORO"
            });
            options.append({
                "value": "PLATA"
            });
        }
        anchors.top: banda_uno.bottom
        anchors.topMargin: root.height * (1 / 10)
        x: (root.width / 2) - (width / 2)
    }

    TextFieldMenu {
        id: banda_tres
        Component.onCompleted: {
            options.append({
                "value": "NEGRO"
            });
            options.append({
                "value": "MARRON"
            });
            options.append({
                "value": "ROJO"
            });
            options.append({
                "value": "NARANJA"
            });
            options.append({
                "value": "AMARILLO"
            });
            options.append({
                "value": "VERDE"
            });
            options.append({
                "value": "AZUL"
            });
            options.append({
                "value": "VIOLETA"
            });
            options.append({
                "value": "GRIS"
            });
            options.append({
                "value": "BLANCO"
            });
            options.append({
                "value": "ORO"
            });
            options.append({
                "value": "PLATA"
            });
        }
        anchors.top: banda_dos.bottom
        anchors.topMargin: root.height * (1 / 10)
        x: (root.width / 2) - (width / 2)
    }

    TextFieldMenu {
        id: banda_cuatro
        Component.onCompleted: {
            options.append({
                "value": "NEGRO"
            });
            options.append({
                "value": "MARRON"
            });
            options.append({
                "value": "ROJO"
            });
            options.append({
                "value": "NARANJA"
            });
            options.append({
                "value": "AMARILLO"
            });
            options.append({
                "value": "VERDE"
            });
            options.append({
                "value": "AZUL"
            });
            options.append({
                "value": "VIOLETA"
            });
            options.append({
                "value": "GRIS"
            });
            options.append({
                "value": "BLANCO"
            });
            options.append({
                "value": "ORO"
            });
            options.append({
                "value": "PLATA"
            });
        }
        anchors.top: banda_tres.bottom
        anchors.topMargin: root.height * (1 / 10)
        x: (root.width / 2) - (width / 2)
    }
}
