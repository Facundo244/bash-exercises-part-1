#!/bin/bash

#Validacion de parametro insertado [ el -ne compara el numeor de argumentos "$# con el numero 1, y evalua si el numero de argumentos no es igual a 1"]
if [ "$#" -ne 1]; then

    echo "Argumentos usado $0 [nombre_archivo_usuarios]"
    exit 1

fi

archivo_usuarios="$1"

#Valida si el archivo ingresado por parametro existe, si no existe, termina el script y tira error"
if [! -f "$archivo_usuarios" ]; then

    echo "El archivo '$archivo_usuarios' no existe.."
    exit 1
fi

#Bucle para ir linea por linea con un while do, donde dice si la longitud de la cadena almacenada en $usuario es verdadera (osea mayor a 0)
while IFS= read -r usuario; do

    if [ -n "$usuario" ]; then
    
    useradd "$usuario"

    fi

done < "$archivo_usuarios"

echo "Se creo los usuarios con Exito!!"
