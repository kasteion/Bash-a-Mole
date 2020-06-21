#!/bin/bash
# Programa para revisar como ejecutar  comandos dentro de un programa y 
# almacenar en una variable para su posterior utilización.

ubicacionActual=`pwd`
infoKernel=$(uname -a)
infoKernel2=`uname -r`
infoKernel3=$(uname -mrs)

echo "La ubicación actual es la siguiente: $ubicacionActual"
echo "Información del Kernel: $infoKernel"
echo $infoKernel2
echo $infoKernel3