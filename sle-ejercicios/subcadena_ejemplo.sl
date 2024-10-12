programa subcadenas
// Uso de subcadenas
var
	z, subcad : cadena; g, k, p : numerico 
inicio
	cls()
	z = "123456789ABCDEF"
	g = strlen (z)
	p = 1
	k = 1
	mientras ( p < g )
	{
		subcad = substr (z, p, k)
		imprimir ("\n", subcad)
		p = p + k
		k = k + 1
	}
fin 