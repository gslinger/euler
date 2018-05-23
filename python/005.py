"""
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

https://projecteuler.net/problem=5
"""
from math import gcd

def fn():
    x = 1
    for i in range(1, 21):
        x *= i // gcd(i, x)
    return str(x)

print(fn())


"""
%timeit -n 20 fn()
6.29 µs ± 311 ns per loop (mean ± std. dev. of 7 runs, 20 loops each)
"""