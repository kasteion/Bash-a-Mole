#!/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales

edad=0
pais=""
patharchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su país: " pais
read -p "Ingrese el path de su archivo: " patharchivo

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
    echo "La persona es un niño o niña"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona es un adolescente"
else
    echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es un Gringo"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then
    echo "La persona es del Sur de América"
else
    echo "Soy un programa tonto y no conozco más países"
fi

# Verificar si existe un archivo
echo -e "\nExpresiones Condicionales con Archivos"
if [ -d $patharchivo ]; then
    echo "El directorio $patharchivo existe"
else
    echo "El directorio $patharchivo no existe"
fi