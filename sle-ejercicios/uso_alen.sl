programa uso_alen
var
	v1 : vector [10] numerico
	v2 : vector [*] numerico
	k : numerico

inicio
	cls()
	desde k = 1 hasta alen (v1)
	{
		v1 [k] = 0
	}
	dim (v2, 15)
	desde k = 1 hasta alen (v2)
	{
		v2 [k] = 0
	}
	imprimir (v1, v2)

fin
