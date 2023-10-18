#!/bin/bash

iteracion=1
vacio=0
if [ $# -ne 0 ] ;then
	for (( i=1; i <=$#;i++)) ; do
		if (($iteracion % 2 != 0)); then
			if [ -f "${!i}" ]; then
				echo " La direccion es de un archivo"
			elif [ -d "${!i}" ]; then
				echo " La direccion es un directorio"
			else echo "La direccion no existe"
				((vacio += 1))
			fi
		fi
		 ((iteracion += 1))
	done
	echo "Se encontraron "$vacio" direcciones vacias"

else echo "No se encontraron parametros suficientes"
fi
