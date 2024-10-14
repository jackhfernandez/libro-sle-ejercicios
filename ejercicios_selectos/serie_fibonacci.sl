programa serie_fibonacci
var
	a, b, c : numerico
	n : numerico
inicio
	cls()
	imprimir ("\nHasta que numero deseas ejecutar esta serie: ")
	leer (n)
	a = 0; b = 1
	si ( n >= 1 )
	{
		imprimir ("\n", a);
	}
	si ( n >= 2 )
	{
		imprimir ("\n", b);
	}
	n = n - 2;
	mientras ( n >= 1 )
	{
		c = a + b;
		imprimir ("\n", c);
		a = b;
		b = c;
		n = n - 1;
	}
fin 