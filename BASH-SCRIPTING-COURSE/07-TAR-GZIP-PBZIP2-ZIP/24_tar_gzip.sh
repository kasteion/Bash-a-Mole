#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar

echo "Empaquetar todos los scripts de la carpeta ShellCourse"
tar cvf shellcourse.tar *.sh

#cuando se empaqueta con gzip se borra el archivo a empaquetar
#gzip shellcourse.tar

echo "Empaquetar un solo archivo con un ratio 9"
gzip -9 shellcourse.tar