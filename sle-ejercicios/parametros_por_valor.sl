// Mostrar el paso de parametros por valor

var
	a,  b : numerico
inicio
	cls()
	a = 1; b = 10
	mi_sub (a, b)
	imprimir ("\n", a, " ", b)
	mi_sub (a*10, b-1)
fin 

subrutina mi_sub (a, b : numerico )
inicio
	a = 5
	b = b * 5
	imprimir ( "\n", a, " ", b )
fin 