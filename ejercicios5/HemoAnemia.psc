Funcion respuesta = TAnemia ( nivelHemoglobina,edadGrupo )
	Segun edadGrupo Hacer
		1:
			Si nivelHemoglobina<13 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		2:
			Si nivelHemoglobina<10 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		3:
			Si nivelHemoglobina<11 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		4:
			Si nivelHemoglobina<11.5 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		5:
			Si nivelHemoglobina<12.6 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		6:
			Si nivelHemoglobina<13 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		7:
			Si nivelHemoglobina<12 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		8:
			Si nivelHemoglobina<14 Entonces
				respuesta="POSITIVO"
			SiNo
				respuesta="NEGATIVO"
			Fin Si
		De Otro Modo:
			respuesta="POSITIVO"
	Fin Segun
Fin Funcion

Funcion edadGrupo = TGrupoDeEdad ( años,meses )
	Si años=0 y meses>0 y meses<=1 Entonces
		edadGrupo=1
	SiNo
		Si años=0 y meses>1 y meses<=6 Entonces
			edadGrupo=2
		SiNo
			Si (años=0 y meses>6 y meses<12) o (años=1 y meses=0) Entonces
				edadGrupo=3
			SiNo
				Si (años=1 y meses>0 y meses<12) o (años>1 y años<5 y meses>=0 y meses<12) o (años=5 y meses=0) Entonces
					edadGrupo=4
				SiNo
					Si (años=5 y meses>0 y meses<12) o (años>5 y años<10 y meses>=0 y meses<12) o (años=10 y meses=0) Entonces
						edadGrupo=5
					SiNo
						Si (años=10 y meses>0 y meses<12) o (años>10 y años<5 y meses>=0 y meses<12) o (años=15 y meses=0) Entonces
							edadGrupo=6
						SiNo
							Si sexo=1 y ((años=15 y meses>0 y meses<12) o (años>15 y meses>=0 y meses<12)) Entonces
								edadGrupo=7
							SiNo
								Si sexo=2 y ((años=15 y meses>0 y meses<12) o (años>15 y meses>=0 y meses<12)) Entonces
									edadGrupo=8
								SiNo
									edadGrupo=9
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Funcion nuevosMeses = TMeses ( meses )
	Si meses=12 Entonces
		años=años+1
		meses=0
	SiNo
		años=años
	Fin Si
Fin Funcion

Algoritmo HemoAnemia
	Definir nombre Como Caracter
	Definir sexo,años,meses,nivelHemoglobina Como Real
	Escribir " Para saber si tienes anemia, por favor responde las siguientes preguntas"
	Escribir "¿Cuántos años tienes?"
	Leer años
	Escribir "¿Cuántos meses tienes?"
	Leer meses
	Escribir "Elige tu sexo: Masculino = 1,  Femenino = 2"
	Leer sexo
	Escribir "Ingrese su porcentaje de hemoglobina, EJ=14,4 = 14,4 g %"
	Leer nivelHemoglobina
	
	nuevosMeses= TMeses(meses)
	
	edadGrupo=TGrupoDeEdad (años,meses)
	
	respuesta=TAnemia (nivelHemoglobina,edadGrupo)
	
	Escribir  "EDAD ",años,"AÑOS Y  ",meses,"MESES"
	Escribir  "SEXO: ",sexo
	Escribir "LOS RESULTADOS SON:",respuesta
	
FinAlgoritmo