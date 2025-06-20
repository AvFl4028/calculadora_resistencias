cmake_minimum_required(VERSION 3.16)

project(CalculadoraResistencia VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCalculadoraResistencia
    main.cpp

    headers/bandas.h
    headers/Colors.h
    headers/ColorsControler.h
    headers/CircuitosControler.h
    headers/Circuitos.h
    headers/OhmControler.h
    headers/Controler.h
    headers/resistencia.h

    scripts/bandas.cpp 
    scripts/ColorsControler.cpp 
    scripts/CircuitosControler.cpp 
    scripts/Circuitos.cpp 
    scripts/OhmControler.cpp 
    scripts/Controler.cpp 
    scripts/resistencia.cpp 
)

qt_add_qml_module(appCalculadoraResistencia
    URI CalculadoraResistencia
    VERSION 1.0
    QML_FILES
        Main.qml
        components/Menu.qml
        components/Colors.qml
        components/Ohm.qml
        components/Circuitos.qml
        
        components/SideBar/SideBar.qml
        components/SideBar/SideBarBtn.qml
        components/SideBar/SideBarGrid.qml

        components/General/Background.qml
        components/General/TextField.qml
        components/General/Title.qml
        components/General/CardTitle.qml
        components/General/CardSubtitle.qml
        components/General/Results.qml
        components/General/InputGroup.qml
        components/General/TextFieldMenu.qml

        components/Colors/ResistenciaPreview.qml
        components/Colors/CuatroBandas.qml
        components/Colors/CincoBandas.qml
        components/Colors/SeisBandas.qml
        components/Colors/NumBandas.qml
        
        components/Ohm/Calc.qml
        components/Ohm/Valores.qml

        components/Circuitos/Resistencias.qml
        components/Circuitos/Valores.qml
        components/Circuitos/NumResistencias.qml
)

set_target_properties(appCalculadoraResistencia PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCalculadoraResistencia
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCalculadoraResistencia
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
