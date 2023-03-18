Funcion cargo= cargoDivisible ( cargo )
	Si cargo mod 2=0 y cargo mod 3=0 y cargo mod 5=0 Entonces;
		Escribir "BIEN VENIDO SEÑOR DIRECTOR GENERAL";
	 SiNo
		Si cargo mod 3=0 y cargo mod 5=0 Entonces;
			Escribir "ERES EL DIRECTIVO DE LA EMPRESA  ";
		Sino
			Si cargo mod 2=0 Entonces;
				Escribir "ERES PARTE DEL STAFF";
			SiNo
				Escribir "FORMAS PARTE DE LA SEGURIDAD DE LA EMPRESA ";
			Finsi
		Finsi
	Finsi
Fin Funcion

Algoritmo CargoEmpresa
	definir cargo Como entero;
	Escribir "INGRESE SU CODIGO";
	Leer cargo
	cargo= cargoDivisible (cargo);
FinAlgoritmo