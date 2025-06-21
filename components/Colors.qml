import QtQuick
import "General"
import "Colors"

Rectangle {
    id: root
    color: "transparent"
    Title {
        id: title
        x: (root.width / 2) - (width / 2)
        texto: "Calculadora de código de colores de resistencias"
    }
    ResistenciaPreview {
        id: resistencia_preview
        anchors.top: title.bottom
        anchors.topMargin: 40
        width: root.width * (5 / 10)
        height: root.height * (4 / 10)
    }

    Connections {
        target: colorsControler
        onBanda_uno_color_changed: value => {
            resistencia_preview.banda_uno_color(value);
        }
        onBanda_dos_color_changed: value => {
            resistencia_preview.banda_dos_color(value);
        }
        onBanda_tres_color_changed: value => {
            resistencia_preview.banda_tres_color(value);
        }
        onBanda_cuatro_color_changed: value => {
            resistencia_preview.banda_cuatro_color(value);
        }
        onBanda_cinco_color_changed: value => {
            resistencia_preview.banda_cinco_color(value);
        }
        onBanda_seis_color_changed: value => {
            resistencia_preview.banda_seis_color(value);
        }

        onValor_changed: value => {
            resultados.texto = value;
        }

        onValorTolerancia_changed: value => {
            resultados.texto_second = value;
        }
    }

    NumBandas {
        id: num_bandas
        anchors.top: resistencia_preview.bottom
        anchors.topMargin: 40
        width: resistencia_preview.width * (4 / 10)
        onBandaSeleccionada: valor => {
            colorsControler.numBandas = valor;
            if (valor == "4") {
                resistencia_preview.cuatro_bandas_visible = true;
                resistencia_preview.cinco_bandas_visible = false;
                resistencia_preview.seis_bandas_visible = false;

                bandas_valores.bandaCincoVisible = false;
                bandas_valores.bandaSeisVisible = false;
                // resistencia_preview.banda_uno_color("red")
            }
            if (valor == "5") {
                resistencia_preview.cuatro_bandas_visible = false;
                resistencia_preview.cinco_bandas_visible = true;
                resistencia_preview.seis_bandas_visible = false;

                bandas_valores.bandaCincoVisible = true;
                bandas_valores.bandaSeisVisible = false;

                // resistencia_preview.banda_uno_color("red")
                // resistencia_preview.banda_dos_color("red")
                // resistencia_preview.banda_tres_color("red")
                // resistencia_preview.banda_cuatro_color("red")
                // resistencia_preview.banda_cinco_color("red")
            }
            if (valor == "6") {
                resistencia_preview.cuatro_bandas_visible = false;
                resistencia_preview.cinco_bandas_visible = false;
                resistencia_preview.seis_bandas_visible = true;

                bandas_valores.bandaCincoVisible = true;
                bandas_valores.bandaSeisVisible = true;

                // resistencia_preview.banda_uno_color("red")
                // resistencia_preview.banda_dos_color("red")
                // resistencia_preview.banda_tres_color("red")
                // resistencia_preview.banda_cuatro_color("red")
                // resistencia_preview.banda_cinco_color("red")
                // resistencia_preview.banda_seis_color("red")
            }
        }
    }
    Results {
        id: resultados
        anchors.top: resistencia_preview.bottom
        anchors.topMargin: 40
        anchors.left: num_bandas.right
        anchors.leftMargin: resistencia_preview.width - width - num_bandas.width
        title: "Valores"
        texto: "0 Ohms"
        title_second: "Rango Tolerancia"
        texto_second: "(0, 0) Ohms"
        width: resistencia_preview.width * (4 / 10)
    }
    InputGroup {
        // width: 300
        // height: 500
        id: bandas_valores
        anchors.top: title.bottom
        anchors.topMargin: 40
        anchors.right: root.right
        anchors.rightMargin: root.width * (1 / 10)
        anchors.leftMargin: root.width * (1 / 10)
        anchors.left: resistencia_preview.right
        anchors.bottom: root.bottom
        anchors.bottomMargin: 40

        onPrimeraBandaValor: value => {
            colorsControler.banda_uno_color = value;
        }

        onSegundaBandaValor: value => {
            colorsControler.banda_dos_color = value;
        }

        onTerceraBandaValor: value => {
            colorsControler.banda_tres_color = value;
        }

        onCuartaBandaValor: value => {
            colorsControler.banda_cuatro_color = value;
        }

        onQuintaBandaValor: value => {
            colorsControler.banda_cinco_color = value;
        }

        onSextaBandaValor: value => {
            colorsControler.banda_seis_color = value;
        }
    }
}
