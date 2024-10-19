/* Programa para calcular el area de terreno triangular */
var
	b, h, a : numerico

inicio
	// Datos de entrada
	imprimir ("\n\n", "Ingrese la base: ")
	leer (b)
	imprimir ("\nIngrese la altura: ")
	leer (h)
	
	// Logica
	a = ( b * h )/ 2

	//salida
	imprimir ("\nEl area del triangulo es: ", a)
fin
