#!/bin/bash

# Verificar si se proporcionaron los argumentos correctos
if [ $# -ne 2 ]; then
    echo "Uso: $0 'patrón' directorio"
    exit 1
fi

patron=$1
directorio=$2

# Verificar si el directorio existe 
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 1
fi

# Buscar el patrón en los archivos del directorio
grep -rn "$patron" "$directorio"