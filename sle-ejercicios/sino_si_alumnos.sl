/*
Calcular cuantos 1, 3 y 5 se dieron en un grupo de 20 alumnos.
*/

var
	n1, 				//cantidad de unos,
	n3, 				// de tres y 
	n5 : numerico  // de cincos
	pnt : numerico // Puntaje obtenido por un alumno
	k : numerico

inicio
	k = 1
	n1 = 0; n3 = 0; n5 = 0

	repetir
		imprimir ("\n")
		leer (pnt)
		si ( pnt >= 95 )
		{
			n5 = n5 + 1
		sino si ( pnt >= 85 )
			n3 = n3 + 1
		sino si ( pnt < 60 )
			n1 = n1 + 1
		}
		k = k + 1
	hasta ( k > 20 )
	imprimir ("\nCantidad de unos: ", n1,
				"\nCantidad de tres: ", n3,
				"\nCantidad de cincos: ", n5);

fin
