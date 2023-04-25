import random

# Lista de equipos
equipos = ['Equipo1', 'Equipo2', 'Equipo3', 'Equipo4', 'Equipo5', 'Equipo6', 'Equipo7', 'Equipo8']

# Comprobar que el número de equipos es múltiplo de 4
if len(equipos) % 4 != 0:
    print("El número de equipos no es múltiplo de 4")
else:
    # Emparejamiento de equipos para la primera ronda
    random.shuffle(equipos)
    emparejamientos = []
    for i in range(0, len(equipos), 2):
        emparejamientos.append((equipos[i], equipos[i+1]))
    print("Primera ronda:")
    for partido in emparejamientos:
        print(partido[0], "vs", partido[1])

    # Resultados de la primera ronda
    resultados = []
    for partido in emparejamientos:
        equipo1 = partido[0]
        equipo2 = partido[1]
        puntuacion1 = 0
        puntuacion2 = 0
        while puntuacion1 < 21 and puntuacion2 < 21:
            # Se juega hasta que uno de los equipos llegue a 21 puntos
            if random.random() < 0.5:
                puntuacion1 += 1
            else:
                puntuacion2 += 1
        resultado = (equipo1, puntuacion1), (equipo2, puntuacion2)
        resultados.append(resultado)
    print("Resultados de la primera ronda:")
    for resultado in resultados:
        print(resultado[0][0], resultado[0][1], "-", resultado[1][0], resultado[1][1])

    # Emparejamiento de equipos para la segunda ronda
    equipos_ganadores = []
    for resultado in resultados:
        if resultado[0][1] > resultado[1][1]:
            equipos_ganadores.append(resultado[0][0])
        elif resultado[1][1] > resultado[0][1]:
            equipos_ganadores.append(resultado[1][0])
        else:
            # En caso de empate se juega un tercer partido
            equipo1 = resultado[0][0]
            equipo2 = resultado[1][0]
            puntuacion1 = 0
            puntuacion2 = 0
            while puntuacion1 == puntuacion2:
                if random.random() < 0.5:
                    puntuacion1 += 1
                else:
                    puntuacion2 += 1
            if puntuacion1 > puntuacion2:
                equipos_ganadores.append(equipo1)
            else:
                equipos_ganadores.append(equipo2)
    random.shuffle(equipos_ganadores)
    emparejamientos = []
    for i in range(0, len(equipos_ganadores), 2):
        emparejamientos.append((equipos_ganadores[i], equipos_ganadores[i+1]))
    print("Segunda ronda:")
    for partido in emparejamientos:
        print(partido[0], "vs", partido[1])

    # Resultados de la segunda ronda
    resultados = []
    for partido in emparejamientos:
        equipo1 = partido[0]
        equipo2 = partido[1]
