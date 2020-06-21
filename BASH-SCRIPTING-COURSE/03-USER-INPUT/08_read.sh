#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando
# el comando read

option=0
backupname=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción: " option
read -p "Ingresar el nombre del archivo del backup: " backupname
echo "Opción: $option, Archivo: $backupname"