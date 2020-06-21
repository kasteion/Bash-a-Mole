#!/bin/bash
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