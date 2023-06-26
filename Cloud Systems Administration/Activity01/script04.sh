#!/bin/bash

# Verificar si se proporcionan exactamente dos argumentos
if [ $# -ne 2 ]; then
    echo "El script debe recibir exactamente dos parámetros: archivo_origen y archivo_destino."
    exit 1
fi

archivo_origen=$1
archivo_destino=$2

# Verificar si el archivo de origen existe
if [ ! -f "$archivo_origen" ]; then
    echo "El archivo de origen '$archivo_origen' no existe."
    exit 1
fi

# Copiar el archivo de origen sobre el archivo de destino
cp "$archivo_origen" "$archivo_destino"

echo "El archivo '$archivo_origen' se ha copiado sobre '$archivo_destino' de manera exitosa."
