# Familia-DLs
Mis proyectos basados en AutoHotkey
Agradecimientos especiales a AutoHotkey scripting language,  Created by Chris Mallet and Others.


Simplemente son una serie de programas que resuelven algunas situaciones gracias a la facilidad de uso de AutoHotkey.


Fireprofile
Script para separar diferentes perfiles de Firefox portable de manera que solo necesites una sola instalación del mismo para tener hasta
10 perfiles diferentes.

Notex
Simplemente es un script para tomar notas, la ventaja es lo extremadamente simple de su uso, no demanda recursos en exceso, realiza copias de
seguridad de las notas y es personalizable. Por ahora tiene capacidad de manejar 10 notas diferentes. La decodificación es UTF-8 lo cual permite
utilizar más cantidad de caracteres.

DLs 
Creación de listas DLs con diferentes rutas, texto, direcciones web o cualquier otra cosa útil como los comandos Shell. Para evitar el generar
un sistema único para cada programa donde almacenar los datos, se me ocurrió crear listas donde se almacenen los datos necesarios para cada programa. 
DLs en un programa encargado de administrar más eficientemente estas listas, este incluye una guía y herramientas para realizar más listas rápidamente.
Dependiendo de la aplicación se puede agregar:
*Rutas a carpetas, archivos, programas en sus respectivos iconos o no (Creando comandos DLs)
*Contenido a copiar al portapapeles (no párrafos)
*Contenido a copiar al portapapeles proveniente de un txt
*Ejecución de listas con comandos DLs
*Acceder directamente a partes de la configuración mediante los comandos del sistema.
*Paginas web


Ejemplos de comando DLs:
C:\Program Files\Microsoft Office\root\Office16\WINWORD.EXE|"X:\carp1\File1.doc" "X:\carp1\File2.doc"
shell:::{645ff040-5081-101b-9f08-00aa002f954e}|Config



Aversión
Función principal de las listas DLs; Almacenar rutas a archivos y aplicaciones para abrir los mismos.
Función secundaria de las listas DLs; Sin posibilidad de usarcé como lanzador de aplicaciones.

Crear copias de seguridad de tus proyectos de manera autónoma o manual a través de su interfaz o por medio de hockeys cada copia del archivo
tiene el número de versión correspondiente y una pequeña nota.  Hay tres tipos de copia, la Normal o A, agrega la nota normal sin intervención
del usuario, La copia B o Especial hace lo mismo que la anterior solo que la nota utilizada es otra, y finalmente la C o extraordinaria donde se
agrega una nota especifica introducida por el usuario.

CoMe
Función principal de la lista DLS; Almacenar rutas a carpetas 
Función secundaria de la lista; Puede usarcé como lanzador de aplicaciones.
Recomiendo realizar pruebas antes de usar esta aplicación para evitar cualquier problema con archivos.
Su finalidad es acercar rápidamente las carpetas al usuario, es decir no importe donde este tu carpeta siempre estará al alcance de un clic. 
Esto es para situaciones donde necesitas tener bastantes carpetas a la mano.
En principio la idea es seleccionar la carpeta y proceder a una operación, mover o copiar archivos a ella. Pero también permite aplicar
Solo lectura, Archivo del sistema, Archivo oculto de manera rápida a varios archivos, borrar un tipo de archivo de una carpeta, eliminar
una carpeta y conservar sus archivos y directorios, todo esto atreves de arrastrar y soltar. 
Si se tiene duda de una operación se puede consultar el símbolo de interrogación en la interfaz del script.



Select and execute
Función principal de las listas DLs; Ejecutar cualquier comando DLs
Puede lanzar aplicaciones al inicio y final de una sesión de trabajo, cerrar aplicaciones al terminar la sesión, personalizable, muestra
iconos de los diferentes elementos en las listas DLs, se oculta automáticamente, soporte para llamarlo a través de un hockey, ejecuta 
comandos propios de las listas DLs a través de hockeys y se puede agregar un explorador de archivos y navegador personalizado.


StartKey M
Es una versión más completa de Select and execute, este último está pensado para iniciar sesiones de trabajo en diferentes proyectos, es decir 
abrir y cerrar determinados programas además de facilitar el acceso a diferentes rutas, contenido, webs, etc. 

SartKey M cuenta con todas las características de Select and execute y Notex, además permite tener 5 listas DLs en su primera pestaña para añadir
lo que requiera o sea necesario, cuenta con otra pestaña especial para agregar comandos para enlazar con la configuración del sistema y panel de 
control de Windows, otra pestaña permite agregar carpetas y también paginas web. 
Cuenta con una barra inferior donde agregar pequeños iconos a forma de accesos rápidos, a través de una lista DLs.
Se puede personalizar la aplicación, agregar navegadores o un explorador de archivos alterno, otra situación útil es "Oscuridad" la cual consiste
en un mensaje que en cierto tiempo te recordara parpadear.

Aunque no permite realizar operaciones como CoMe, pues solo actúa como una biblioteca de datos, puedes usar cualquier lista DLs como desees.










