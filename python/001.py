"""
Multiples of 3 and 5
https://projecteuler.net/problem=1
"""


def multiples_of_a_and_b(n: int, a: int, b: int) -> int:
    fn = lambda x: x * ((n - 1) // x) * (1 + ((n - 1) // x)) // 2
    return fn(a) + fn(b) - fn(a * b)


print(multiples_of_a_and_b(1000, 3, 5))
# 1.46 µs ± 36.7 ns per loop (mean ± std. dev. of 5 runs, 25 loops each)