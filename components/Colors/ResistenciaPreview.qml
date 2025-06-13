import QtQuick
import "../General"

Background {
    id: root
    width: 560
    height: 350

    CuatroBandas{
        width: root.width * (4/5)
        height: root.height * (4/5)
        x: (root.width / 2) - (width / 2)
        y: (root.height / 2) - (height / 2)
    }
}
