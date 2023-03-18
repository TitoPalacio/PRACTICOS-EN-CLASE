Algoritmo BoletaDePago
	Definir nombre,cargo,mes,CI,horasTrabajadas Como Caracter
	Definir sueldo,añosAntiguedad,sueldoEgreso,ingresosTotales,liquidoPagable,bonoAntiguedad,otrosBonosExtra,sueldoBonoProductividad,bonoHorasExtra,afp,RCIVA Como Real
	Definir haberBasico,sueldoBonosExtra,aporteNacionalSolidario,bonoProductividad,gestionIngreso,salarioMinimoNacional,horasExtrasDiurno,horasExtrasNocturno Como Entero 
	
	Escribir "Por favor, ingrese su nombre y apellido, su cargo actual y el mes en el que recibió el sueldo."
	Leer nombre,cargo,mes 
	Escribir "Ingrese su CI, su sueldo, horas trabajadas, y sus años de antiguedad"
	Leer CI,sueldo,horasTrabajadas,añosAntiguedad
	afp=0.1271
	salarioMinimoNacional=2250
	haberBasico=sueldo
	
	Si añosAntiguedad>=0 y añosAntiguedad<2 Entonces
		porcentajeBono=0
	SiNo
		Si añosAntiguedad>=2 y añosAntiguedad<4 Entonces
			porcentajeBono=0.05
		SiNo
			Si añosAntiguedad>=4 y añosAntiguedad<8 Entonces
				porcentajeBono=0.11
			SiNo
				Si añosAntiguedad>=8 y añosAntiguedad<11 Entonces
					porcentajeBono=0.18
				SiNo
					Si añosAntiguedad>=11 y añosAntiguedad<15 Entonces
						porcentajeBono=0.26
					SiNo
						Si añosAntiguedad>=15 y añosAntiguedad<20 Entonces
							porcentajeBono=0.34
						SiNo
							Si añosAntiguedad>=20 y añosAntiguedad<25 Entonces
								porcentajeBono=0.42
							SiNo
								Si añosAntiguedad>=25 Entonces
									porcentajeBono=0.5
								SiNo
									porcentajeBono=0
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	bonoAntiguedad=(salarioMinimoNacional*3)*porcentajeBono
	
	Escribir "Ingrese las horas extras nocturnas trabajadas y las horas extras diurnas trabajadas los feriados o domingos"
	Leer horasExtrasNocturno
	Leer horasExtrasDiurno
	bonoHorasExtra=(sueldo/30/8*horasExtrasNocturno*2)+(sueldo/30/8*horasExtrasDiurno*2.5)
	
	Escribir "Ingrese su sueldo por otros bonos"
	Leer otrosBonosExtra
	
	Escribir "¿Tienes bono de productividad? 1=Si 2=NO"
	Leer bonoProductividad
	Si bonoProductividad=1 Entonces
		sueldoBonoProductividad=sueldo*0.1
	SiNo
		Si bonoProductividad=2 Entonces
			sueldoBonoProductividad=0
		SiNo
			sueldoBonoProductividad=0
		Fin Si
	Fin Si
	
	Si sueldo>0 y sueldo<=13000 Entonces
		aporteNacionalSolidario=sueldo*0.005
	SiNo
		Si sueldo>13000 y sueldo<=25000 Entonces
			aporteNacionalSolidario=(sueldo-13000)*0.01
		SiNo
			Si sueldo>25000 y sueldo<=35000 Entonces
				aporteNacionalSolidario=((sueldo-13000)*0.01)+((sueldo-25000)*0.05)
			SiNo
				Si sueldo>35000 Entonces
					aporteNacionalSolidario=((sueldo-13000)*0.01)+((sueldo-25000)*0.05)+((sueldo-35000)*0.1)
				SiNo
					aporteNacionalSolidario=sueldo*0.005
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Escribir "¿Cuántas multas tienes?"
	Leer multas
	sueldoMultas=sueldo/100*multas
	
	Si sueldo>9500 Entonces
		Escribir "¿Cuál es su monto en facturas?"
		Leer montoFacturas
		Si montoFacturas>sueldo Entonces
			RCIVA=0
		SiNo
			RCIVA=sueldo*0.13
		Fin Si
	SiNo
		RCIVA=0
	Fin Si
	
	ingresosTotales=haberBasico+bonoAntiguedad+sueldoHorasExtra+sueldoBonoProductividad+sueldoBonosExtra
	sueldoEgreso=haberBasico*afp+aporteNacionalSolidario+sueldoMultas+RCIVA
	liquidoPagable=ingresosTotales-sueldoEgreso
	
	Escribir "Sus datos son los siguientes:"
	Escribir "Nombre: ",nombre
	Escribir "Carnet de Identidad: ",CI
	Escribir "Cargo: ",cargo
	Escribir "Mes actual: ",mes
	Escribir "Horas trabajadas: ",horasTrabajadas," Horas extras normales ",horasExtrasDiurno," Horas extras Diurnas, y ",horasExtrasNocturno,"Horas extras Nocturnas"
	Escribir "Total Ingresos: ", ingresosTotales," Bs."
	Escribir "Sueldo Egresado: ",sueldoEgreso," Bs."
	Escribir "Liquido pagable: ",liquidoPagable," Bs."
	Escribir "Gracias por usar el programa"
FinAlgoritmo