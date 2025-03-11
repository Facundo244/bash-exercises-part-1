#!/bin/bash

# Verificar que se proporcionen dos argumentos (origen y respaldo)
if [ $# -ne 2 ]; then
    echo "Uso: $0 directorio_origen directorio_respaldo"
    exit 1
fi

directorio_origen=$1
directorio_respaldo=$2

# Verificar que el directorio de origen exista
if [ ! -d "$directorio_origen" ]; then
    echo "Error: El directorio de origen '$directorio_origen' no existe."
    exit 1
fi

# Crear el directorio de respaldo si no existe
if [ ! -d "$directorio_respaldo" ]; then
    echo "Creando el directorio de respaldo '$directorio_respaldo'..."
    mkdir -p "$directorio_respaldo"
fi

# Copiar archivos al directorio de respaldo
cp -r "$directorio_origen"/* "$directorio_respaldo"

echo "Archivos copiados de '$directorio_origen' a '$directorio_respaldo' correctamente."