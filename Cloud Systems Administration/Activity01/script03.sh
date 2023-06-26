#!/bin/bash

# Imprimir el nombre del script que se está ejecutando
echo "Nombre del script: $0"

# Imprimir el número de argumentos pasados al script
echo "Número de argumentos: $#"

# Imprimir el primer y segundo argumento en la misma línea
echo "Primer argumento: $1   Segundo argumento: $2"

# Verificar si hay más de dos argumentos
if [ $# -gt 2 ]; then
    # Imprimir los argumentos a partir del tercero, cada uno en una línea
    echo "Argumentos a partir del tercero:"
    shift 2  # Descartar los dos primeros argumentos
    while [ $# -gt 0 ]; do
        echo "$1"
        shift
    done
fi
