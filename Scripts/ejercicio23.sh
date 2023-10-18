#Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
#sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
#finalizar el recorrido

arreglo=(1 2 3 4 5 6)
impar=0
for ((i=0;i< ${#arreglo[@]} ;i++));
do
	if [ $(( ${arreglo[i]} % 2)) -ne 0 ]; then
		impar= $({arreglo[i]} + impar)
	else echo " ${arreglo[i]} "
	fi	
done
echo "La suma de impares es de $impar"
