Algoritmo  A�o_Bisiesto 
	Definir  a�o Como Entero;
	Escribir  "Por favor ingrese un a�o y sabr� si es bisiesto o no";
	Leer  a�o;
	Si  a�o MOD 4=0 Entonces;
		Escribir  "EL a�o" , un a�o , " es bisiesto";
	SiNo
		Escribir  "EL a�o" , un a�o , " no es bisiesto";
	FinSi
	si  a�o MOD 1000=0 Entonces;
		Escribir  "EL a�o" , un a�o , " es bisiesto";
	SiNo
		Escribir  "EL a�o" , un a�o , " no es bisiesto";
			FinSi
				Si  a�o MOD 400=0 Entonces;
					Escribir  "El a�o" , un a�o , " es bisiesto";
					Escribir "gracias por usar el programa";
				SiNo
					Escribir  "EL a�o" , un a�o , " no es bisiesto";
					Escribir "gracias por usar el programa";
		         finsi
finalgoritmo