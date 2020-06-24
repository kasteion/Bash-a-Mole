#!/bin/bash
# Este script es para firmar los archivos con gpg y moverlos, lo guardo como
# referencia tambien de como quitarle la quitalel parte del nombre al archivo.
# Aqui uso fil2=${fil%.gpg}
# Se puede usar var2=${var%.*} para eliminar todo desde el ultimo punto
# Se puede usar var2=${var%%.*} para quedarnos con todo hasta el primer punto
# Si quisieramos remover los ultimos cracteres var2=${var%????}

files=`find /tesoreria/citi/Salida/PAIN/Pendiente/*.pgp -type f -size +1000c`

for fil in $files
do
    gpg --local-user 62298BA6 --passphrase-file /.passf --sign  $fil
done

files=`find /tesoreria/citi/Salida/PAIN/Pendiente/*.gpg -type f -size +1000c`
for fil in $files
do
    fil2=${fil%.gpg}
    mv $fil2 /tesoreria/citi/Salida/PAIN/Procesado/
done