#!/bin/bash
# Programa para ejemplificar como capturar la información del usuario y 
# validarla

option=0
backupname=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
# Acepta el ingreso de información de 10 caracteres
read -n10 -p "Ingresar el nombre del archivo del backup:" backupname
echo -e "\n"
echo "Opción: $option , Backup Name: $backupname"
# Acepta información pero el -s es que la información es secreta entonces no se
# ve cuando la ingresan
read -s -p "Clave: " clave
echo "Clave: $clave"