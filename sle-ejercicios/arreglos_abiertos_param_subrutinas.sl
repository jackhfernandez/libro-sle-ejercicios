// Mostrar el uso de arreglos abiertos como parametros de subrutias
var
	A : vector [5] numerico
	B : vector [*] numerico
inicio
	cls()
	A = {1, 2, 3, 5, 7}
	B = A
	impr_vect (A)
	impr_vect (B)
	impr_vect ({100, 200, 300})
fin 

subrutina impr_vect (v : vector [*] numerico)
var
	k : numerico
inicio
	desde k = 1 hasta alen (v)
	{
		imprimir (v [k], " ")
	}
fin 