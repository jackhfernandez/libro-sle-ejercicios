/* Calcular la altura de un tringulo equilatero 
formula h = ( a * 3 ^ ( 1 / 2 ) ) / 2
donde a : lado del triangulo
*/

const RAIZ_3 = 1.732050808 // raiz de 3
var a, h : numerico // lado y altura respectivamente

inicio
	imprimir ("\nIngrese longitud del lado: ")
	leer (a)
	h = a * RAIZ_3 / 2
	imprimir ("\nAltura del triangulo es ", h)
fin
