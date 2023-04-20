def decimal_a_binario(decimal):
    binario = ''
    while decimal >= 1:
        residuo = decimal % 2
        binario = str(residuo) + binario
        decimal = decimal // 2
    return binario


num_decimal = int(input("Ingrese el número decimal que desea convertir a binario: "))


binario = decimal_a_binario(num_decimal)


print("El número binario correspondiente es:", binario)
def binario_a_decimal(binario):
    decimal = 0
    exponente = len(binario) - 1
    for digito in binario:
        decimal += int(digito) * 2**exponente
        exponente -= 1
    return decimal


num_binario = input("Ingrese el número binario que desea convertir a decimal: ")


decimal = binario_a_decimal(num_binario)


print("El número decimal correspondiente es:", decimal)

