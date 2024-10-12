/*
Programa para calcular la altura máxima alcanzada por un proyectil
	h = [v0.sen(a)]^2d/2g
donde:
v0 : velocidad inicial
a  : angulo de disparo
g  : aceleracion de la gravedad
*/
var
	v_disp,						// velocidad inicial
	a_disp : numerico			// Angulo de disparo
	a_disp_rad : numerico	// Angulo de disparo en radianes
	h_max : numerico			// Altura maxima

inicio
	// Datos de entrada
	imprimir ("\n\n", "Ingrese velocidad inicial: ")
	leer (v_disp)
	imprimir ("\nIngrese  angulo de disparo en sexagesimales: ")
	leer (a_disp)
	
	// Logica
	a_disp_rad = a_disp * 3.14151692654 / 180
	h_max = ( (v_disp * sin (a_disp_rad) ) ^ 2) / (2 * 9.8)
	imprimir ("\nAltura maxima = ", h_max)
fin
