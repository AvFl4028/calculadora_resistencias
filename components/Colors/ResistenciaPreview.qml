pragma ComponentBehavior: Bound

import QtQuick
import "../General"

Background {
    id: root
    width: 560
    height: 350
    property alias cuatro_bandas_visible: cuatro_bandas_loader.visible
    property alias cinco_bandas_visible: cinco_bandas_loader.visible
    property alias seis_bandas_visible: seis_bandas_loader.visible
    signal banda_uno_color(string valor)
    signal banda_dos_color(string valor)
    signal banda_tres_color(string valor)
    signal banda_cuatro_color(string valor)
    signal banda_cinco_color(string valor)
    signal banda_seis_color(string valor)

    onBanda_uno_color: (value) =>{
        cuatro_bandas_loader.item.banda_uno_color(value)
        cinco_bandas_loader.item.banda_uno_color(value)
        seis_bandas_loader.item.banda_uno_color(value)
    }

    onBanda_dos_color: (value) => {
        cuatro_bandas_loader.item.banda_dos_color(value)
        cinco_bandas_loader.item.banda_dos_color(value)
        seis_bandas_loader.item.banda_dos_color(value)
    }

    onBanda_tres_color: (value) => {
        cuatro_bandas_loader.item.banda_tres_color(value)
        cinco_bandas_loader.item.banda_tres_color(value)
        seis_bandas_loader.item.banda_tres_color(value)
    }

    onBanda_cuatro_color: (value) => {
        cuatro_bandas_loader.item.banda_cuatro_color(value)
        cinco_bandas_loader.item.banda_cuatro_color(value)
        seis_bandas_loader.item.banda_cuatro_color(value)
    }

    onBanda_cinco_color: (value) => {
        cinco_bandas_loader.item.banda_cinco_color(value)
        seis_bandas_loader.item.banda_cinco_color(value)
    }

    onBanda_seis_color: (value) => {
        seis_bandas_loader.item.banda_seis_color(value)
    }

    Loader {
        id: cuatro_bandas_loader
        visible: true
        sourceComponent: cuatro_bandas_component
    }
    Component {
        id: cuatro_bandas_component
        CuatroBandas {
            id: cuatro_bandas
            width: root.width * (4 / 5)
            height: root.height * (4 / 5)
            x: (root.width / 2) - (width / 2)
            y: (root.height / 2) - (height / 2)
        }
    }
    Loader {
        id: cinco_bandas_loader
        visible: false
        sourceComponent: cinco_bandas_component
    }
    Component {
        id: cinco_bandas_component
        CincoBandas {
            width: root.width * (4 / 5)
            height: root.height * (4 / 5)
            x: (root.width / 2) - (width / 2)
            y: (root.height / 2) - (height / 2)
        }
    }
    Loader {
        id: seis_bandas_loader
        visible: false
        sourceComponent: seis_bandas_component
    }
    Component {
        id: seis_bandas_component
        SeisBandas {
            width: root.width * (4 / 5)
            height: root.height * (4 / 5)
            x: (root.width / 2) - (width / 2)
            y: (root.height / 2) - (height / 2)
        }
    }
}
