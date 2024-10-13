/* Mostrar el uso de arreglos abiertos a través de una función de
que calcula la traspuesta de una matriz. */

var
	A, T : matriz [*,*] numerico
	f, c : numerico
inicio
	cls()
	A =  {{10, 11, 12},
			{20, 21, 22},
			{30, 31, 32},
			{40, 41, 42},
			{50, 51, 52}
		  }
	imprimir ("\nMatriz original\n")
	impr_mat (A)
	T = trasp (A)
	imprimir ("\nMatriz traspuesta\n")
	impr_mat (T)
fin

subrutina trasp (m : matriz [*, *] numerico) retorna matriz [*,*] numerico
	//Trasponer la matriz m asumiendo que tiene contorno regular
var
	t : matriz [*, *] numerico
	cf, cc : numerico // cantidad de filas y columnas de m
	kf, kc : numerico // indice de fila y columna
inicio
	cf = alen (m [1])
	cc = alen (m)
	dim (t, cf, cc)
	desde kf=1 hasta cf
	{
		desde kc=1 hasta cc
		{
			t [kf, kc] = m [kc, kf]
		}
	}
	retorna (t)
fin 

subrutina impr_mat (m : matriz [*, *] numerico)
var
	f, c : numerico
inicio
	desde f=1 hasta alen (m)
	{
		desde c = 1 hasta alen (m[f])
		{
			imprimir (m [f, c], ' ')
		}
		imprimir ("\n")
	}
fin 