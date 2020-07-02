# MEAN O MERN Ubuntu

MEAN es por Mongodb NGinX Angular y NodeJS (Con Express)

MERN es por Mongodb NGinX React y NodeJS (Con Express)

Ok este si me costó un poco más y así voy....

## MongoDB

Ubuntu no trae la versión más nueva de Mongodb ni la versión oficial...

Ok según el tutorial en https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

Ejecute esto para importar la public key, porque no me funcionó con https:

> $ wget -qO - http://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

Ejecute esto para definir el repositorio, porque no me funcionó con https:

> $ echo "deb http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

Luego de esto ya logré actualizar e instalar:
> $ sudo apt update
> $ sudo apt install mongodb-org

Y con eso ya se puede iniciar 
> $ sudo systemctl start mongod

Y se pude usar mongo para como para conectarme... hasta allí mi conocimiento 
> $ mongo

## NodeJS

Lo mismo Ubuntu no trae la versión más nueva de NodeJS y como quería instalar
la 14... 

Ok, entonces basandome en https://github.com/nodesource/distributions#deb

Para agregar la signing key, pero lo mismo con http porque no me fucionó con https:
> $ wget --quiet -O - http://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -

Luego para configurar el repositorio, igual no me funcionó con https:
> $ VERSION=node_14.x
> DISTRO="$(lsb_release -s -c)"
> $ echo "deb http://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee /etc/apt/sources.list.d/nodesource.list
> echo "deb-src http://deb.nodesource.com/$VERSION $DISTRO main" | sudo tee -a /etc/apt/sources.list.d/nodesource.list

Update e instalar:
> $ sudo apt-get update
> $ sudo apt-get install nodejs

Entonces al final 
> $ node --version

Y creo que esto de una me instaló npm y git o ya venían (no sé)

## ExpressJS

Ok, basandome en https://expressjs.com/es/starter/installing.html para crear un hello world de express y ver que hace.

Crear un directorio en cualquier lado para la app:
>$ mkdir myapp
> $ cd myapp

Y dentro del directorio hacer un:
> $ npm init

Esto me va a preguntar varias cosas jajaja entre esas el entry point
> entry point: (index.js)

Luego de esto, la opcion --save lo agrega a la lista de dependencias... sin eso pues solo se instala temporalmente.
> $ npm install express --save

Luego el ejemplo del hello world https://expressjs.com/es/starter/hello-world.html

Creo un archivo llamado app.js con el siguiente código:
```
var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
```

Luego de esto ya puedo ejecutar
> $ node app.js

Y voilá tengo una aplicación escuchando en el puerto 3000 y dice Hola Mundo

# NGINX

Ahora basandome en este https://carlosazaustre.es/como-configurar-nginx-con-node-js-en-produccion

Primero instalar nginx:
> $ sudo apt-get install nginx

Eso me creo automaticamente la carpeta **/var/www**.

Aquí esta el archivo default de nginx **/etc/nginx/sites-available/default**.

> server {
>   listen 0.0.0.0:80;
> 
>   root /var/www/tu_dominio;
>   index index.html index.htm;
>   server_name tu_dominio.com;
>   access_log /var/log/nginx/tu_dominio.access.log;
>   error_log /var/log/nginx/tu_dominio.error.log debug;
> 
>   location / {
>     try_files $uri $uri/ /index.html;
>   }
> }

Creo la carpeta del dominio
> $ sudo mkdir -p /var/www/tu_dominio
> $ sudo vim /var/www/tu_dominio/index.html

sudo service nginx restart

 sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

### NodeJS y Nginx

Crear otro archivo de configuración de sitio:
> sudo vim /etc/nginx/sites-available/subdominio.tu_dominio.com

Y dentro del archivo para hacer el redirecionamiento al localhost 3000 y la parte de proxy_pass para que rediriga cualquier petición que vaya al subdominio.tu_dominio.com.

> upstream subdominio.tu_dominio.com {  
> server 127.0.0.1:3000;
> }
> 
> server {  
>  listen 0.0.0.0:80;
>  server_name subdominio.tu_dominio.com;
>  access_log /var/log/nginx/subdominio.tu_dominio.access.log;
>  error_log /var/log/nginx/subdominio.tu_dominio.error.log debug;
> 
>  location / {
>     proxy_set_header X-Real-IP $remote_addr;
>     proxy_set_header X-Forwarder-For $proxy_add_x_forwarded_for;
>     proxy_set_header Host $http_host;
>     proxy_set_header X-NginX-Proxy true;
> 
>     proxy_pass http://subdominio.tu_dominio.com;
>     proxy_redirect off;
>   }
> }

Se crea un symlink para habilitar la configuración:

> $ sudo ln -s /etc/nginx/sites-available/subdominio.tu_dominio.com /etc/nginx/sites-enabled/subdominio.tu_dominio.com

Correr la app de node con forever...

> $ sudo npm install -g forever
> $ forever start app.js

Esto sería para que si se reinicia el server no tenga que ponerlo todo a correr otra vez... esto no lo hice la verdad pero lo dejo por aqui:

> $ sudo vim /etc/init/subdominio.tu_dominio.com.conf
> description "subdominio.tu_dominio.com"
> env APP_PATH="ruta_donde_esta_la_app_node"
> 
> start on startup
> stop on shutdown
> 
> script
>   cd $APP_PATH
>   exec forever start nuestra_app.js
> end script

### En mi Equipo local

Creé en el archivo de hosts esta entrada:

> 192.168.1.102 mean.com kasteion.mean.com

Entonces quedó que si entro a mean.com me muestra el html

Y si entro a kasteion.mean.com me muestra la aplicación de Node en el puerto 3000.