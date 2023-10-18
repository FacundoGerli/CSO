#!/bin/bash

arregloA=(1 2 3 4 5)
arregloB=(6 7 8 9 10)

for ((i=0; i< ${#arregloA[@]}; i++)) ; do
	suma=$((${arregloA[i]} + ${arregloB[i]}))
	echo "La suma de los elementos en posicion $i es de $suma"
done
exit 0

