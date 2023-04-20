def numero_a_romano(num):
    valores = {
        1000: 'M',
        900: 'CM',
        500: 'D',
        400: 'CD',
        100: 'C',
        90: 'XC',
        50: 'L',
        40: 'XL',
        10: 'X',
        9: 'IX',
        5: 'V',
        4: 'IV',
        1: 'I'
    }
    romano = ''
    for valor, letra in valores.items():
        while num >= valor:
            romano += letra
            num -= valor
    return romano


num = int(input("Ingrese el número que desea convertir a letras romanas: "))


romano = numero_a_romano(num)


print("El número romano correspondiente es:", romano)
def romano_a_numero(romano):
    valores = {
        'M': 1000,
        'CM': 900,
        'D': 500,
        'CD': 400,
        'C': 100,
        'XC': 90,
        'L': 50,
        'XL': 40,
        'X': 10,
        'IX': 9,
        'V': 5,
        'IV': 4,
        'I': 1
    }
    num = 0
    i = 0
    while i < len(romano):
        if i+1 < len(romano) and romano[i:i+2] in valores:
            num += valores[romano[i:i+2]]
            i += 2
        else:
            num += valores[romano[i]]
            i += 1
    return num


romano = input("Ingrese el número romano que desea convertir a decimal: ")


decimal = romano_a_numero(romano)


print("El número decimal correspondiente es:", decimal)
