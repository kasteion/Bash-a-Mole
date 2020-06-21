#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración while

numero=1

while [ $numero -ne 10  ]
do
    echo "Imprimiento $numero veces"
    numero=$(( numero+1 ))
done
fcastellon@ubuntu:~/ShellCourse$ cat 18_loopsanidados.sh
#!/bin/bash
# Programa para ejemplificar el uso de los loops anidados

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo: $fil _ $nombre"
    done
done