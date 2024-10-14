programa matriz_valores_caracol
const
	MAX_FIL = 3
	MAX_COL = 5
var
	mat : vector [MAX_FIL, MAX_COL] numerico
	k, dir : numerico
	mincol, maxcol : numerico
	minfil, maxfil : numerico
	fil, col : numerico
inicio
	minfil = 1
	mincol = 1
	maxcol = MAX_COL
	maxfil = MAX_FIL
	col = 1; fil = 1; dir = 1
	desde k =1 hasta 	MAX_FIL * MAX_COL
	{
		mat [fil, col] = k
		eval
		{
			caso ( dir == 1 )
				inc ( col )
				si ( col == maxcol )
				{
					dir = 2
					inc ( minfil )
				}
			caso ( dir == 2 )
				inc ( fil )
				si ( fil == maxfil )
				{
					dir = 3
					dec ( maxcol )
				}
			caso ( dir == 3 )
				dec ( col )
				si ( col == mincol )
				{
					dir = 4
					dec ( maxfil )
				}
			caso ( dir == 4 )
				dec ( fil )
				si ( fil == minfil )
				{
					dir = 1
					inc ( mincol )
				}
		}
	}
	imprimir_matriz ()
fin 

subrutina imprimir_matriz ()
var f, c : numerico
inicio
	cls()
	desde f=1 hasta MAX_FIL
	{
		imprimir ("\n")
		desde c=1 hasta MAX_COL
		{
		imprimir ( str (mat [f, c], 4, 0 ) )
		}
	}
fin 