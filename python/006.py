"""
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

https://projecteuler.net/problem=6
"""
import pandas as pd


def fn():
    # 514 µs ± 30.3 µs per loop (mean ± std. dev. of 7 runs, 20 loops each)
    x = pd.Series(range(1, 101))
    return (x.sum() ** 2) - x.apply(lambda x: x ** 2).sum()


print(fn())


""" Solution i found online and implemented - Significantly faster"""


def fn2(n):
    # 1.15 µs ± 72.5 ns per loop (mean ± std. dev. of 7 runs, 20 loops each)
    return int((n**2*(n+1)**2*(1/4)) - (n*(n+1)*((2*n)+1)*(1/6)))


print(fn2(100))
