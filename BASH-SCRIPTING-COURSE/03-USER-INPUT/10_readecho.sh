#!/bin/bash
# Programa pra ejemplificar como capturar la información del usuario utilizando
# el comando echo, read y $REPLY

option=0
backupname=""

echo "Programa Utilidades Postgres"
echo -n "Ingresar una opción:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo:"
read
backupname=$REPLY
echo "Opción: $option, BackupName: $backupname"