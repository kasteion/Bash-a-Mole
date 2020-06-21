#!/bin/bash
# Programa para ejemplificar el uso de los ifs anidados

notaclase=0
continua=""

echo "Ejemplo Sentencia If-Else"
read -n1 -p "Indique cúal es su nota (1-9):" notaclase
echo -e "\n"
if [ $notaclase -ge 7 ]; then
    echo "El alumno aprueba la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel (s/n): " continua
    if [ $continua = "s" ]; then
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nostoros, mucha suerte!!!"
    fi
else
    echo "El alumno reprueba la materia"
fi