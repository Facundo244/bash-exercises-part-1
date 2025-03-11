#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 nombre_del_archivo"
    exit 1
fi

nombre_archivo=$1

if [ -f "$nombre_archivo" ]; then
    wc -l "$nombre_archivo"
else
    echo "El archivo no existe"
fi