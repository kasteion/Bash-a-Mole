#!/bin/bash
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