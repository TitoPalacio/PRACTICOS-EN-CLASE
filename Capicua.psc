Algoritmo  Capicua
		Definir  numeroIngresado , digitoUno, digitoDos, digitoTres Como Entero
		Escribir "Por favor, ingrese un n�mero de tres cifras"
		Leer  numeroIngresado
		Si  numeroIngresado <1000 y numeroIngresado>99 Entonces
			digitoUno =  trunc ( numeroIngresado / 100 )
			digitoTres =  numeroIngresado  MOD  10
		FinSi
		Si digitoUno = digitoTres Entonces
			Escribir  "El n�mero "  numeroIngresado  " es un n�mero capic�a"
		SiNo
			Escribir  "El n�mero "  numeroIngresado  " no es un n�mero capic�a"
		Fin Si
FinAlgoritmo
