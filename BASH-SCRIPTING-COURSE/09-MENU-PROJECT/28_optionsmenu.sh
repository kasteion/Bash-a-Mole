#!/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0

while :
do
    #limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "------------------------------------------"
    echo "PGUTIL - Programa de utilidad de Postgres"
    echo "------------------------------------------"
    echo "             MENU PRINCIPAL               "
    echo "------------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Sacar un respaldo"
    echo "4. Restaurar respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información
    read -n1 -p "Ingrese una opción: [1-5]" opcion

    #Validar la opción ingresada
    case $opcion in
        1)
            echo -e "\nInstalando postgres..."
            sleep 3
            ;;
        2)
            echo -e "\nDesinstalando postgres..."
            sleep 3
            ;;
        3)
            echo -e "\nSacando respaldo..."
            sleep 3
            ;;
        4)
            echo -e "\nRestaurando respaldo"
            sleep 3
            ;;
        5)
            echo -e "\nFin del programa"
            exit 0
            ;;
    esac
done