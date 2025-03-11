#!/bin/bash

# Lo que hace esta linea es usar el comando free -m para mostrar informacion y el awk para buscar la linea que contiene Mem y imprimir el 3er campo de esa linea
memoria_usada=$(free -m | awk '/^Mem:/ {print $3}')

# Validacion de parametro insertado [el -ne compara el numero de argumentos "$#" con el numero 2, y evalua si el numero de argumentos no es igual a 2]
if [ "$#" -ne 2 ]; then
  echo "Argumentos usados: $0 [umbral_memoria] [email]"
  exit 1
fi

umbral_memoria=$1
email=$2

mensaje="La memoria superó el umbral de '$umbral_memoria' MB. La memoria usada es de '$memoria_usada' MB."

# Valida si lo almacenado en $memoria_usada es mayor con (-gt) al umbral dicho $umbral_memoria, si es mayor manda un mensaje al email en cuestion
if [ "$memoria_usada" -gt "$umbral_memoria" ]; then
  echo "$mensaje" | mail -s "Sobrepaso de umbral" "$email"
  echo "Alerta enviada al correo seleccionado"
else
  echo "La memoria en uso no superó el umbral de '$umbral_memoria' MB."
fi
