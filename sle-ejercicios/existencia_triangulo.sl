/*
Verificar la existencia del triangulo
*/

var
	a, b, c : numerico

inicio
	imprimir ("\nIngresa los lados: ")
	leer (a,b,c)

si ( (a>b+c) or (b>a+c) or (c>a+b) )
{
	imprimir ("\nNo pueden ser los lados de un triangulo")
sino 
	imprimir ("\nPueden formar un triangulo")
}

fin
