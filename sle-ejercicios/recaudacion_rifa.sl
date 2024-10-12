/*
Calcular la suma de los primeros 99 numeros naturales
*/

var
	inicial, suma : numerico

inicio
	suma = 0
	inicial = 1

	mientras ( inicial <= 99 )
	{
		suma = suma + inicial
		inicial = inicial + 1
	}
	imprimir ("\nSe recaudará la suma de: $ ", suma);
fin
