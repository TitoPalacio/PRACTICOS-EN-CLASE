Funcion signo = SignoDeZodiaco ( dia, mes )
	Si (mes=1 Y dia>20 Y dia<32) O (mes=2 Y dia>0 Y dia<20) Entonces;
		signo="Acuario"
	SiNo
		Si (mes=2 Y dia>19 Y dia<30) O (mes=3 Y dia>0 Y dia<21) Entonces;
			signo="Piscis"
		SiNo
			Si (mes=3 Y dia>20 Y dia<32) O (mes=4 Y dia>0 Y dia<20) Entonces;
				signo="Aries"
			SiNo
				Si (mes=4 Y dia>19 Y dia<31) O (mes=5 Y dia>0 Y dia<21) Entonces;
					signo="Tauro"
				SiNo
					Si (mes=5 Y dia>20 Y dia<32) O (mes=6 Y dia>0 Y dia<22) Entonces;
						signo="G�minis"
					SiNo
						Si (mes=6 Y dia>21 Y dia<31) O (mes=7 Y dia>0 Y dia<22) Entonces;
							signo="C�ncer"
						SiNo
							Si (mes=7 Y dia>21 Y dia<32) O (mes=8 Y dia>0 Y dia<22) Entonces;
								signo="Leo"
							SiNo
								Si (mes=8 Y dia>21 Y dia<32) O (mes=9 Y dia>0 Y dia<23) Entonces;
									signo="Virgo"
								SiNo
									Si (mes=9 Y dia>22 Y dia<31) O (mes=10 Y dia>0 Y dia<23) Entonces;
										signo="Libra"
									SiNo
										Si (mes=10 Y dia>22 Y dia<32) O (mes=11 Y dia>0 Y dia<22) Entonces;
											signo="Escorpio"
										SiNo
											Si (mes=11 Y dia>21 Y dia<31) O (mes=12 Y dia>0 Y dia<22) Entonces;
												signo="Sagitario"
											SiNo
												Si (mes=12 Y dia>21 Y dia<32) O (mes=1 Y dia>0 Y dia<21) Entonces;
													signo="Capricornio"
												SiNo
													signo="Vuelve a intentarlo, ocurri� un error";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
Fin Funcion


Algoritmo ZODIACO
	Definir cifra, mes,dia Como Entero;
	Definir fecha, mesesC, diaesC,a�o,signo Como Caracter;
	Escribir "gracias por usar este sitio " ;
	Escribir "Para que podamos decirte tu signo, por favor ingresa la fecha en la que naciste de esta manera: 20-07-2017";
	Leer fecha;
	cifra=Longitud(fecha);
	diaesd=subcadena(fecha,1,2);
	a�o=subcadena(fecha,7,10);
	mesesd=subcadena(fecha,4,5);
	dia=ConvertirANumero(diaesd);
	mes=ConvertirANumero(mesesd);
	signo=SignoDeZodiaco ( dia, mes );
	Escribir nombre, " tu signo es : " ,signo;
FinAlgoritmo