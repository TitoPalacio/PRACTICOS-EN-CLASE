
	Funcion claseVehiculo = Ftasamaxima ( tasamaxima, indice )
		Segun claseVehiculo  Hacer
			"C":
				Escribir "Ingrese su indice de alcohol"
				Leer indice 
				Si indice>=0.3 Entonces
					Escribir "Positivo en control de alcoholemia, no debe manejar"
				SiNo
					Escribir "Negativo en control de alcoholemia, siga con su ruta"
				Fin Si
			"A":
				
				Escribir "Ingrese su indice de alcohol"
				Leer Indice 
				Si indice>=0.3 Entonces
					Escribir "Positivo en control de alcoholemia, no debe manejar"
				SiNo
					Escribir "Negativo en control de alcoholemia, siga con su ruta"
				Fin Si
			"M":
				Escribir "Ingrese su indice de alcohol"
				Leer Indice 
				Si indice>=0.3 Entonces
					Escribir "Positivo en control de alcoholemia, no debe manejar"
				SiNo
					Escribir "Negativo en control de alcoholemia, siga con su ruta"
				Fin Si
			De Otro Modo:
				Escribir "Ingrese su indice de alcohol"
				Leer Indice 
				Si indice>=0.5 Entonces
					Escribir "Positivo en control de alcoholemia, no debe manejar"
				SiNo
					Escribir "Negativo en control de alcoholemia, siga con su ruta"
				Fin Si
		fin segun  
		
	Fin Funcion
	
	Algoritmo IndiceAlcoholemia 
		Definir claseVehiculo Como Caracter
		Definir indice Como Real
		Escribir "Por favor, ingrese la clase de vehiculo conduce, marque la inicial según lo ordenado:"
		Escribir "C para Camión"
		Escribir "A para Autobús"
		Escribir "T para Turismo"
		Escribir "M para Motocicleta"
		Leer claseVehiculo
		
		claseVehiculo= Ftasamaxima (claseVehiculo,indice)
FinAlgoritmo