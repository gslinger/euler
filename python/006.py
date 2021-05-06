"""
Sum square difference
https://projecteuler.net/problem=6
"""
import pandas as pd
from timeit import timeit


@timeit
def sum_square_difference(n: int):
    x: pd.Series = pd.Series(range(1, (n + 1)))
    return (x.sum() ** 2) - x.apply(lambda y: y ** 2).sum()


print(sum_square_difference(100))


""" Solution i found online and implemented - Significantly faster"""

@timeit
def fn2(n):
    # 1.15 µs ± 72.5 ns per loop (mean ± std. dev. of 7 runs, 20 loops each)
    return int((n**2*(n+1)**2*(1/4)) - (n*(n+1)*((2*n)+1)*(1/6)))


print(fn2(100))
