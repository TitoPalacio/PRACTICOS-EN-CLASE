def numero_triangular(n):
    return n*(n+1)//2
secuencia = input("Ingrese una secuencia de números separados por comas: ")
numeros = [int(x) for x in secuencia.split(',')]
ultimo_numero = numeros[-1]
n = numeros.index(ultimo_numero) + 2
siguiente_numero = numero_triangular(n)
print("El siguiente número en la serie es:", siguiente_numero)

