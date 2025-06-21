# Calculadora de resistencias
## Ejecutar app dentro de vs code
Copiamos el archivo *launch.json* y lo pegamos en la carpeta *.vscode*
En la seccion de *Ejecutar y Depurar* seleccionamos el entorno de *Debug Qt*
Dar click al boton verde o presionar *F5*
## Exportar app para release
En vs code copiar el archivo *settings.json* que esta en la carpeta *config* a *.vscode*, en la paleta de comandos ejecutar *CMake: Comfigure*
Ejecutar *CMake: Build*
## Configurar .exe para poder usar la aplicacion fuera de vs code
Dentro de la terminal entramos en la carpeta *build-release* y ejecutamos el siguiente comando:
~~~bash
C:\Qt\{version_qt}\mingw_64\bin\windeployqt.exe {nombre de la app exe}
~~~
