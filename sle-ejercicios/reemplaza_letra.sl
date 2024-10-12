programa reemplazar_letra

/*
Reemplazar todas las letras a por una b
*/

var
	z : cadena
	k : numerico

inicio
	cls()
	z = "La mar estaba serena, serena estaba la mar"
	imprimir (z)
	desde k = 1 hasta strlen (z)
	{
		si ( z [k] == 'a' )
		{
			z [k] = 'e'
		}
	}
	imprimir ("\n", z)

fin 