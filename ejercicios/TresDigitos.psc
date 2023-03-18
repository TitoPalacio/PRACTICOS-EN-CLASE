Algoritmo TresDigitos
	Definir num Como Caracter;
	Definir A Como Entero;
	Escribir "Hola, por favor ingresa un numero de tres digitos";
	Leer num;
	A = Longitud(num);
	Si A=3 Entonces;
	
	FinSi
	digito1 = Subcadena(num,1,1);
	digito2 = Subcadena(num,2,2);
	digito3 = Subcadena(num,3,3);
	Si digito1<>'.' Y digito2<>'.' Y digito3<>'.' Entonces;
		Escribir "El número ',num,'es un número de tres dígitos";
	FinSi
	
	Si A=4 Entonces
	Escribir "El numero ",num," no es numero de tres digitos";	
	FinSi
FinAlgoritmo
