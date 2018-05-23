"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

https://projecteuler.net/problem=3
"""


def fn(x):
    p = 2
    while x > p:
        while x % p == 0:
            x /= p
        p += 1
    return p

answer = fn(600851475143)