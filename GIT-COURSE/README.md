# INTRODUCCIÓN A GIT

## ¿QUÉ ESE GIT?

En lugar de manejar una versión para cada archivo, hay un sistema que guarda solo esos cambios. Maneja los cambios que otros hagan sobre los mismos archivos. Si algo falla se sabe quien lo hizo el cambio y si se quiere recuperar una versión anterior se puede hacer de manera precisa.

En la máquina local se utiliza `git`, funcion por línea de comando y tiene opciones como `merge`, `pull`, `add`, `commit`, `rebase`, etc.

Si se quiere colaborar con otros y subir el código a la red se puede utilizar GitHub.

Git es un software de control de versiones diseñado por Linus Torvalds, pensado en la eficiencia y la confiabilidad del mantenimiento de versiones de aplicaciones cuando estas tienen un gran número de archivos de código fuente. En su lugar GitHub es un lugar para alojar proyectos utilizando el sistema de control de versiones de Git. GitHub sería como una red social de código para los programadores.

## ¿POR QUÉ USAR UN SISTEMA DE CONTROL DE VERSIONES COMO GIT?

Son muy pocos los cambios que ocurren en un archivo. Así que no es necesario guardar versiones de todo el archivo, solo necesitamos guardar los cambios y dejar claro:
- ¿Dónde ocurrieron?
- ¿Cuándo ocurrieron?
- ¿Quién los hizo?

Git está optimizado para guardar todos estos cambios de forma atómica e incremental, o sea, aplicando cambios sobre ls últimos cambios, estos sobre los cambios anteriores y así hasta el inicio de nuestro proyecto.

- `git init`: Es el comando para iniciar nuestro repositorio, o sea, indicarle a Git que queremos usar su sistema de control de versiones en nuestro proyecto.
- `git add`: Es el comando para que nuestro repositorio sepa la existencia de un archivo o sus últimos cambios. Este comando no almacena las actualizaciones de forma definitiva.
- `git commit`: Es el comando para almacenar definitivamente todos los cambios que por ahora viven en el `staging area`. También podemos guardar un mensaje para recordar muy bien qué cambios hicisos en este commit con el argumento -m "Mensaje del commit".
- `git push`: Es el comando para enviar nuestros commits a un servidor remoto.

**Pasos**:

1. Creo una carpeta para un proyecto...
> git init

2. Creo algunos archivos con código...

> git add archivo1.text
> git add archivo2.text

3. Hago mis cambios y un commit...

> git commit -m "versión 1"

4. Hago más cambios y agrego todo lo que haya cambiado en la carpeta...

> git add .
> git commit -m "Cambios a v1"

5. Quiero ver el status de los archivos en mi carpeta...

> git status

6. Quiero ver todos los cambios que se esten trabajando...

> git show

7. Quiero ver un log de todos los cambios a un archivo...

> git log archivo1.txt

8. Para enviar los cambios a un repositorio...

> git push

## INSTALANDO GIT Y GITBASH EN WINDOWS

Se descarga de https://git-scm.com/

Windows no es un entorno amigable para la terminal por lo tanto se necesita:

- Instalar OpenSSL
- Configurar el Enter
- Emular la consola de linux

Windows y Linux tiene comandos diferentes, graban el enter de forma diferente. Cuando se instala Git Bash en Windows se debe elegir si se prefiere trabajar con la forma de Windows o la forma de UNIx (Linxu y Mac).

Ten en cuenta que, normalmente, los entornos de desarrollo profesionales tienen personas que usan sistemas operativos diferentes. Esto significa que, si todos podemos usar los mismos comandos, el trabajo resultará más fácil para todos en el equipo.

Los comandos de UNIX son los más comunes entre los equipos de desarrollo. Así que, a menos que trabajes con tecnologías nativas de Microsoft (por ejemplo, .NET), la recomendación es que elijas la opción de la terminal tipo UNIX para obtener una mejor compatibilidad con todo tu equipo.

## INSTALANDO GIT EN OSX

Se descarga de https://git-scm.com/

> git --version

La instalación de Git en Mac es un poco más sencilla. No debemos instalar GitBash porque Mac ya trae por defecto una consola de comandos (la puedes encontrar como Terminal). Tampoco debemos configurar OpenSSL porque ya viene listo por defecto.

OSX está basado en un Kernel de UNIX llamado BSD. Esto significa que hay algunas diferencias entre las consolas de Mac y Linux. Pero no vas a notar la diferencia a menos que trabajes con acceso profundo a las interfaces de red o los archivos del sistema operativo.

## INSTALANDO GIT EN LINUX

> sudo apt-get install git

Cada distribución de Linux tiene un comando especial para instalar herramientas y actualizar el sistema.

En las distribuciones derivadas de Debian (Como Ubuntu) el comando especial es `apt-get`, en Red Hat es `yum` y en ArchLinux es `pacman`. Cada distribución tiene su comando especial y debes averiguar cómo funciona para poder instalar Git.

Antes de hacer la instalación, debemos hacer una actualización del sistema. En nuestro caso, los comandos para hacerlo son:

> sudo apt-get update
>
> sudo apt-get upgrade

Con el sistema actualizado, ahora sí podemos instalar Git y, en este caso, el comando para hacerlo es:

> sudo apt-get install git

También puedes verificar que Git fue instalado correctamente con el comando:

> git --version

## EDITORES DE CÓDIGO, ARCHIVOS BINARIOS Y DE TEXTO PLANO

Un editor de código es una herramienta que nos brinda mucha ayuda al escribir código, algo así como un bloc de notas muy avanzado. Los editores más populares son VS Code, Sublime Text y Atom.

