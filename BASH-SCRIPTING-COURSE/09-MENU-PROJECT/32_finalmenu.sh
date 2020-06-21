#!/bin/bash
# Programa que permite manejar las utilidades de Postgres

opcion=0
fechaactual=`date +%Y%m%d`

# Función para instalar postgres
instalar_postgres () {
    echo -e "\nVerificar instalación postgres..."
    verifyinstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostgres ya se encuentra instalado en el equipo"
    else
        echo -e "\nInstalando postgres\n"
        read -s -p "Ingresar contraseña de sudo: " password
        read -s -p "Ingresar contraseña a utilizar en postgres: " passwordpostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WHITH PASSWORD '[$passwordpostgres]';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para desinstalar postgres
desinstalar_postgres () {
    echo -e "\nFunción Desinstalando postgres\n"
    read -s -p "Ingresar contraseña de sudo: " password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para sacar un  resplado
sacar_respaldo () {
    echo "Listar las bases de datos"
    sudo -u postgres psql -c "\l"
    read -p "Elegir la base de datos a respaldar: " bddrespaldo
    echo -e "\n"
    echo -e "\nDirectorio backup: $1"
    if [ -d "$1" ]; then
        echo "Establecer permisos directorio"
        echo "$password" | sudo -S chmod 755 $1
        echo "Realizando respaldo..."
        sudo -u postgres pg_dump -Fc $bddrespaldo > "$1/bddrespaldo$fechaactual.bak"
        echo "Respaldo realizado correctamente en la ubicación. $1/bddrespaldo$fechaacutal.bak"
    else
        echo "El directorio $1 no existe"
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
}

# Función para restaurar respaldo
restaurar_respaldo () {
    echo "Listar respaldos"
    ls -la $1/*.bak
    read -p "Elegir el respaldo a restaurar: " respaldorestaurar
    echo -e "\n"
    read -p "Ingresa el nombre de la base de datos destino: " bdddestino
    if [ -f "$1/$respaldorestaurar" ]; then
        # Verificar si la bdd existe
        verifybdd= $(sudo -u postgres psql -lqt | cut -d \| -f 1 | grep -wq $bdddestino)
        if [ $? -eq 0 ]; then
            echo "Restaurando en la bdd destino: $bdddestino"
        else
            sudo -u postgres psql -c "create database $bdddestino"
        fi
        echo "Restaurando respaldo..."
        sudo -u postgres pg_restore -Fc -d $bdddestino "$1/$respaldorestaurar"
        echo "Listar la base de datos"
        sudo -u postgres psql -c "\l"
    else
        echo "El respaldo $respaldorestaurar no existe"
    fi
    read -n 1 -s -r -p "Presione [ENTER] para continuar..."
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
            echo -e "\n"
            instalar_postgres
            ;;
        2)
            echo -e "\n"
            desinstalar_postgres
            ;;
        3)
            echo -e "\n"
            read -p "Directorio Backup: " directoriobackup
            sacar_respaldo $directoriobackup
            ;;
        4)
            echo -e "\n"
            read -p "Directorio de respaldos: " directorioderespaldos
            restaurar_respaldo $directorioderespaldos
            ;;
        5)
            exit 0
            ;;
    esac
done