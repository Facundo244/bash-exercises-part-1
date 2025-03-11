#!/bin/bash

# Listar archivos a eliminar mayores a 5MB
find . -type f -size +5M -print

# Confirmación por parte del usuario
read -p "¿Deseas continuar con la eliminación de estos archivos? (s/n): " respuesta

# Validación para la opción almacenada en la variable respuesta
if [[ "$respuesta" == "s" ]]; then
    find . -type f -size +5M -exec rm -f {} \;
    echo "Archivos eliminados"
else
    echo "Eliminación de archivos cancelada"
fi

# Finalizado...
