/*
Clasificar si un caracter o mayuscula, minuscula, digito u otro
*/

var
	let, msg : cadena

inicio
	imprimir ("\nIngrese el caracter a evaluar: ")
	leer (let)
	let = let [1]
	eval
	{
		caso ( let >= 'A' and let <= 'Z' )
			msg = "Letra mayuscula"
		caso ( let >= 'a' and let <= 'z' )
			msg = "Letra minuscula"
		caso ( let >= '0' and let <= '9' )
			msg = "Digito"
		sino
			msg = "Algun otro"
	}
	imprimir ("\nEl caracter que usted ingreso es ", msg )
fin
