programa uso_de_nuevos_tipos_1
tipos	
	ALUMNO : registro
				{
					nombre : cadena
					nota : numerico
				}
	ACTA : vector [*] ALUMNO
var
	A : ACTA
inicio
	cls()
	leer_acta (A)
	ordenar_por_nota (A)
	imprimir_acta (A)
fin 

subrutina imprimir_acta (A : ACTA)
	// Imprimir el nombre y la nota de cada alumno
var 
	k : numerico
inicio
	desde k=1 hasta alen (A)
	{
		imprimir ("\n", A [k].nombre, "\t", A [k].nota)
	}
fin 

subrutina leer_acta (ref c : ACTA )
	/* Leer los nombres y notas.
	primero pide cantidad de alumnos e inicializa el vector
	Observar que c DEBE ser recibido por referencia, pues de lo 
	contrario los datos leidos se perderan al salir de la rutina */
var
	cant, k : numerico
inicio
	imprimir ("\nIngrese la cantidad de alumnos: ")
	leer (cant)
	dim (c, cant)
	imprimir ("\nA continuacion ingrese nombre, nota para cada alumno: \n")
	desde k=1 hasta cant
	{
		leer ( c [k].nombre, c [k].nota )
	}
fin 

subrutina ordenar_por_nota (ref A : ACTA )
	/* Ordenar A por notas de mayor a menor. Algoritmo de la burbuja
	A debe ser recibido por referencia para no perder los datos al
	salor de la subrutina.
	Muesta el uso de asignacion entre registros. (var aux)  */
var
	aux : ALUMNO
	k, n : numerico
	g : numerico // longitud de A
inicio
	g = alen (A)
	desde n=1 hasta (g-1)
	{
		desde k=n+1 hasta g
		{
			si ( A [n].nota < A [k].nota )
			{
				aux = A [n]
				A [n] = A [k]
				A [k] = aux
			}
		}
	}
fin 