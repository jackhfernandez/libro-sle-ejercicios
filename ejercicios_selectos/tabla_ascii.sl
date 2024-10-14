programa tabla_ascii
const
	inicio_tabla = 33
	fin_tabla = 255
	INCR = 16
	RELLENO = ' '
var
	k, tope : numerico
inicio
	k = inicio_tabla
	cls()
	repetir
		tope = k + INCR
		si ( tope > fin_tabla )
		{
			tope = fin_tabla
		}
		prt_ascii (k, tope, RELLENO);
		imprimir ("\n")
		k = tope + 1
	hasta ( tope == fin_tabla )
fin 

subrutina prt_ascii (v1, v2 : numerico; r : cadena)
var
	k : numerico
inicio
	desde k=v1 hasta v2
	{
		imprimir ( ascii (k), r )
	}
fin 