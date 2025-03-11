#!/bin/bash

#Configuracion para que sea lo mas reutilizable posible

if [ "$#" -ne 3 ]; then
   echo "Solo uso $0 [ nombre_base_de_datos ] [ usuario ] [ directorio_backup ]"
   exit 1
fi

nombre_base_de_datos=$1
usuario=$2
directorio_backup=$3

#Ejecutar comado mysqldump para crear el archivo backup
mysqldump -u "$usuario" -p "$nombre_base_de_datos" > "$directorio_backup"/"$nombre_base_de_datos".sql