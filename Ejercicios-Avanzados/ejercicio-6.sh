#!/bin/bash

#Validacion de parametros insertados [ el -ne compara el numero de argumentos "$#" con el numero 3, y evalua si el numero de argumentos no es igual a 3 ]
if [ "$#" -ne 3 ]; then
   echo "Solo uso $0 parametros [asunto] [archivo_adjunto] [destinatario]"
   exit 1
fi

Asunto="$1"
Archivo="$2"
destinatario="$3"

#Valida si el archivo almacenado en la variable $Archivo existe
if [ ! -f "$Archivo" ]; then
   echo "El archivo '$Archivo' no existe"
   exit 1
fi

#Ejecucion del comando mail , con su respectivo asunto , archivo adjunto y destinatario
echo "Cuerpo del mensaje a enviar" | mail -s "$Asunto" -A "$Archivo" "$destinatario"

echo "El mensaje se envio con exito."