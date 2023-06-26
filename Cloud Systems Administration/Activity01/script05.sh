#!/bin/bash

# Obtener la fecha actual en formato año-mes-día
fecha=$(date +%Y%m%d)

# Iterar sobre los archivos con extensión JPG en el directorio actual
for archivo in *.jpg; do
    # Verificar si el archivo es un archivo regular
    if [ -f "$archivo" ]; then
        # Obtener el nombre base del archivo sin la extensión
        nombre_base=$(basename "$archivo" .jpg)
        
        # Construir el nuevo nombre del archivo con el prefijo de fecha
        nuevo_nombre="${fecha}-${nombre_base}.jpg"
        
        # Renombrar el archivo
        mv "$archivo" "$nuevo_nombre"
        
        echo "El archivo '$archivo' ha sido renombrado como '$nuevo_nombre'."
    fi
done
