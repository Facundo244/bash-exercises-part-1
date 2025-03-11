#!/bin/bash

archivo_reporte="cpu_reporte.txt"

top -b -n 1 > "$archivo_reporte"

echo "Reporte del uso de CPU esta guardado en : $archivo_reporte"