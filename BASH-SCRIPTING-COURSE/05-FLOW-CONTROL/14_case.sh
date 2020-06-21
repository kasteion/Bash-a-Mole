#!/bin/bash
# Programa para ejemplificar el uso de la sentencia case

opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación Guardar Archivo";;
    "B") echo -e "\nOperación Eliminar Archivo";;
    [C-E]) echo "No está implementada la operación";;
    *) echo "Opción Incorrecta"
esac