#!/bin/bash
# Programa para ejemplificar el uso de los arreglos

arreglonumeros=(1 2 3 4 5 6)
arreglocadenas=(Fredy, Augusto, Castellon, Bedoya)
arreglorangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de números: ${arreglonumeros[*]}"
echo "Arreglo de cadenas: ${arreglocadenas[*]}"
echo "Arreglo de rangos: ${arreglorangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño arreglo de números: ${#arreglonumeros[*]}"
echo "Tamaño arreglo de cadenas: ${#arreglocadenas[*]}"
echo "Tamaño arreglo de rangos: ${#arreglorangos[*]}"

#Imprimir la posición 3 del arreglo de números, cadenas de rango
echo "Posición 3 Arreglo de números: ${arreglonumeros[3]}"
echo "Posición 3 Arreglo de cadenas: ${arreglocadenas[3]}"
echo "Posición 3 Areglo de rangos: ${arreglorangos[3]}"

#Añadir y eliminar valores en un arreglo
arreglonumeros[7]=20
unset arreglonumeros[0]
echo "Arreglo de números ${arreglonumeros[*]}"
echo "Tamaño arreglo de números ${#arreglonumeros[*]}"