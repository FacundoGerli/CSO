#!/bin/bash

pila=()

pop() {
	if [ ${#pila[@]} -ne 0 ] ; then
    retorno=${pila[-1]}
    unset 'pila[${#pila[@]}-1]'
    echo "$retorno desapilado"
else 
	echo "No hay elementos en la pila"
	fi
}

push() {
    pila+=("$1")
    echo "$1 apilado"
}

length() {
    tamano=${#pila[@]}
}

select opcion in "pop" "push" "length" "print" "salir"; do
    case $opcion in
        "pop")
            pop
            ;;
        "push")
            echo "Ingrese un valor para push"
            read valor
            push "$valor"
            ;;
        "length")
            length
            echo "La longitud de la pila es $tamano"
            ;;
        "print")
            echo "La pila contiene: (${pila[@]})"
            ;;
        "salir")
            exit 0
            ;;
        *)
            echo "Opción no válida. Intente de nuevo."
            ;;
    esac
done
