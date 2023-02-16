Algoritmo sumadosnumeros 
	definir numeroUno,numeroDos,numeroTres como Entero
	Definir  numeroCuatro Como Real
	Escribir  "escriba dos numeros" 
	Leer  numeroUno,numeroDos
	numeroTres=numeroUno+numeroDos
	Si numeroTres%2=0 Entonces
		numeroCuatro=numeroTres*2
	SiNo
		numeroCuatro=numeroTres/5
	Fin Si
	Imprimir  "El resultado es:",numeroCuatro
	
	
	FinAlgoritmo
