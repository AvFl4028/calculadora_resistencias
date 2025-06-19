pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls

Background {
    id: root

    property alias bandaCincoVisible: quinta_banda_loader.visible
    property alias bandaSeisVisible: sexta_banda_loader.visible

    signal primeraBandaValor(string value)
    signal segundaBandaValor(string value)
    signal terceraBandaValor(string value)
    signal cuartaBandaValor(string value)
    signal quintaBandaValor(string value)
    signal sextaBandaValor(string value)

    // property string title
    // property string font: "Roboto"
    // property int title_font_size: 24
    // property int subtitle_font_size: 16
    // property string fontColor: "#E8DEF8"
    // Text {
    //     id: title
    //     text: root.title
    //     x: (root.width / 2) - (width / 2)
    //     font.bold: true
    //     font.family: root.font
    //     font.pixelSize: root.title_font_size
    //     color: root.fontColor
    //     anchors.top: root.top
    //     anchors.topMargin: 20
    // }
    // onWidthChanged: () => {
    //     console.log(scrollview.height)
    //     console.log(scrollview.width)
    // }

    ScrollView {
        id: scrollview
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.bottom: root.bottom
        anchors.bottomMargin: 20
        width: banda_uno.width * (11 / 10)
        x: (root.width - width) / 2
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AlwaysOff

        Column {
            id: fieldsColumn
            spacing: root.height * (1 / 10)
            width: parent.width
            padding: 8

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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.primeraBandaValor(valor);
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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.segundaBandaValor(valor);
                }
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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.terceraBandaValor(valor);
                }
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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.cuartaBandaValor(valor);
                }
            }

            Loader {
                id: quinta_banda_loader
                visible: false
                sourceComponent: quinta_banda_component
            }

            Loader {
                id: sexta_banda_loader
                visible: false
                sourceComponent: sexta_banda_component
            }
        }

        Component {
            id: quinta_banda_component
            TextFieldMenu {
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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.quintaBandaValor(valor);
                }
            }
        }

        Component {
            id: sexta_banda_component
            TextFieldMenu {
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
                onOptionSelected: valor => {
                    // console.log(valor);
                    root.sextaBandaValor(valor);
                }
            }
        }
    }
}
