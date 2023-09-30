#!/bin/bash

cadena="aja"

if [ $# -gt 0 ]; then
    echo "Seleccione qué acción desea realizar:"
    opcion=""
    select opcion in -a -b; do
        case $opcion in
            -a)
                for FILE in $(ls "$1"); do
                    mv "$1/$FILE" "$1/${FILE}cadena"
                done
                ;;
            -b)
                for FILE in $(ls "$1"); do
                    mv "$1/$FILE" "${1}cadena$FILE"
                done
                ;;
        esac
        break  # Salir del bucle select después de una selección
    done
else
    echo "No se recibió ningún argumento"
fi
exit 0
