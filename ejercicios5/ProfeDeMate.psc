Funcion promedio = TPromedioDeTres ( numero1, numero2, numero3 )
	promedio=(numero1+numero2+numero3)/3;
	Escribir "El promedio es :" , promedio;
Fin Funcion

Funcion suma = TSumatoria ( numero1, numero2, numero3 )
	suma=numero1+numero2+numero3;
	Escribir "La sumatoria total es: ", suma;
Fin Funcion

Funcion azarA = TNumeroAzar ( numero3 )
	azarA=azar(numero3);
	Escribir "El número al azar es:" , azarA;
Fin Funcion

Funcion mayor = TNumeroMayor ( numero1,numero2,numero3 )
	Si (numero1>numero2 y numero1>numero3) Entonces;
		Escribir "El número mayor es: ", numero1;
	SiNo
		Si (numero2>numero1 y numero2>numero3)
			Escribir "El número mayor es: ", numero2;
		SiNo
			Si (numero3>numero1 y numero3>numero2)
				Escribir "El número mayor es: ", numero3;
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion menor <- TNumeroMenor ( numero1,numero2,numero3 )
	Si (numero1<numero2 y numero1<numero3) Entonces;
		Escribir "El número menor es:  ", numero1;
	SiNo
		Si (numero2<numero1 y numero2<numero3)
			Escribir "El número menor es:  ", numero2;
		SiNo
			Si (numero3<numero1 y numero3<numero2)
				Escribir "El número menor es:  ", numero3;
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion raizA= TRaizCuadrada( numero1,numero2,numero3 )
	raizA=RC(numero1+numero2+numero3);
	Escribir "La raiz cuadrada de la suma es: ", raizA;
Fin Funcion

Funcion potencia = TPotenciaDeNumeros ( numero1,numero2,numero3)
	Si (numero1<numero2 y numero1<numero3) Entonces;
		Escribir "La potencia es: " numero1*numero1;
	SiNo
		Si (numero2<numero1 y numero2<numero3)
			Escribir "La potencia es: " numero2*numero2;
		SiNo
			Si (numero3<numero1 y numero3<numero2)
				Escribir "La potencia es:  " numero3*numero3;
			FinSi
		FinSi
	Fin Si
Fin Funcion

Algoritmo ProfeDeMate
	Definir numero1, numero2, numero3, operacion Como Entero;
	Definir suma, promedio, menor, mayor, azarA, raizA, potencia, resultado Como Real;
	Escribir "Por favor, ingrese el primer dígito";
	Leer numero1
	Escribir "Ingrese el segundo dígito";
	Leer numero2
	Escribir "Ingrese el tercer dígito";
	Leer numero3
	Escribir "¿Qué operación le gustaría realizar?";
	Escribir "Sumatoria=1";
	Escribir "Promedio=2";
	Escribir "Número mayor=3";
	Escribir "Número menor=4";
	Escribir "Escoger al azar un número=5";
	Escribir "Raiz Cuadra de la sumatoria de los tres números=6";
	Escribir "Potencia del número menor de los tres números=7";
	Leer operacion
	
	Segun operacion Hacer;
		1:
			resultado=TSumatoria ( numero1, numero2, numero3 );
		2:
			resultado= TPromedioDeTres ( numero1, numero2, numero3 );
		3:
			resultado=TNumeroMayor ( numero1,numero2,numero3 );
		4:
			resultado=TNumeroMenor ( numero1,numero2,numero3 );
		5:
			resultado= TNumeroAzar ( numero3 );
		6:
			resultado=TRaizCuadrada( numero1,numero2,numero3 );
		De Otro Modo:
			resultado=TPotenciaDeNumeros ( numero1,numero2,numero3);
	Fin Segun
FinAlgoritmo