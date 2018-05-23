"""
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

https://projecteuler.net/problem=1
"""



def fn(x):
    return x * int(999 / x) * (1 + int(999 / x)) / 2

answer = int(fn(3) + fn(5) - fn(15))
