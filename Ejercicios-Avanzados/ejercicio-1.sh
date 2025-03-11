#!/bin/bash

#Listar archivos que se modificaron
find /home/facundo/Desktop -type f -mtime +2 -print

#Mueve archivos modificados hace mas de 2 dias al directorio ArchivosAntiguos
find /home/facundo/Desktop -type f -mtime +2 -exec mv {} /home/facundo/Desktop/ArchivosAntiguos \;