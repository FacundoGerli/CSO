#Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
#de elementos del arreglo puede variar). Implemente la función productoria dentro de este
#script, cuya tarea sea multiplicar todos los números del arreglo

num=(2 4 2)

# Inicializar el multiplicador (base) en 1
base=1

# Recorrer el arreglo num
for ((i=0; i < ${#num[@]}; i++)) ; do
    # Multiplicar el elemento actual del arreglo con el multiplicador (base)
    base=$((base * ${num[i]}))
done

echo "El resultado de la multiplicación es: $base"
