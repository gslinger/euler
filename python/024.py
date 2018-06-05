import itertools as it
from python.timeit import timeit

print(''.join(list(it.permutations('0123456789'))[999999]))

#faster solution from euler forums
print(''.join(next(it.islice(it.permutations('0123456789'), 999999, None))))