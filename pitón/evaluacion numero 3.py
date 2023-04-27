import math

def is_prime(n):
    if n <= 1:
        return False
    elif n == 2:
        return True
    elif n % 2 == 0:
        return False
    else:
        for i in range(3, int(math.sqrt(n))+ 3 , 2):
            if n % i == 0:
                return False
        return True

def sum_series(n):
    series = []
    num =2 
    while num <= n:
        series.append(num)
        if num % 3== 0:
            num += 2
        else:
            num += 3
          
            
    return series

def sum_results(series):
    return sum(series)

def average_even(series):
    even_nums = [x for x in series if x % 2 == 0]
    return sum(even_nums) / len(even_nums)

def count_primes(series):
    primes = [x for x in series if is_prime(x)]
    return len(primes)

n = 1800
series = sum_series(n)

print("Serie:", series)
print("Total de resultados:", sum_results(series))
print("Promedio de números pares:", average_even(series))
print("Cantidad de números primos:", count_primes(series))