/*
Calcular e imprimir la suma de los primeros n enteros.
*/

var
	tot, n : numerico
inicio
	cls()
	imprimir_explicacion()
	imprimir ("Numero entero? ")
	leer (n)
	calcular_suma (n)
	imprimir ("\nLa suma de los primeros ", n, " numeros es ", tot)
fin 

subrutina imprimir_explicacion ()
inicio
	imprimir ("\nEste programa de ejemplo calcula la suma de los enteros",
					"\npositivos comprendidos entre 1 y un valor ",
					"que se ingresa.\n")
fin 

subrutina calcular_suma (entero_tope : numerico)
	// Ejemplo de subrutina que recibe parametro
var
	k : numerico
inicio
	tot = 0

	desde k = 1 hasta entero_tope
	{
		tot = tot + k
	}
fin 