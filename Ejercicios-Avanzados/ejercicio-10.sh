#!/bin/bash

# Verificación de parámetros insertados
# El -ne compara el número de argumentos "$#" con el número 3, y evalúa si el número de argumentos no es igual a 3
if [ "$#" -ne 3 ]; then
  echo "Argumentos usados: $0 [opcion] [archivo] [id_usuario]"
  echo "Opciones válidas son: cifrar y descifrar"
  exit 1
fi

opcion=$1
archivo=$2
id_usuario=$3

# Inicio de la estructura case, comparándose con las diferentes opciones y ejecutando el comando correspondiente
case $opcion in
  cifrar)
    gpg --encrypt --recipient "$id_usuario" "$archivo"
    if [ $? -eq 0 ]; then
      echo "Archivo cifrado exitosamente"
    else
      echo "Hubo un error al cifrar el archivo"
    fi
    ;;
  
  descifrar)
    gpg --decrypt --recipient "$id_usuario" "$archivo"
    if [ $? -eq 0 ]; then
      echo "Arch
