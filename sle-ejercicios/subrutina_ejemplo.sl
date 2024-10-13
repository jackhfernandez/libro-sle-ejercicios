// Ejemplo de uso de subrutinas
var
	n : numerico
inicio
	cls()
	n = 100
	sub_1 ()
	imprimir ("\n", n)
	sub_2 ("Hola")
fin 

subrutina sub_1 ()
var
	n : numerico
inicio
	desde n = 1 hasta 5
	{
		imprimir (n, " ")
	}
fin 

subrutina sub_2 (n : cadena)
inicio 
	imprimir ("\n", n)
fin 