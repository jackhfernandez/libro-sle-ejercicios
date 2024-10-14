programa numeros_primos
const
	TACHADO = TRUE
	NO_TACHADO = FALSE
tipos
	VEC_PRIMOS : vector [*] logico
var
	N : numerico
	P : VEC_PRIMOS
inicio
	cls()
	imprimir ("\n=== CALCULO DE NUMEROS PRIMOS ===")
	si ( pcount() < 1 )
	{
		imprimir ("\nIngrese el ultimo numero a evaluar: ")
		leer (N)
	sino
		N = val (paramval (1) )
	}
	si ( int (N) <> N )
	{
		imprimir ("\nEl numero ingresado deber ser entero")
	sino
		dim (P, N)
		calc_primos (P, N)
		imprimir ("\n")
		imprimir_primos (P)
	}
fin 

subrutina calc_primos (ref P : VEC_PRIMOS; N : numerico )
var
	k, n : numerico
inicio
	desde k = 1 hasta N
	{
		P [k] = NO_TACHADO
	}
	n = 2
	mientras ( n + n < N )
	{
		desde k = n + n hasta N paso n
		{
			P [k] = TACHADO
		}
		n = n + 1
		mientras ( n <= N and P [n] )
		{
			n = n + 1
		}
	}
fin 

subrutina imprimir_primos ( v : VEC_PRIMOS )
var
	k : numerico
inicio
	desde k = 2 hasta alen (v)
	{
		si ( v [k] == NO_TACHADO )
		{
			imprimir ( str ( k, 5, 0 ) )
		}
	}
fin 