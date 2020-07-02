# LAMP Ubuntu

Bueno, LAMP viene de Linux, Apache, MySQL, PHP

Este primer experimento lo hice basandome en el tutorial de:
https://linuxconfig.org/how-to-install-lamp-ubuntu-18-04-bionic-beaver-linux-apache-mariadb-php

## Base de datos (MySQL)

Empece por instalar la base de datos
> $ sudo apt install mysql-server

Entrar al motor de base de datos para crear database y usuario
> $ sudo mysql -u root
> mysql> CREATE DATABASE `bionic_lamp`;
> mysql> CREATE USER `site_admin`@`localhost` IDENTIFIED BY 'your_password';
> mysql> GRANT ALL ON bionic_lamp.* TO `site_admin`@`localhost`;
> mysql> FLUSH PRIVILEGES;
> mysql> exit;

## Web Server (Apache)

Seguido de esto el Apache
> $ sudo apt install apache2

Ahora para configurar un nuevo sitio se copia el 000-default.conf para basarme en el:
> sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/your-site.com.conf

Se edita el archivo your-site.com.conf:
> En VirtualHost se puede cambiar el puerto
> DocumentRoot /var/www/html/your-site.com/public_html
> ServerName your-site.com
> ServerAlias www.your-site.com

Se crean las carpetas del sitio y dentro public_html y logs:
> $ sudo mkdir -p /var/www/html/your-site.com/{public_html,logs}

Se habilita el nuevo sitio:
> $ sudo a2ensite your-site.com.conf

Se deshabilita el sitio default:
> $ sudo a2dissite 000-default.conf

Y se reinicia el web server:
> $ sudo systemctl reload apache2

## PHP

Y luego todo lo de PHP
> $ sudo apt install libapache2-mod-php php-mysql php-curl php-xmlrpc php-intl php-gd

Entonces para crear el sitio en la carpeta **/var/www/html/your-site.conf/public_html**
creo el archivo **index.php** con el siguiente código solo para verificar que haya conexión.

```
<?php echo '<h1>Page loaded with PHP!</h1>';
$conn = mysqli_connect('localhost', 'site_admin', 'your_password');

if(!$conn){
	die('<h2>Error: </h2>' . mysqli_connect_error());
}else{
	echo '<h2>Successfully Connected to MySQL Database!</h2>';
}
?>
```