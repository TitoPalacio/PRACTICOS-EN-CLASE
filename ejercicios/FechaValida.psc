Algoritmo FechaValida
	Definir  cifra , mesX, a�oX, diaX Como Entero;
	Definir  fecha , mes, dia, a�o Como Caracter;
	Escribir  "Por favor, ingrese una fecha. (Ejemplo:09-13-2013)";
	Leer   fecha;
	cifra = Longitud( fecha );
	dia = Subcadena( fecha , 1 , 2 );
	a�o =Subcadena(fecha , 7 , 10 ); 
	mes = Subcadena ( fecha , 4 , 5 );
	diaX = ConvertirAN�mero ( dia );
	a�oX= ConvertirAN�mero ( a�o );
	mesX = ConvertirAN�mero ( mes );
	Si  diaX >0 y diaX<=31 Entonces;
	FinSi
	
	Si  mesX >0 y mesx<=12 Entonces;
	FinSi
	
	Si  a�ox>0 y a�ox<=2023 Entonces;
	FinSi
	
				Segun  mesX   Hacer;
					opcion_1 :
						Escribir  "La fecha es "  dia , " de enero de "  a�o;
					opcion_2 :
						Escribir  "La fecha es "  dia , " de febrero de "  a�o;
					opcion_3 :
						Escribir  "La fecha es "  dia , " de marzo de "  a�o;
					opcion_4 :
						Escribir  "La fecha es"  dia , " de abril de  " a�o;
					opcion_5 :
						Escribir  "La fecha es"  dia , " de mayo de  " a�o;
					opcion_6 :
						Escribir  "La fecha es "  dia , " de junio de "  a�o;
					opcion_7 :
						Escribir  "La fecha es "  dia , " de julio de "  a�o;
					opcion_8 :
						Escribir  "La fecha es "  dia , " de agosto de "  a�o;
					opcion_9 :
						Escribir  "La fecha es "  dia , " de septiembre de "  a�o;
					opcion_10 :
						Escribir  "La fecha es "  dia , " de octubre de "  a�o;
					opcion_11 :
						Escribir  "La fecha es "  dia , " de noviembre de "  a�o;
					opcion_12 :
						escribir  "La fecha es "  dia , " de diciembre de  " a�o;
						
						
				FinSegun
				
	Escribir "Esta es tu fecha"
	
FinAlgoritmo
