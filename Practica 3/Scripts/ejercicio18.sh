#!/bin/bash

# Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema
# (el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee,
# el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.

if [ $# -ne 1 ]; then
	echo "No se recibio un usuario"
	exit 1
else
	while [ $1 != "$(who | cut -d " " -f1 | grep $1)" ]; do
		echo "Esperando usuario..."
		sleep 10
	done
	echo "El usuario $1 se conecto correctamente"
fi
	exit 0
	
