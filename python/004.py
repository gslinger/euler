"""
Largest palindrome product
https://projecteuler.net/problem=4
"""


def largest_palindrome_from_product() -> int:
    a: int = 0
    for x in range(999, 99, -1):
        for y in range(999, x, -1):
            xy: int = x * y
            if xy > a and str(xy) == str(xy)[::-1]:
                a = xy
    return a


print(largest_palindrome_from_product())
# 24.9 ms ± 591 µs per loop (mean ± std. dev. of 5 runs, 25 loops each)
