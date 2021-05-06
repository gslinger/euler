"""
Even Fibonacci numbers
https://projecteuler.net/problem=2
"""
from typing import Generator


def sum_even_fibonacci_terms(limit: int) -> int:
    def fn() -> Generator:
        a, b = 0, 1
        while a < limit:
            if not a % 2:
                yield a
            a, b = b, a + b
    return sum(fn())


print(sum_even_fibonacci_terms(4000000))
# 5.23 µs ± 210 ns per loop (mean ± std. dev. of 5 runs, 25 loops each)
