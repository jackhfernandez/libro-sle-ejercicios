/*
Separar cada digito de un entero positivo ingresado por el usuario.
Imprimir cada digito en una linea independiente
*/

var
	num, dig : numerico

inicio
	imprimir ("\nIngrese un numero entero positivo: ")
	leer (num)
	imprimir ("\nLos digitos de ", num, " son: ")
	repetir
		dig = num % 10
		imprimir ("\n", dig)
		num = int (num / 10)
	hasta ( num == 0 )

fin

