#!/bin/bash
# Programa para ejemplificar el paso de argumentos

#El primer argumento se almacena en la variable nombreCurso
nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El número de parámetros enviados es: $#"
echo "Los parámetros enviados son: $*"