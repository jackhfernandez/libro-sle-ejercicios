programa uso_de_nuevos_tipos_2
// Mostrar el uso de tipos definidos por el usuario
tipos 
	FECHA : registro
				{
					d, m, a : numerico
				}
var
	f : FECHA
inicio
	cls()
	imprimir ("\nEste programa calcula el dia de la semana que corresponde ",
					"a una fecha\n")
	f = leer_fecha ("\nIngrese una fecha (dd,mm,aaaa): ")
	si ( fecha_valida (f) )
	{
		imprimir ("\nDia = ", nombre_dia_sem (calc_dia_sem (f)))
	sino
		imprimir ("\nFecha ingresada no es valida\n")
	}
fin 

subrutina leer_fecha (msg : cadena) retorna FECHA
var
	f : FECHA
inicio
	imprimir (msg)
	leer (f.d, f.m, f.a)
	retorna (f)
fin

subrutina fecha_valida (f : FECHA) retorna logico
var
	mal : logico
inicio
	mal = (f.a < 1) or (f.m < 0 or f.m > 12) or (f.d < 1 or f.d > 31)
	si ( not mal )
	{
		si ( f.m == 2 )
		{
			mal = f.d > 28 and not bisiesto (f.a)
		sino
			mal = (f.m == 4 or f.m == 6 or f.m == 11) and f.m > 30
		}
	}
	retorna ( not mal )
fin 

subrutina calc_dia_sem (f : FECHA) retorna numerico
var 
	d, m, y1, y2 : numerico
inicio
	si ( f.m < 3 )
	{
		m = f.m + 10;
		f.a = f.a - 1
	sino
		m = f.m - 2;
	}
	y1 = int (f.a / 100);
	y2 = f.a % 100;
	d = int ( (
					f.d + int (2.6*m - 0.1) + y2 + int (y2 / 4)
						+ int (y1 / 4) - 2*y1 + 49
					) % 7
				) + 1;
	retorna (d)
fin 

subrutina bisiesto (a : numerico) retorna logico
inicio
	retorna (a%4 == 0) and not ( (a%100 == 0) or (a%400==0) )
fin 

subrutina nombre_dia_sem (d : numerico) retorna cadena
var
	dsem : vector [8] cadena
inicio
	dsem = { "Domingo", "Lunes", "Martes", "Miercoles", "Jueves",
				"Viernes", "Sabado", "**INVALIDO**" }
	si ( d < 1 or d > 7 )
	{
		d = 8
	}
	retorna ( dsem [d] )
fin 