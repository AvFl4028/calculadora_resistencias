cmake_minimum_required(VERSION 3.16)

project(CalculadoraResistencia VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCalculadoraResistencia
    main.cpp

    bandas.h 
    bandas.cpp 

    resistencia.h 
    resistencia.cpp 
    
)

qt_add_qml_module(appCalculadoraResistencia
    URI CalculadoraResistencia
    VERSION 1.0
    QML_FILES
        Main.qml
        components/SideBar.qml
        components/SideBarBtn.qml
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
