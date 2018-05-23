"""
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

from sympy import sieve
import pandas as pd

# Probably considered cheating :-)
print(pd.Series(sieve.primerange(1, 2e6)).sum())

# 96.4 ms ± 423 µs per loop (mean ± std. dev. of 7 runs, 10 loops each)