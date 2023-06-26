#!/bin/bash

# Verificar si se proporciona un argumento
if [ $# -eq 0 ]; then
    echo "Debes proporcionar una ruta como argumento."
    exit 1
fi

ruta=$1

# Verificar si la ruta existe
if [ ! -e "$ruta" ]; then
    echo "La ruta especificada no existe."
    exit 1
fi

# Verificar si es un archivo normal
if [ -f "$ruta" ]; then
    echo "$ruta es un archivo normal."
# Verificar si es un directorio
elif [ -d "$ruta" ]; then
    echo "$ruta es un directorio."
# En caso contrario, mostrar mensaje de tipo de archivo desconocido
else
    echo "$ruta es otro tipo de archivo."
fi

# Ejecutar ls en formato largo
ls -l "$ruta"
