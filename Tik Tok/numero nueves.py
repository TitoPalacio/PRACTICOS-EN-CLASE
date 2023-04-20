def numeros_con_9(numero):
    numeros_con_9 = []
    for i in range(numero + 1):
        if '9' in str(i):
            numeros_con_9.append(i)
    return numeros_con_9
n = input("Ingrese un número: ") # Pedir al usuario que ingrese un número
nueves = [] # Crear una lista vacía para almacenar los dígitos "9"
for digito in n: # Iterar sobre cada dígito del número
    if digito == "9": # Si el dígito es "9"
        nueves.append(digito) # Agregarlo a la lista de dígitos "9"
if nueves: # Si se encontraron dígitos "9"
    print(f"El número {n} contiene los dígitos {', '.join(nueves)}") # Mostrar los dígitos encontrados
else: # Si no se encontraron dígitos "9"
    print(f"El número {n} no contiene ningún dígito '9'") # Indicar que no se encontraron dígitos
numeros = numeros_con_9(999)
print(numeros)
      