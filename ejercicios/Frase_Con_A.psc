Algoritmo Frase_Con_A
	Definir  palabra , primeraLetra como caracter;
	Definir  cantidad Como Entero;
	Escribir  "Hola, por favor, ingrese una palabra o frase";
	Leer  palabra;
	cantidad = Longitud ( palabra );
	primeraLetra = SubCadena ( palabra , 1 , 1 );
				Si primeraLetra  =  "A" Entonces;
					Escribir  "Correcto, su palabra empieza con la letra A";
					Escribir "gracias por usar el programa";
			SiNo
				Escribir  "Incorrecto, su palabra no empieza con la letra A";
				Escribir "gracias por usar el programa";
			Fin Si
FinAlgoritmo
