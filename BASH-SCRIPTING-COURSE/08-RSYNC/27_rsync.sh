#!/bin/bash
# Programa para ejemplificar la forma de transferir pro la red utilizando el 
# comando rsync y las opciones empaquetamiento para optimizar la velocidad de 
# transferencia.

echo "Empaquetar todos los scripts de la carpeta y transferirlos por la red utilizando el comando rsync"

host=""
usuario=""

read -p "Ingresar el host:" host
read -p "Ingresar el usuario:" usuario
echo -e "\nEn este momento se procederá a empaquetar y transferir según los datos usados"
rsync -avz $(pwd) $usuario@$host:/home/fredy