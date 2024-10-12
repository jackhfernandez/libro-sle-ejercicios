/*
Calcular el cociente de a/b, a y b son enteros
*/

var
	a, b, cociente : numerico 
inicio
	imprimir ("\nPrograma para calcular cociente de la division",
					"entera de dos numeros, ambos enteros.")
	imprimir ("\nIngrese dos numeros enteros: ")
	leer (a,b)
	cociente = 0
	mientras ( a >= b )
	{
		a = a - b
		cociente = cociente + 1
	}
	imprimir ("\nEl cociente es: ", a);

fin
