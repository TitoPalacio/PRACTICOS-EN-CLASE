Algoritmo  Capicua
		Definir  numeroIngresado , digitoUno, digitoDos, digitoTres Como Entero
		Escribir "Por favor, ingrese un número de tres cifras"
		Leer  numeroIngresado
		Si  numeroIngresado <1000 y numeroIngresado>99 Entonces
			digitoUno =  trunc ( numeroIngresado / 100 )
			digitoTres =  numeroIngresado  MOD  10
		FinSi
		Si digitoUno = digitoTres Entonces
			Escribir  "El número "  numeroIngresado  " es un número capicúa"
		SiNo
			Escribir  "El número "  numeroIngresado  " no es un número capicúa"
		Fin Si
FinAlgoritmo
