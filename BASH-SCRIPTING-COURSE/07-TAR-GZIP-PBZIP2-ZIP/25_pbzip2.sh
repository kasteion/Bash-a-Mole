#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip2

echo "Empaquetar todos los scripts de la carpeta ShellCourse"
tar cvf shellcourse.tar *.sh
pbzip2 -f shellcourse.tar