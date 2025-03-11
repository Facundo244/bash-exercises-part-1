#!/bin/bash

#Validacion si se inserto un argumento [ -lt 1 para comprobar si el numero de argumento es menor que 1 ]
if [ "$#" -lt 1 ]; then
   echo "No inserto ningun argumento"
   exit 1
fi

archivo_log="$1"

#Validacion si el archivo existe usa el comando tail -f , sino existe tira un mensaje y el script se termina con exit 1
if [ -f "$archivo_log" ]; then
   echo "Monitoreando el archivo $archivo_log, para salir toque Ctrl+C"
   tail -f "$archivo_log"
else
   echo "El archivo de log $archivo_log no existe, o coloco mal el directorio EJ: /ruta/donde/archivo.log"
   exit 1
fi