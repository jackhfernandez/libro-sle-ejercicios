programa notas_finales
var
	nroAlu,
	codigo,
	puntaje : numerico
	
	gNroAlu,
	sumaParc,
	cantParc,
	puntExaFinal : numerico
inicio
	cls()
	imprimir ("\nIngrese Nro Alumno, codigo, puntaje: ")
	leer ( nroAlu, codigo, puntaje )
	gNroAlu = nroAlu
	sumaParc = 0
	cantParc = 0

	mientras ( codigo <> 3 )
	{
		si ( gNroAlu <> nroAlu )
		{
			corte()
		}
		proceso()
		leer ( nroAlu, codigo, puntaje )
	}
	corte ()
fin 

subrutina proceso ()
inicio
	si ( codigo == 1 )
	{
		sumaParc = sumaParc + puntaje
		cantParc = cantParc + 1
	sino
		puntExaFinal = puntaje
	}
fin 

subrutina corte ()
var
	puntos, notaFinal : numerico
inicio
	puntos = calc_puntos()
	notaFinal = calc_nota_final ( puntos )
	imprimir ("\nNro. Alumno      Prom.Parc    Exam.Final     Puntos     Nota Final")
	imprimir ("\n___________      _________    __________     _______     _________")
	imprimir ("\n",  gNroAlu, "             ", (sumaParc/cantParc), "               ",
					puntExaFinal, "             ", puntos, "          ", notaFinal )
	//primerReg()
fin 

subrutina calc_puntos () retorna numerico
var
	promParc, puntos : numerico 
inicio
	promParc = sumaParc / cantParc
	puntos = (promParc * 40 / 100) + (puntExaFinal * 60 / 100)
	retorna ( puntos )
fin 

subrutina calc_nota_final ( puntos : numerico ) retorna numerico
var
	nota : numerico
inicio
	si ( puntos >= 95 )
	{
		nota = 5
	sino si ( puntos >= 76 )
		nota = 4
	sino si ( puntos >= 61 )
		nota = 3
	sino si ( puntos >= 50 )
		nota = 2
	sino
		nota = 1
	}
	retorna ( nota )
fin 