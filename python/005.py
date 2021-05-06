"""
Smallest multiple
https://projecteuler.net/problem=5
"""
from math import gcd   # is this cheating? ;)


def smallest_multiple(n: int) -> int:
    x: int = 1
    for i in range(2, (n + 1)):
        x *= i // gcd(i, x)
    return x


print(smallest_multiple(20))
# 3.77 µs ± 62.3 ns per loop (mean ± std. dev. of 5 runs, 25 loops each)
