Algoritmo  Pregunta_O_Afirmacion 
	Definir  palabra , signoA, signoB Como Caracter;
	signoA =  "!";
	signoB =  "?";
	Escribir  " Por favor escribe una palabra o frase";
	leer  palabra;
	Si Longitud(palabra)=4 Entonces;
		Escribir Concatenar(palabra,signoA);
		Escribir "gracias por usar el programa";
	SiNo
		Escribir Concatenar(palabra,signoB);
		Escribir "gracias por usar el programa";
	Fin Si 
FinAlgoritmo
