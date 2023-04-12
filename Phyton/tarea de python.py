def factorial(n):
    """Función que calcula el factorial de un número"""
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# Pedimos al usuario que introduzca el número para calcular su factorial
num = int(input("Introduce un número entero positivo: "))

# Calculamos el factorial del número introducido
fact = factorial(num)

# Mostramos el factorial como tabla
print("Tabla de factorial de", num)
print("Número\tFactorial")
print("---------------------")
for i in range(1, num+1):
    print(i, "\t", factorial(i))