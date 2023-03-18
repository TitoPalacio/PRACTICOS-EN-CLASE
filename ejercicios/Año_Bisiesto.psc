Algoritmo  Año_Bisiesto 
	Definir  año Como Entero;
	Escribir  "Por favor ingrese un año y sabrá si es bisiesto o no";
	Leer  año;
	Si  año MOD 4=0 Entonces;
		Escribir  "EL año" , un año , " es bisiesto";
	SiNo
		Escribir  "EL año" , un año , " no es bisiesto";
	FinSi
	si  año MOD 1000=0 Entonces;
		Escribir  "EL año" , un año , " es bisiesto";
	SiNo
		Escribir  "EL año" , un año , " no es bisiesto";
			FinSi
				Si  año MOD 400=0 Entonces;
					Escribir  "El año" , un año , " es bisiesto";
					Escribir "gracias por usar el programa";
				SiNo
					Escribir  "EL año" , un año , " no es bisiesto";
					Escribir "gracias por usar el programa";
		         finsi
finalgoritmo