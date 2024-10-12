/*
Imprimir en una tabla el cuadrado de los 10 primeros
numeros enteros positivos y dar la suma total
*/

var
	k, sum, cuad: numerico

inicio
	desde k = 1 hasta 10
	{
		cuad = k ^2
		imprimir ("\n", k, " :\t", cuad )
		sum = sum + cuad
	}
	imprimir ("\nLa suma es: ", sum)

fin
