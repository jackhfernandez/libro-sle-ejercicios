programa cadena_inversa
/*
Mostrar en pantalla la cadena en forma inversa
*/
var
	frase : cadena
	k : numerico
inicio
	cls()
	frase = "Hola mundo en reversa"
	desde k = strlen ( frase ) hasta 1 paso -1
	{
		imprimir ( frase [k])
		//imprimir ("\n", frase [k])
	}

fin 