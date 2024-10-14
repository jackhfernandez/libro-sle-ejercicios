programa conv_hex
var
	n : numerico
	h : cadena 
	sl : numerico
inicio
	imprimir ("\nIngrese un numero entero positivo: ")
	leer (n)
	imprimir ("\n", n, " en hex es: ", dec_a_hex (n))
fin 

subrutina dec_a_hex ( n : numerico ) retorna cadena
const
	HEX_DIG = "0123456789ABCDEF"
var
	s : cadena
	r : numerico
inicio
	mientras ( n >= 16 )
	{
		r = n % 16
		s = HEX_DIG [r+1] + s
		n = int ( n / 16 )
	}
	s = HEX_DIG [n+1] + s
	retorna (s)
fin 