**Tipos de archivos y sus diferencias**:

- **Archivos de Texto (.txt)**: Texto plano normal y sin nada especial. Lo vemos igual sin importan dónde lo abramos, ya sea en el bloc de notas o con editores de texto avanzados.
- **Archivos RTF (.rtf)**: Podemos guardar texto con diferentes tamaños, estilos y colores. Pero si lo abrimos desde un editor de código, vamos a ver que es mucho más complejo que solo el texto plano. Esto es porque debe guardar todos los estilos del texto y, para esto, usa un código especial, difícil de entender y muy diferente a los textos con estilos especiales al que estamos acostubrados.
- **Archivos de Word (.docx)**: Podemos guardar imágenes y texto con diferentes tamaños, estilos o colores. Al abrirlo desde un editor de código podemos ver que es código binario, muy difícil de entender y muy diferente al texto al que estamos acostumbrados. Esto es porque Word está optimizado para entender este código especial y representarlo gráficamente.

Recuerda habilitar la opción de ver la extensión de los archivos, de lo contrario, solo podrás ver su nombre. La forma de hacerlo en Windows es Vista --> Mostrar u Ocultar --> Extensiones de nombre de archivo.

## INTRODUCCIÓN A LA TERMINAL Y LÍNA DE COMANDOS

Diferencias entre la estructura de archivos de Windows, Mac o Linux:

