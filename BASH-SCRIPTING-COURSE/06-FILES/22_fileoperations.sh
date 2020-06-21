#!/bin/bash
# Programa para ejemplificar las operaciones de un archivo

echo "Operaciones de un archivo"
mkdir -m 755 backupscripts

echo -e "\nCopiar los scritps del directorio actual al nuevo directiro backupscripts"
cp *.* backupscripts/
ls -la backupscripts/

echo -e "\nMover el directorio backupscripts a otra ubicación: $HOME"
mv backupscripts $HOME

echo -e "\n Eliminar los archivos .txt"
rm *.txt