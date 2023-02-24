Algoritmo BoletaDeNotas
	// Pedir el nombre del estudiante
	Escribir "Ingrese el nombre del estudiante: "
	Leer nombre_estudiante
	Escribir "Ingrese el nombre de la materia"
	Leer nombre_materia
	
	// Pedir los datos del estudiante
	Escribir "Evaluaci�n Continua:"
	
	Escribir "Ingrese la cantidad de puntos obtenidos en Pr�cticos en Casa (10 puntos): "
	Leer practicos_casa
	Mientras practicos_casa > 10 Hacer
		Escribir "Error: La cantidad de puntos ingresada es mayor que la m�xima permitida."
		Escribir "Ingrese la cantidad de puntos obtenidos en Pr�cticos en Casa (10 puntos): "
		Leer practicos_casa
	Fin Mientras
	
	Escribir "Ingrese la cantidad de ex�menes escritos que dio el estudiante (m�ximo 3): "
	Leer num_examenes_escritos
	examenes_escritos = 0
	Si num_examenes_escritos > 3 Entonces
		Escribir "Error: El estudiante no puede dar m�s de 3 ex�menes escritos."
		Escribir "Ingrese la cantidad de ex�menes escritos que dio el estudiante (m�ximo 3): "
		Leer num_examenes_escritos
	Fin Si
	Para i = 1 Hasta num_examenes_escritos Con Paso 1 Hacer
		Escribir "Ingrese la cantidad de puntos obtenidos en el examen escrito ", i, " (m�ximo 10 puntos): "
		Leer puntos_examen_escrito
		Si puntos_examen_escrito > 10 Entonces
			Escribir "Error: El estudiante no puede obtener m�s de 10 puntos en un examen escrito."
			Escribir "Ingrese la cantidad de puntos obtenidos en el examen escrito ", i, " (m�ximo 10 puntos): "
			Leer puntos_examen_escrito
		Fin Si
		examenes_escritos = puntos_examen_escrito + puntos_examen_escrito + puntos_examen_escrito + examenes_escritos
Fin Para
	
	Escribir "Ingrese la cantidad de puntos obtenidos en Defensa y Seguimiento de Proyecto Grupal Social (40 puntos): "
	Leer proyecto_grupal_social
	Mientras proyecto_grupal_social > 40 Hacer
		Escribir "Error: La cantidad de puntos ingresada es mayor que la m�xima permitida."
		Escribir "Ingrese la cantidad de puntos obtenidos en Defensa y Seguimiento de Proyecto Grupal Social (40 puntos): "
		Leer proyecto_grupal_social
	Fin Mientras
	
	Escribir "Ingrese la cantidad de puntos obtenidos en Proyectos y Pr�cticos en Clase (10 puntos): "
	Leer proyectos_clase
	Mientras proyectos_clase > 10 Hacer
		Escribir "Error: La cantidad de puntos ingresada es mayor que la m�xima permitida."
		Escribir "Ingrese la cantidad de puntos obtenidos en Proyectos y Pr�cticos en Clase (10 puntos): "
		Leer proyectos_clase
	Fin Mientras
	
	Escribir "Ingrese la cantidad de puntos obtenidos en Puntualidad (5 puntos): "
	Leer puntualidad
	Mientras puntualidad > 5 Hacer
		Escribir "Error: La cantidad de puntos ingresada es mayor que la m�xima permitida."
		Escribir "Ingrese la cantidad de puntos obtenidos en Puntualidad (5 puntos): "
		Leer puntualidad
	Fin Mientras
	
	Escribir "Ingrese la cantidad de puntos obtenidos en Cooperaci�n (5 puntos): "
	Leer cooperacion
	Mientras cooperacion > 5 Hacer
		Escribir "Error: La cantidad de puntos ingresada es mayor que la m�xima permitida."
		Escribir "Ingrese la cantidad de puntos obtenidos en Cooperaci�n (5 puntos): "
		Leer puntualidad
	Fin Mientras
	
	puntos_evaluacion_continua = practicos_casa + (examenes_escritos/num_examenes_escritos) + proyecto_grupal_social + proyectos_clase + puntualidad + cooperacion
	
	Escribir "Ingrese la cantidad de faltas del estudiante: "
	Leer faltas
	
	Si faltas <= 7 Entonces
		// Pedir la cantidad de puntos obtenidos en la evaluaci�n final
		Escribir "Evaluaci�n Final:"
		Escribir "Ingrese la cantidad de puntos obtenidos en la evaluaci�n final (100 puntos): "
		Leer puntos_evaluacion_final
	Sino
		// Si el estudiante tuvo m�s de 7 faltas, no se habilita la evaluaci�n final
		Escribir "El estudiante no est� habilitado para realizar la evaluaci�n final."
		puntos_evaluacion_final = 0
	Fin Si
	
	// Calcular el promedio total de puntos
	total_puntos = puntos_evaluacion_continua + puntos_evaluacion_final
	promedio = total_puntos / 2
	
	// Determinar si el estudiante aprob� o no
	Si promedio >= 51 Entonces
		Escribir "El estudiante ", nombre_estudiante, " aprob� ", nombre_materia " con un promedio de: ", promedio
	Sino
		Escribir "El estudiante ", nombre_estudiante, " reprob�", nombre_materia " con un promedio de: ", promedio
Fin Si

FinAlgoritmo