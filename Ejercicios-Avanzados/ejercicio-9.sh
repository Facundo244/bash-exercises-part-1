#!/bin/bash

PS3="Ingrese una opción [1-5]: "

select opcion in "Listar archivos" "Mostrar espacio disco" "Mostrar fecha actual" "Mostrar usuario actual" "Salir"; do
  case $REPLY in
    1)
      echo "Seleccionaste la opción de Listar archivos"
      ls
      ;;
    2)
      echo "Seleccionaste la opción de Mostrar espacio en el disco"
      df -h
      ;;
    3)
      echo "Seleccionaste la opción de Mostrar fecha actual"
      date
      ;;
    4)
      echo "Seleccionaste la opción de Mostrar usuario actual"
      whoami
      ;;
    5)
      echo "Saliendo del menú..."
      break
      ;;
    *)
      echo "ERROR: la opción es incorrecta, seleccione [1-5]"
      ;;
  esac
done
