#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de decisión if, else

notaclase=0
edad=0

echo "Ejemplo Sentencia If-Else"
read -n1 -p "Indique cúal es su nota (1-9):" notaclase
echo -e "\n"
if (( $notaclase >=7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cuál es su edad:" edad
if [ $edad -le 18 ]; then
    echo "La persona no puede votar"
else
    echo "La persona puede votar"
fi