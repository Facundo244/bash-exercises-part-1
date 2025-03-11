#!/bin/bash

# Buscar archivos con la extensión proporcionada
extensiones=$(ls | grep "\.txt$")
numero_extensiones=$(ls | grep "\.txt$" | wc -l)

echo "Existen $numero_extensiones archivos con esa extension"
echo "$extensiones"
