#!/bin/bash

# Verificar si se proporciona un argumento
if [ $# -eq 0 ]; then
    echo "Debes proporcionar un archivo como argumento."
    exit 1
fi

archivo=$1
extension="${archivo##*.}"  # Obtener la extensión del archivo

# Verificar si el archivo es un JPG
if [ "$extension" == "jpg" ]; then
    # Verificar si la carpeta ~/fotos existe, de lo contrario, crearla
    if [ ! -d "$HOME/fotos" ]; then
        mkdir "$HOME/fotos"
    fi
    # Copiar el archivo a la carpeta ~/fotos
    cp "$archivo" "$HOME/fotos"
    echo "El archivo $archivo ha sido copiado en ~/fotos."
else
    echo "El archivo $archivo no es un archivo JPG."
fi
