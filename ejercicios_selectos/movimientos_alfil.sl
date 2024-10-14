programa movimientos_alfil
const 
	TAM_TAB = 8
var
	f_inic, c_inic : numerico
	T : vector [TAM_TAB, TAM_TAB] cadena
	k : numerico
inicio
	cls()
	imprimir ("\nIngrese fila y columna donde se encuentra el alfil: ")
	leer (f_inic, c_inic)
	T = { {'.', ...},
				...
			}
	T [f_inic, c_inic] = 'A'
	k = 1
	mientras ( k <= TAM_TAB )
	{
		marcar ( f_inic - k, c_inic - k )
		marcar ( f_inic - k, c_inic + k )
		marcar ( f_inic + k, c_inic - k )
		marcar ( f_inic + k, c_inic + k )
		k = k + 1
	}
	impr_tablero()
fin 

subrutina marcar (f,c: numerico)
inicio
	si ( (f>0 and f <= TAM_TAB) and
			(c > 0 and c <= TAM_TAB)
		)
	{
		T [f, c] = 'P'
	}
fin 

subrutina impr_tablero()
var
	f, c : numerico
inicio
	desde f = 1 hasta TAM_TAB
	{
		imprimir ("\n")
		desde c = 1 hasta TAM_TAB
		{
			imprimir ( T [f, c], ' ')
		}
	}
fin
