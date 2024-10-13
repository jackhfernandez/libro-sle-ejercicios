// Mostrar el paso de parametros por referencia
var
	a, b : numerico
inicio
	cls()
	a = 1; b = 10
	mi_sub (a, b)
	imprimir ("\n", a, " ", b)
	mi_sub (a*10, b)
fin

subrutina mi_sub (a : numerico; ref b : numerico)
// a se recibe por valor, pero b por referencia
inicio
	a = 5
	b = b*5
	imprimir ("\n", a, " ", b)
fin 
