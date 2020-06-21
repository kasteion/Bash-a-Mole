#!/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0

# Función para instalar postgres
instalar_postgres () {
    echo -e "\nFunción instalando postgres"
}

# Función para desinstalar postgres
desinstalar_postgres () {
    echo -e "\nFunción Desinstalando postgres"
}

# Función para sacar un  resplado
sacar_respaldo () {
    echo -e "\nFunción Sacando respaldo"
    echo -e "\nDirectorio backup: $1"
}

# Función para restaurar respaldo
restaurar_respaldo () {
    echo -e "\nFunción Restaurando respaldo"
    echo -e "\nDirectorio respaldo: $1"
}

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
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3)
            echo -e "\n"
            read -p "Directorio Backup: " directoriobackup
            sacar_respaldo $directoriobackup
            sleep 3
            ;;
        4)
            echo -e "\n"
            read -p "Directorio de respaldos: " directorioderespaldos
            restaurar_respaldo $directorioderespaldos
            sleep 3
            ;;
        5)
            exit 0
            ;;
    esac
done