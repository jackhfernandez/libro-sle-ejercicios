// Obtener la parte entera de un numero real
var
	x : numerico
inicio
	cls()
	x = entero (15.23)
	imprimir ("\n", x)
	x = entero (x * 0.5) + entero (x) // x vale 22
	imprimir ("\n", x, "\n")
	imprimir ( entero (19.45) )			 // imprime 19
fin 

subrutina entero (n : numerico) retorna numerico
/* Calcular la parte entera de un numero positivo
Parametro: n = numero del que se quiere obtener su parte entera
*/
var
	ent : numerico
inicio
	ent = 0
	mientras ( n >= 1 )
	{
		ent = ent + 1
		n = n - 1
	}
	retorna ( ent )
fin 