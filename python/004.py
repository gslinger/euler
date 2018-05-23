"""
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

https://projecteuler.net/problem=4
"""
import time as t


def fn():
    a = 0
    for x in range(999, 99, -1):
        for y in range(999, 99, -1):
            xy = x * y
            if xy > a and str(xy) == str(xy)[::-1]:
                a = xy
    return a


print(fn())

# much slower 1-liner
print(max([x * y for x in range(999, 99, -1) for y in range(999, 99, -1) if str(x * y) == str(x * y)[::-1]]))