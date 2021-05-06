"""
Largest prime factor
https://projecteuler.net/problem=3
"""


def largest_prime_factor(n: int) -> int:
    p: int = 2
    while n > p:
        if n % p == 0:
            n /= p
        p += 1
    return p


print(largest_prime_factor(600851475143))
# 1.07 ms ± 15.7 µs per loop (mean ± std. dev. of 5 runs, 25 loops each)
