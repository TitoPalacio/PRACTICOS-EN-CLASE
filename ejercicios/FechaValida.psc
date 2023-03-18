Algoritmo FechaValida
	Definir  cifra , mesX, añoX, diaX Como Entero;
	Definir  fecha , mes, dia, año Como Caracter;
	Escribir  "Por favor, ingrese una fecha. (Ejemplo:09-13-2013)";
	Leer   fecha;
	cifra = Longitud( fecha );
	dia = Subcadena( fecha , 1 , 2 );
	año =Subcadena(fecha , 7 , 10 ); 
	mes = Subcadena ( fecha , 4 , 5 );
	diaX = ConvertirANúmero ( dia );
	añoX= ConvertirANúmero ( año );
	mesX = ConvertirANúmero ( mes );
	Si  diaX >0 y diaX<=31 Entonces;
	FinSi
	
	Si  mesX >0 y mesx<=12 Entonces;
	FinSi
	
	Si  añox>0 y añox<=2023 Entonces;
	FinSi
	
				Segun  mesX   Hacer;
					opcion_1 :
						Escribir  "La fecha es "  dia , " de enero de "  año;
					opcion_2 :
						Escribir  "La fecha es "  dia , " de febrero de "  año;
					opcion_3 :
						Escribir  "La fecha es "  dia , " de marzo de "  año;
					opcion_4 :
						Escribir  "La fecha es"  dia , " de abril de  " año;
					opcion_5 :
						Escribir  "La fecha es"  dia , " de mayo de  " año;
					opcion_6 :
						Escribir  "La fecha es "  dia , " de junio de "  año;
					opcion_7 :
						Escribir  "La fecha es "  dia , " de julio de "  año;
					opcion_8 :
						Escribir  "La fecha es "  dia , " de agosto de "  año;
					opcion_9 :
						Escribir  "La fecha es "  dia , " de septiembre de "  año;
					opcion_10 :
						Escribir  "La fecha es "  dia , " de octubre de "  año;
					opcion_11 :
						Escribir  "La fecha es "  dia , " de noviembre de "  año;
					opcion_12 :
						escribir  "La fecha es "  dia , " de diciembre de  " año;
						
						
				FinSegun
				
	Escribir "Esta es tu fecha"
	
FinAlgoritmo
