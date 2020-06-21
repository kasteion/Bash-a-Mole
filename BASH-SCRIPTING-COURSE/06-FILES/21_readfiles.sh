#!/bin/bash
# Programa para ejemplificar como se lee en un archivo

echo -e "Leer en un archivo a traves del comando cat"
cat $1

echo -e "\n\nAlmacenar los valores en una variable"
archivo=`cat $1`
echo "$archivo"

# Se utiliza  la variable IFS (Internal Field Separator) para evitar que los 
# espacios en banco al inicio y al final se recorten
echo -e "\n\nLeer archivo línea por línea utilizando while"
while IFS= read linea
do
    echo "$linea"
done < $1