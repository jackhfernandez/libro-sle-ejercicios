/*
calcular la cantidad de alumnos que obtuvieron nota inferior al primedio del curso en cierta materia.
*/
const
	MAX_ALUMNOS = 20
var
	notas : vector [MAX_ALUMNOS] numerico
	suma_notas : numerico // suma de todas las notas
	prom : numerico // promedio
	cnb : numerico // cantidad con notas bajas
	k : numerico

inicio
	desde k = 1 hasta MAX_ALUMNOS
	{
		imprimir ("\nIngrese nota para alumno ", k, ": ")
		leer (notas [k])
		// Obtener la suma de notas
		suma_notas = suma_notas + notas [k]
	}
	prom = suma_notas / MAX_ALUMNOS

	// primero obtener promedio luego determinar alumnos con notas inferiores al promedio
	cnb = 0
	desde k = 1 hasta MAX_ALUMNOS
	{
		si (notas [k] < prom )
		{
			cnb = cnb + 1
		}
	}
	imprimir ("\nExisten ",cnb, " alumnos con notas inferiores",
				" al promedio del curso, que es ", prom)
fin
