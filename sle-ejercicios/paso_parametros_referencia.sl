/* Mostrar el uso de los parámetros por referencia, implementando
una subrutina que intercambia el contenido de dos
variables numéricas
*/
var
	a, b : numerico
inicio
	cls()
	a = 10; b = 20
	intercambiar_num (a, b)
	imprimir (a, ' ', b) // imprimira 20 10
fin 

subrutina intercambiar_num ( ref primera_var, segunda_var : numerico)
var 
	aux : numerico
inicio
	aux = primera_var
	primera_var = segunda_var
	segunda_var = aux
fin 