- La ruta principal en Windows es `C:\`, en UNIX es solo `/`.
- Windows no hace diferencia entre mayúsculas y minúsculas pero en UNIX sí.

Recuerda que GitBash usa la ruta `/c`para dirigirse a `c:\` (o `/d` para dirigirse a `D:\` ) en Windos. Por lo tanto, la ruta del usuario con el que estás trabajando es `/c/Users/<nombre-de-tu-usuario>`.

Comandos básicos en la terminal:

- **pwd**: Nos muestra la ruta de carpetas en la que estamos posicionados.
- **mkdir**: Nos permite crear carpetas. Por ejemplo: `mkdir Carpeta-Importante`
- **touch**: Nos permite crear archivos. Por ejemplo: `touch archivo.txt`
- **rm**: Nos permite borar un archivo o carpeta. Por ejemplo: `rm archivo.txt`
- **cat**: Nos permite ver el contenido de un archivo. Por ejemplo: `cat archivo.txt`
- **ls**: Nos permite ver los archivos de una carpeta. Podemos usar uno o más argumentos para ver más información sobre estos archivos.
  - **ls -a**: Mostrar todos los archivos, incluso los ocultos.
  - **ls -l**: Ver todos los archivos como una lista.
- **cd**: Nos permite navegar entre carpetas.
  - **cd /**: Ir a la ruta principal.
  - **cd o cd ~**: Ir a la ruta del usuario.
  - **cd carpeta/subcarpeta**: Navegar a una ruta dentro de la carpeta en que estamos ubicados.
  - **cd ..**: Regresar a una carpeta hacia atrás. Para referirnos a la carpeta en la que estamos ubicados se puede utilizar `.`
- **history**: Nos permite ver los últimos comandos que hemos ejecutado y un número especial con el que podemos repetir su ejecución.
- **!+número**: Nos permite ejecutar algún comando con el número que nos muestra el comando history. Por ejemplo: `!72`.
- **clear**: Para limpiar la terminal. También se puede usar Ctrl + L o Command + L.

Todos estos comandos tienen una función de autocompletado, o sea, puedes escribir la primera parte y presionar la tecla Tab para que la terminal nos muestre todas las posibles carpetas o comandos que podemos ejecutar. Si presionas la tecla Arriba puedes ver el último comando que ejecutamos.

Recuerda que podemos descubrir todos los argumentos de un comando con el argumento `--help` (por ejemplo: `cat --help`).

# COMANDOS BÁSICOS EN GIT

## ¿QUÉ ES STAGING, REPOSITORIOS Y CUÁL ES EL CICLO BÁSICO DE TRABAJO EN GITHUB?

Para inicar un repositorio, o sea, activar el sistema de control de versiones de Git en tu proyecto, solo debe ejecutar el comando: `git init`.

Este comando se encargará de dos cosas: primero, crea una carpeta .get donde se guardara toda la base de datos con cambios atómicos de nuestro proyecto; y segundo, crear un área en la memoria RAM, que conocemos como Staging, que guardará temporalmente nuestros archivos (cuando ejecutemos un comando especial para eso) y nos permitirá, más adelante, guardar estos cambios en el repositorio (también con un comando especial).

**Ciclo de vida o estados de los archivos en Git**:

Cuando trabajamos con Git, nuestros archivos pueden vivir y moverse por 4 diferentes estados (cuando trabajamos con repositorios remotos pueden ser más estados):

- **Tracked**: Son los archivos que viven dentro de Git, no tienen cambios pendientes y sus últimas actualizaciones han sido guardadas en el repositorio gracias a los comandos: `git add` y `git commit`.
- **Staged**: Son archivos en Staging. Viven dentro de Git y hay registro de ellos porque han sido afectados por el comando: `git add`. Aunque no sus últimos cambios. Git ya sabe de la exsitencia de estos últimos cambios pero todavía no han sido guardados definitivamente en el repositorio porque falta ejecutar el comando `git commit`.
- **Unstaged**: Entiendelos como archivos "Tracked pero Unstaged". Son archivos que viven dentro de Git pero **no** han sido afectdos por el comando `git add`. **Ni** por el comando `git commit`. Git tiene un registro de estos archivos pero está desactualizado, sus últimas versiones solo están guardadas en el disco duro.
- **Untracked**: Son archivos que **NO** viven dentro de Git, solo en el disco duro. Nunca han sido afectados por git add, así que Git no tiene registro de su existencia.

**Comandos para mover archivos entre los estados de Git**:

- **git status**: Nos permite ver el estado de todos nuestros archivos y carpetas.
- **git add**: Nos ayuda a mover archivos de Untracked o Unstaged al estado Staged. Podemos usar: `git add nombre-del-archivo-o-carpeta` para añadir archivos y carpetas individuales o `git add -A` para mover todos los archivos de nuestro proyecto (tanto Untracked como Unstaged).
- **git reset HEAD**: Nos ayuda a sacar archivos del estado Staged para devolverlos a su estado anterior. Si los archivos venían de Unstaged vuelven allí. Y lo mismo si venían de Untracked.
- **git commit**: Nos ayuda a mover archivos de Staged a Tracked. Esta es una ocasión especial, los archivos han sido guardados o actualizados en el repositorio. Git nos pedirá que dejemos un mensaje para recordar los cambios que hicimos y podemos usar el argumento -m para escribirlo : `git commit -m "mensaje"`.
- **git rm**: Este comando necesita alguno de los siguientes argumentos para poder ejecutarse correctamente:
  - **git rm --cached**: Mueve los archivos que le indiquemos al estado Untracked.
  - **git rm --force**: Elimina los archivos de Git y del disco duro. Git guarda el registro de la existencia de los archivos, por lo que podremos recuperarlos si es necesario (pero debemos usar comandos más avanzados).

## ¿QUÉ ES UN BRANCH (RAMA) Y CÓMO FUNCIONA UN MERGE EN GIT?

    Master--------v1---v2---v3------- commit --------- v_actual  v_actual+1 v_f
                            |                             |         |        |
    Experimentos (Dev)      v1-----v2-----v3--------------|-------merge-------
                                                          |         |
    Bugfixing                                             v1--------v2
    Hotfix

Git es una base de datos muy precisa con todos los cambios y crecimiento que ha tenido nuestro proyecto. Los commits son la única forma de tener un registro de los cambios. Pero las ramas amplifican mucho más el potencial de Git.

Todos los commits se aplican sobre una rama. Por defecto, siempre empezamos en la rama master (pero puedes cambiarle el nombre si no te gusta) y creamos nuevas ramas, a partir de esta, para crear flujos de trabajo independientes.

Crear una nueva rama se trata de copiar un commit (de cualquier rama), pasarlo a otro lado (a otra rama) y continuar el trabajo de una parte específica de nuestro proyecto sin afectar el flujo de trabajo principal (que continúa en la rama master o la rama principal).

Los equipos de desarrollo tienen un estándar: Todo lo que esté en la rama master va a producción, la nuevas features, características y experimientos van en una rama "development" (para unirse a master cuando estén definitivamente listas) y los issues o errores se solucionan en una rama "hotfix" para unirse a master tan pronto como sea posible.

Crear una rama lo conocemos como Checkout. Unir dos ramas lo conocemos com merge.

Podemos crear todas las ramas y commits que queramos. De hecho, podemos aprovechar el registro de cambios de Git para crear ramas, traer versiones viejas de código, arreglarlas y combinarlas de nuevo para mejorar el proyecto.

Solo ten en cuenta que combinar estas ramas (sí, hacer "merge") puede generar conflictos. Algunos archivos pueden ser diferentes en ambas ramas. Git es muy inteligente y puede intentar unir estos cambios automáticamente, pero no siempre funciona. En algunos casos, somos nosotros los que debemos resolver estos conflictos "a mano".

## CREA UN REPOSITORIO EN GIT Y HAZ TU PRIMER COMMIT

> git init
>
> code .
>
> git status
>
> git add historia.txt
>
> git status
>
> git rm --cached historia.txt
>
> git status
>
> git add historia.txt
>
> git status
>
> git config
>
> git config --list
>
> git config --list --show-origin
>
> git config --global user.name "Kasteion"
>
> git config --global user.email "kasteion@email.net"
>
> git commit -m "Este es el primer commit de este archivo"
>
> git add historia.txt
>
> git commit -m " Este es el segundo commit de este archivo"
>
> git log historia.txt

Le indicaremos a Git que queremos crear un nuevo repositorio para utilizar su sistema de control de versiones. Solo debemos posicionarnos en la carpeta raíz de nuestro proyecto y ejecutar el comando `git init`.

Recuerda que al ejecutar este comando (y de aquí en adelante) vamos a tener una nueva carpeta oculta llamada .git con toda la base de datos con cambios atómicos en nuestro proyecto.

Recuerda que Git está optimizado para trabajar en equipo, por lo tanto, debemos darle un poco de información sobre nosotros. No debemos hacerlo todas las veces que ejecutamos un comando, basta con ejecutar solo una vez los siguentes comandos con tu información:

`git config --global user.name "Tu Nombre"`

`git config --global user.email "tu@email.com"`

Existen muchas otras configuraciones de Git que puedes encontrar ejecutando el comando:

`git config --list`

O solo git config para ver una explicación más detallada.

## ANALIZAR CAMBIOS EN LOS ARCHIVOS DE TU PROYECTO CON GIT

> git show historia.txt
>
> code historia.txt
>
> git add .
>
> git commit
>
> git log historia.txt
>
> git diff <código del commit> <código del commit>

El comando git show nos muestra los cambios que han existido sobre un archivo y es muy útil para detectar cuándo se produjeron ciertos cambios qué se rompió y cómo lo podemos solucionar. Pero podemos ser más detallados.

Si queremos ver la diferencia entre una versión y otra, no necesariamente todos los cambios desde la creación del archivo utilizando el comando: `git diff commitA commitB`.

Recuerda que puedes obtener el ID de tus commits con el comando git log.

## VOLVER EN EL TIEMPO EN NUESTRO REPOSITORIO UTILIZANDO BRANCHES Y CHECKOUT

El comando `git checkout <id-del-commit>` nos permite viajar en el tiempo. Podemos volver a cualquier versión anterior de un archivo específico o incluso del proyecto entero. Esta también es la forma de crear ramas y movernos entre ellas.

También hay una forma de hacerlo un poco más "ruda": usando el comando `git reset`. En este caso no solo "volvemos en el tiempo", sino que borramos los cambios que hicimos después de este commit.

Hay dos formas de usar `git reset`: Con el argumento --hard, borrando toda la información que tengamos en el área de staging (y perdiendo todo para siempre). O, un poco más seguro, con el argumento --soft, que mantiene allí los archivos del área de staging para que podamos aplicar nuestros últimos cambios pero desde un commit anterior.

> git reset d6a96ece126bf016fa80be37b6038a1d7977f48c --hard
>
> git checkout 3d3922aa603c442efd9fd1b66d3a4c50dea750c5 historia.txt
>
> git checkout master historia.txt
>
> git log --stat

## GIT RESET VS GIT RM

`git reset` y `git rm` son comandos con utilidades muy diferentes pero aún así se confunden.

**git rm**:

Este comando nos ayuda a eliminar archivos de Git sin eliminar su historial del sistema de versiones. Esto quiere decir que si necesitamos recuperar el archivo solo debemos "viajar en el tiempo" y recuperar el último commit antes de borrar el archivo en cuestión.

Recuerda que `git rm` no puede usarse así nomás. Debemos usar uno de los flags para indicarle a Git cómo eliminar los archivos que ya no necesitamos en la última versión del proyecto:

- **git rm --cached**: Elimina los archivos del área de Staging y del próximo commit pero los mantiene en nuestro disco duro.
- **git rm --force**: Elimina los archivos de Git y del disco duro. Git siempre guarda todo, por lo que podemos acceder al registro de la existencia de los archivos, de modo que podremos recuperarlos si es necesario (pero debemos usar comandos más avanzados).

**git reset**:

Este comando nos ayuda a volver en el tiempo. Pero no como `git checkout` que nos deja ir, mirar, pasear y volver. Con git reset volvemos al pasado sin la posibilidad de volver al futuro. Borramos la historia y la debemos sobreescribir. No hay vuelta atras.

Este comando es muy peligroso y debemos usarlo solo en caso de emergencia. Recuerda que debemos usar alguna de estas dos opciones:

- **git reset --soft**: Borramos todo el historial y los registros de Git pero guardamos los cambios que tengamos en Staging, así podemos aplicar las últimas actualizaciones a un nuevo commit.

- **git reset --hard**: Borra todo. Toma la información de los commits y del área de staging y la borra del historial.

¡Pero todavía falta algo!

- **git reset HEAD**: Este es el comando para sacar archivos del área de Staging. No para borrarlos ni nada de eso, solo para que los últimos cambios de estos archivos no se envíen al último commit, a menos que cambiemos de opinión y los incluyamos de nuevo en staging con `git add`, por supuesto.

**¿Por qué esto es importante?**

Imagina el siguiente caso:

Hacemos cambios en los archivos de un proyecto para una nueva actualización. Todos los archivos con cambios se mueven al área de staging con el commando `git add`. Pero te das cuenta de que uno de esos archivos no está listo todavía. Actualizaste el archivo pero ese cambio no debe ir en el próximo commit por ahora.

¿Que podemos hacer?

Bueno, todos los cambios están en el área de Staging, incluído el archivo con los cambios que no están listos. Esto significa que debemos sacar ese archivo de Staging para poder hacer commit de todos los demás.

¡Al usar `git rm` lo que haremos será eliminar este archivo completamente de git! Todavía tendremos el historial de cambios de este archivo, con la eliminación del archivo como su última actualización. Recuerda que en este caso no buscábamos eliminar un archivo, solo dejarlo como estaba y actualizarlo después, no en este commit.

En cambio, si usamos `git reset HEAD`, lo único que haremos será mover estos cambios de Staging a Unstaged. Seguiremos teniendo los últimos cambios del archivo, el repositorio mantendrá el archivo (no con sus últimos cambios pero sí con los últimos en los que hicimos commit) y no habremos perdido nada.

Conclusión: Lo mejor que puedes hacer para salvar tu puesto y evitar un incendio en tu trabajao es conocer muy bien la diferencia y los riesgos de los comandos de Git.

# FLUJO DE TRABAJO BÁSICO EN GIT

                                                         -------------
                                                        |             |
                                                        | Repositorio |
                                                        | Remoto      |
                                                         -------------
    ------------     ------------    -------------
    |            |   |            |  |             |
    | Directorio |   |Preparación |  | Repositorio |
    | de trabajo |   |o staging   |  | Local       |
    ------------     ------------    -------------

Por ahora, nuestro proyecto vive únicamente en nuestra computadora. Esto significa que no hay forma de que otros miembros del equipo trabajen en el.

Para solucionar esto están los servidores remotos: un nuevo estado que deben seguir nuestros archivos para conectarse y trabajar con equipos de cualquier parte del mundo.

Estos servidores remotos pueden estar alojados en GitHub, GitLab, BitBucket, entre otros. Lo que van a hacer es guardar el mismo repositorio que tienes en tu computadora y darnos una URL con la que todos podremos acceder a los archivos del proyecto para descargarlos, hacer cambios y volverlos a enviar al servidor remoto para que otras personas vean los cambios, comparen sus veriones y creen nuevas propuestas para el proyecto.

Esto significa que debes aprender algunos nuevos comandos:
- **git clone url-del-servidor-remoto**: Nos permite descargar los archivos de la última versión de la rama principal y todo el historial de cambios de la carpeta ping.
- **git push**: Luego de hacer `git add` y `git commit` debemos ejecutar este comando para mandar los cambios al servidor remoto.
- **git fetch**: Lo usamos para tener actualizaciones del servidor remoto y guardarlas en nuestro repositorio local (en caso de que hayan, por supuesto).
- **git merge**: También usamos el comando `git fetch` con servidores remotos. Lo que necesitamos para combinar los últimos cambios del servidor remoto y nuestro directorio de trabajo.
- **git pull**: Básicamente, git fetch y git merge al mismo tiempo.

## FLUJO DE TRABAJO BÁSICO CON UN REPOSITORIO REMOTO

Al principio hay una rama que se llama Master. Es la rama principal. Las ramas son las formas en las que podemos hacer cambios sin cambiar la principal rama. Esto porque queremos trabajar una parte muy específica de la aplicación o simplemente experimentar.

> git commit -am "Mensaje"
>
> git show
>
> git branch cabecera
>
> git checkout cabecera
>
> git checkout master

La cabecera o HEAD representan la rama y el commit de esa rama donde estamos trabajando. Por defecto, esta cabecera aparecerá en el último commit de nuestra rama principal. Pero podemos cambiarlo al crear una rama (`git branch rama`, `git checkout -b rama`) o movernos en el tiempo a caulquier otro comit de cualquier otra rama con los comandos (`git reset id_commit`, `git checkout rama-o-id-commit`).

## FUSIÓN DE RAMAS CON GIT MERGE

El comando `git merge` nos permite crear un nuevo commit con la combinación de dos ramas (la rama donde nos encontramos cuando ejecutamos el comando y la rama que indiquemos después del comando).

Crear un nuevo commit en la rama master combinando los cambios de la rama cabecera:

> git checkout master
>
> git merge cabecera

Crear un nuevo commit en la rama cabecera combinando los cambios de cualquier otra rama:

> git checkout cabecera
>
> git merge calquier-otra-rama

`git branch` para ver en que rama estamos y que ramas existen.

## SOLUCIÓN DE CONFLICTOS AL HACER UN MERGE

Git nunca borra nada a menos que nosotros se lo indiquemos. Cuando usamos los comandos `git merge` o `git checkout` estamos cambiando de ramas o creando un nuevo commit, no borrando ramas ni commits (recuerda que puedes borrar commits con `git reset` y ramas con `git branch -d`).

Git es muy inteligente y puede resolver algunos conflictos automáticamente: cambios, nuevas líneas, entre otros. Pero algunas veces no sabe cómo resolver estas diferencias, por ejemplo, cuando dos ramas diferentes hacen cambios distintos a la misma línea.

Esto lo conocemos como conflicto y lo podemos resolver manualmente, solo debemos hacer el merge, ir a nuestro editor de código y elegir si queremos quedarnos con alguna de estas dos versiones o algo diferente. Algunos editores de código como VS Code nos ayudan a resolver estos conflictos sin necesidad de borrar o escribir líneas de texto, basta con hundir el botón y guardar el archivo.

Recuerda que siempre debemos crear un nuevo commit para aplicar los cambios del merge. Si it puede resolver el conlicto hará el commit automáticamente. Pero, en caso de que no pueda resolverlo, debemos solucionarlo y hacer el commit.

Los archivos con conflictos por el comando git merge entran en un nuevo estado que conocemos como Unmerged. Funciona muy parecido a los archivos en estado Unstaged, algo así como un estado intermedio entre Untracked y Unstaged, solo debemos ejecutar `git add` para pasarlos al area de staging y `git commit` para aplicar los cambios en el repositorio.

## USO DE GITHUB

GitHub es un sitio web que tiene por dentro un super servidor de Git en el que cualquiera de nosotros puede clonar su repositorio o crearlo y compartirlo con otras personas de forma que no este solo yo creando mi propio código.

También es una especie de interfaz visual de mis repositorios para no tener que vivr en la consola todo el tiempo. Es una de las herramientas colaborativas más importantes que existe en el mundo del código, tanto que es conocida como la red social de los programadores.

Primero crearmos un nuevo repositorio de GitHub, Clone o Download nos dá la url para clonar el repo.

Para agregar el origen remoto: `git remote add origin url`

Para ver el remote origin: `git remote` o `git remote -v`

Para enviar el remote repo: `git push origin master` (Da un error en este orden).

Para traer desde el origen: `git pull origin master` o `git pull origin master --allow-unrelated-histories`

Para borrar un origen remoto: `git remote rm origin`

Cuando ya existe un proyecto y lo que queremos hacer es colaborar con el hay que hacer un `git clone url`

## ¿COMO FUNCIONAN LAS LLAVES PÚBLICAS Y PRIVADAS?

El algoritmo de llaves públicas y llaves privadas es también conocido como cifrado asimetrico de un solo camino.

Las llaves públicas y privadas nos ayudan a cifrar y descifrar nuestros archivos de forma que los podamos compartir sin correr el reisgo de que sean interceptados por personas con malas intenciones.

La forma de hacerlo es la siguiente:

1. Ambas personas deben crear su llave pública y privada.
2. Ambas personas pueden compartir su llave pública a las otras partes (recuerda que esta llave es pública, no hay problema si la "interceptan").
3. La persona que quiere compartir un mensaje puede usar la llave pública de la otra persona para cifrar los archivos y asegurarse que solo puedan ser descifrados con la llave privada de la persona con la que queremos compartir el mensaje.
4. El mensaje está cifrado y puede ser enviado a la otra persona sin problemas en caso de que los archivos sean interceptados.
5. La persona a la que enviamos el mensaje cifrado puede usar su llave privada para descifrar el mensaje y ver los archivos.

Puedes compartir tu llave pública pero nunca tu llave privada.

## CONFIGURA TUS LLAVES SSH EN LOCAL

La seguridad es más fuerte por ssh que por https. Esto porque en https me pide mis credenciales, que se almacenan en mi entorno local, que si me roban la computadora pueden crackear los passwords que el sistema operativo almacenó.

Básicamente hago una conexión a github enviandole mi llave públic. GitHub detecta que le envie mi llave pública y procede a enviarme su llave pública encirptada con mi llave pública. Entonces se hizo crrectamente el intercambio de llaves. Para hacer las cosas más seguras puedo colocarle una contraseña a mi llave para que sea más potente. Y para hacer las cosas todavía más seguras debería estar encriptando mi disco duro.

Las llaves son por persona...

Así que hay que hacer unos pequeños cambios a las configuraciones.

> cd ~
>
> git config --global user.email "your@email.com"

1. Generar tus llaves SSH. Recuerda que es muy buena idea proteger tu llave privada con una contraseña.

> ssh-keygen -t rsa -b 4096 -C "your@email.com"

2. Terminar de configurar nuestro sistema.

**En Windows y Linux**:

- Encender el "servidor" de llaves SSH de tu computadora: `eval $(ssh-agent -s)`

- Añadir tu llave SSH a este "servidor": `ssh-add ruta-donde-guardaste-tu-llave-privada` (que sería: `ssh-add ~/.ssh/id_rsa`)

**En Mac**:

- Encender el "servidor" de llaves SSH de tu computadora: `eval $(ssh-agent -s)`

- Si usas una versión de OSX superior a Mac OS Sierra (v10.12) debes crear o modificar una archivo "config" en la carpeta de tu usuario con el siguiente contenido (ten cuidado con las mayúsculas):

    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_rsa

- Añadir tu llave SSH al "servidor" de llaves SSH de tu computadora (en caso de error puedes ejecutar este mismo comando pero sin el argumento -K): `ssh-add -K ~/.ssh/id_rsa`

## CONEXIÓN A GITHUB CON SSH

Luego de crear nuestras llaves SSH podemos entregarle la llave pública a GitHub para comunicarnos de forma segura y sin necesidad de escribir nuestro usuario y contraseña todo el tiempo.

Para esto debes entrar a la configuración de llaves SSH en GitHub, crear una nueva llave con el nombre que le quieras dar y el contenido de la llave pública de tu computadora.

Ahora podemos actualizar la URL que guardamos en nuestro repositorio remoto, solo que, en vez de guardar la URL con HTTPS, vamos a usar la URL con SSH:

> git remote set-usr origin url-ssh-del-repositorio-en-github
>
> git remote -v
>
> git remote set-url origin git@github.com:kasteion/hyperblog.git
>
> git remote -v
>
> git pull
>
> git pull origin master
>
> git status
>
> git commit -am "Una versión del Hyperblog"
>
> git pull origin master
>
> git push origin master

## TAGS Y VERSIONES EN GIT Y GITHUB

> git log --all --graph --decorate --oneline
>
> alias arbol = "git log --all --graph --decorate --oneline"

Lo tags nos permite asignar versiones a los commits con cambios más importantes o significativos de nuestro proyecto. Son muy útiles en GitHub.

> git tab -a v0.1 -m "Resultado de las primeras clases del curso" 6791924
>
> git tag
>
> git show-ref --tags
>
> git pull origin master
>
> git push origin --tags
>
> git tag -a dormido -m "Un mensaje" 7cc1847
>
> git tag -d dormido
>
> git push hyperblog :refs/tags/dormido

Comandos para trabajar con etiquetas:
- Crear un nuevo tag y asignarlo a un commit: `git tag --a nombre-del-tag id-del-commit`
- Borrar un tag en el repositorio local: `git tag -d nombre-del-tag`
- Listar los tags de nuestro repositorio local: `git tag` y `git show-refs --tags`
- Publicar un tag en el repositorio remoto: `git push origin --tags`
- Borrar un tag del reposito remoto: `git tag -d nombre-del-tag` y `git push origin :ref/tags/nombre-del-tag`

## MANEJO DE RAMAS EN GITHUB

Puedes trabajar con ramas que nunca envías a GitHub, así como pueden haber ramas importantes en GitHub que nunca usas en el repositorio local. Lo importante es aprender a manejarlas para trabajar profesionalmente:
- Crear una rama en el repositorio local: `git branch nombre-de-la-rama` o `git checkout -b nombre-de-la-rama`.
- Publicar una rama local al repositorio remoto: `git push origin nombre-de-la-rama`

Recuerda que podemos ver gráficamente nuestro entorno y flujo de trabajo local con Git usando el comando `gitk`.

> git show-branch
>
> git show-branch --all
>
> gitk
>
> git pull origin master
>
> git checkout cabecera
>
> git push origin cabecera
>
> git checkout master
>
> git branch header
>
> git branch footer
>
> git push origin header
>
> git push origin footer

## CONFIGURAR MÚLTIPLES COLABORADORES EN UN REPOSITORIO DE GITHUB

En GitHub:
- Settings del repositorio --> Manage Access --> Invite a Cllaborator.

# FLUJOS DE TRABAJO PROFESIONALES

## FLUJO DE TRABAJO PROFESIONAL: HACIENDO MERGE DE RAMAS DE DESARROLLO A MASTER

Una imagen es un archivo binario. Las mejores prácticas dicen que los archivos binarios no se deberían agregar a repositorios. Deberían estar aparte y ser ignorados.

> git checkout header
>
> git add imagenes/dragon.png
>
> git commit -am "Logo del header"
>
> git pull hyperblog header
>
> git push hyperblog header

De que se pueden agregar se puede pero el problema es que los archivos binarios son particularmente más pesados que los archivos de texto. Y git no puede percibir sus cambios individuales sino que percibe cualquier cambio como un cambio total del archivo. Y al momento de hacer el push siempre hay que enviar el archivo completo.

**Colaborador**:

> git pull origin footer
>
> git checkout footer
>
> git branch
>
> (Hago cambios)
>
> git pull origin footer
>
> git push origin footer

Es trabajo del jefe fusionar el código (Product Owner, Product Manager, CTO, Líder de Proyecto, para verificar el código).

> git pull origin footer
>
> git checkout master
>
> git merge header
>
> git checkout master
>
> git pull origin master
>
> git push origin master

## FLUJO DE TRABAJO PROFESIONAL CON PULL REQUEST

En un entorno profesional normalmente se bloquea la rama master, y para enviar código a dicha pasa por un code review y luego de su aprobación se unen código con los llamados merge request.

Para realizar pruebas enviamos el código a servidores que normalmente los llamamos staging develop (Servidores de pruebas) luego de que se realizan las pruebas pertinentes tanto de código como de la aplicación estos pasan a el servidor de producción con el ya antes mencionado merge request.

Pull Request es un estado intermedio antes de enviar el merge. Otros miembros del equipo pueden revisar los cambios y si les gustan aprobarlos. Entonces ya se pueden fusionar los cambios con la rama staging. Luego se hace una Pull Request a la rama Maestra.

- **GitHub**: Pull Request.
- **GitLab**: Merge Request.
- **BitBucket**: Push Request.

## UTILIZANDO PULL REQUEST EN GITHUB

> git pull origin master
>
> git branch fix-typo
>
> git branch
>
> git checkout fix-typo
>
> code git.html --> (Hago cambios)
>
> git status
>
> git diff
>
> git push origin fix-typo

Desde GitHub

- Branch master: `New Pull Request` o `Compare & Pull Request`.

## CREANDO UN FORK, CONTRIBUYENDO A UN REPOSITORIO

Se hace en Github el fork y crea una copia a mi perfil como que fuera mi repositorio.

> git clone https://github.com/kasteion/hyperblog-1.git
>
> git remote -v
>
> git remote add upstream https://github.com/freddier/hyperblog.git
>
> git pull upstream master
>
> git push origin master

## HACIENDO DEPLOYMENT A UN SERVIDOR

Digamos que queremos publicar nuestra aplicación a un servidor que tenemos con un web server instalado.

Nos logeamos al servidor y vamos a la ruta donde está publicada la aplicación y ejecutamos: `git clone github-url`

Esta no es una buena práctica pues copiamos el .git y a eso puede la gente tener acceso. Pero en el proceso de devops hay que proteger el .git

## INORAR ARCHIVOS EN EL REPOSITORIO CON .GITIGNORE

No todos los archivos que agregas a un proyecto deberían ir a un repositorio, por ejemplo: cuando tienes un archivo donde están tus contraseñas que comunmente tienen la extensión .env o cuando te estás conectando a una base de datos; son archivos que nadie debe ver... También es una buena práctica no incluir archivos binarios al proyecto.

Creamos un nuevo archivo que tiene que llamarse `.gitingore`

Es una lista de los archivos que vamos a ignorar.

Contenido de `.gitignore`

    *. jpg

  Ejecutamos: `git add .gitingore`

  Las imágenes no se agregan porque no son código. Las imagenes deberían ir en un CDN.

  > git commit -am "gitignore"
  >
  > git pull origin master
  >
  > git push origin master

## README.MD ES UNA EXCELENTE PRÁCTICA

README.md es un excelente práctica en tus proyectos, md significa Markdown. Es una especie de código que te permite cambiar la manera en que se visualiza un archivo de texto.

Lo interesante de markdown es que funciona en muchas páginas, por ejemplo la edición en Wikipedia; es un lenguaje intermedio que no es HTML, no es texto plano, es una manera de crar excelentes textos formateados.

## TU SITO WEB PÚBLICO CON GITHUB PAGES

GitHub tiene un servicio de hosting gratis llamado GitHub Pages, tu puedes tener un repositorio donde el contenido del repositorio se vaya a GitHub y se vea online.

https://pages.github.com

Crear un repositorio público que tenga mi nombre de usuario.

# MULTIPLES ENTORNOS DE TRABAJO

## GIT REBASE: REORGANIZANDO EL TRABAJO REALIZADO

              ------*-------*-----
    bugfix  /                      \
    master----*-------*-------*-------*-------*-------*-------*-------*

Ester sería el ciclo normal, el rebase es como cuando no quieres hacer un merge. No quieres que se sepa que hubo un bug y no quieres que se sepa de la rama bugfix. Sino que queres integrar el bufix a la historia de master como que siempre hubiera sido en master que se trabajo y no hubiera existido la necesidad de hacer una rama bugfix y hacer el merge.

Esta es una muy mala práctica si lo enviamos a un repositorio remoto. Los repositorios remotos deberían mantener la historia intacta.

1. Cambiamos a la rama que queremos traer los cambios: `git checkout experimento`
2. Aplicamos rebase para traer los cambios de la rama que queremos: `git rebase master`
3. Luego hay que ir a la rama master: `git checkout master`
4. Aplicamos rebase a la rama: `git rebase experimento`
5. Borramos la rama experimento: `git branch -D experimento`

Un rebase es una forma de hacer cambios silenciosos en otra rama y luego pegar la historia de esa rama a una rama anterior haciendo rebase.

El problema es que no queda historia, no se sabe quien hizo que y en ocasiones si la rama master avanzo mucho puede crear un reguero de conflictos que toca solucionarlos de forma manual.

## GIT STASH: GUARDAR CAMBIOS EN MEMORIA Y RECUPERARLOS DESPUÉS

Cuando necesitamos regresar en el tiempo porque borramos alguna línea de código pero no queremos pasarnos a otra rama porque nos daría un error ya que debemos pasar ese "mal cambio" que hicimos a stage, podemos usar `git stash` para regresar el cambio anterior que hicimos.

`git stash` es típico cuando hacemos cambios que no merecen una rama o no merecen un rebase si no simplemente estamos probando algo y luego quieres volver rápidamente a tu versión anterior la cual es correcta.

Hago un cambio y no le hago checkout y quiero dambiar de branch

> git checkou footer --> da un error
>
> git stash
>
> git checkout footer
>
> git checkout master
>
> git checkout pop

Para soltar los cambios en una rama nueva:
> git stash
>
> git stash branch english-version

También si tengo un montón de basura en mi código y se arruino todo, el `git stash` me regresará al commit anterior:
> git stash
>
> git stash list
>
> git stash drop --> para borrarlo
>
> git stash list

## GIT CLEAN: LIMPIAR TU PROYECTO DE ARCHIVOS NO DESEADOS

A veces creamos archivos cuando estamos realizando nuestro proyecto que realmente no forman parte de nuestro directorio de trabajo, que no se deberían agregar y lo sabemos.

- Para saber qué archivos vamos a borrar tecleamos: `git clean --dry-run`
- Para borrar todos los archivos listados (que no son carpetas) tecleamos `git clean -f`

## GIT CHERRY-PICK: TRAER COMMITS VIEJOS AL HEAD DE UN BRANCH

Existe un mundo alternativo en el cual vamos avanzando en una rama pero necesitamos en master uno de esos avances de la rama, para eso utilizamos el comando `git cherry-pick IDCommit`

`cherry-pick` es una mala práctica porque significa que estamos recontruyendo la historia, usa `cherry-pick` con sabiduría. Si no sabes lo que estás haciendo ten mucho cuidado.

> git checkout readme-mejorado
>
> git log --oneline
>
> (Veo que commit tengo que agarrar)
>
> git checkout master
>
> git cherry-pick 6652a48

# COMANDOS EN GIT PARA CASOS DE EMERGENCIA

## RECONSTRUIR COMMITS EN GIT CON AMEND

A veces hacemos un commit, pero resuta que no no queríamos mandarlo porque faltaba algo más.

Hice un cambio y le dí commit pero me faltaba hacerle otro cambio extra y lo quiero agregar al mismo commit.

> git add css/styles.css
>
> git commit --amend

## GIT RESET Y REFLOG: ÚSESE EN CASO DE EMERGENCIA

¿Que pasa cuando todo se rompe y no sabemos qué está pasando? Con git reset hash-del-head nos devolveremos al estado en que el proyecto funcionaba.

- `git reset --soft HASH-DEL-HEAD`: Te mantiene lo que tengas en staging.
- `git reset --hard HASH-DEL-HEAD`: Resetea absolutamente todo incluyendo lo que tengas en staging.

`git reset` es una mala práctica, no deberías usarlo en ningún momento; debe ser nuestro último recurso.

> git reflog (Con este comando se ve todo)
>
> git reset --hard 73f793e

## BUSCA EN ARCHIVOS Y COMMITS DE GIT CON GREP Y LOG

A medida que nuestro proyecto se hace grande vamos a querer buscar ciertas cosas. Por ejemplo: ¿Cuántas veces en nuestro proyecto utilizamos la palabra color? Para buscar utilizamos el comando `git grep color` y nos buscará en todo el proyecto los archivos donde está la palabra color.

- Con `git grep -n color` nos saldrá un output el cual nos dirá en que linea está lo que estamos buscando.
- Con `git grep -c color` nos saldrá un output el cual nos dirá cuántas veces se repite esa palabra y en qué archivo.
- Si queremos buscar cuántas veces utilizamos un atributo de HTML lo hacemos con un `git grep -c "<p>"`

Cuando lo que quiero buscar no está en el código sino en la historia de los commits utilizo: `git log -S "cabecera"`
# BONUS

## COMANDOS Y RECURSOS COLABORATIVOS EN GIT Y GITHUB

Hay alias internamente dentro de Git.

Un comando diseñado para ver cuantos commits ha realizado cada miembro del equipo:

> git shortlog
>
> git shortlog -sn
>
> git shortlog -sn --all
>
> `git shortlog -sn --all --no-merges`

Para crear un alias en la configuración de git:

> `git config --global alias.stats "shortlog -sn --all --no-merges"`
>
> (Entonces ya existe un comando llamado git stats)
>
> git stats

Para ver quien hizo que:

> git blame blogpost.html
>
> git blame -c blogpost.html
>
> git blame --help (Abre el navegador con el help)
>
> git blame -c css/styles.css -L35,53 (Para ver las lineas quién cambio el # de linea)

Ver las branches:

> git branch -r --> Muestra las ramas remotas
>
> git branch -a --> Muestra todas las ramas

En GitHub hay un panel de Insights muy interesante.