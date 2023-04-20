Algoritmo Decimal_A_Binario
	Definir n,x,binario como real 
	Definir binario1 Como Caracter
	Escribir"ingresar un numero decimal"
    LEER n
	x=1
	Escribir"el numero",n,"convertido a binario es"
	Mientras  n>=1 hacer 
		si n mod 2==1 Entonces
			binario=binario+x
		FinSi
		n= trunc(n/2)
		x=x*10
	FinMientras
	Escribir binario
	
Escribir"ingrese un numero binario"
Leer d
binario1 = ConvertirATexto(d)
n=Longitud(binario1)
x=0
decimal=0
Mientras n>0 hacer 
	si Subcadena(binario1,n,n)=="1" entonces 
		decimal=decimal+2^x
	FinSi
	n=n-1
	x=x+1
FinMientras
Escribir "el numero en decimal es :",decimal
	FinAlgoritmo
	