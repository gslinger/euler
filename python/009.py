"""
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

def fn(n):
    for a in range(3, n):
        for b in range (a + 1, (n-1)):
            c = (a**2 + b**2)**0.5
            if a + b + c == n:
                product = int(a * b * c)
                break
    return product

print(fn(1000))

