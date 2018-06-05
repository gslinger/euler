def fn(x):
    return x * int(999 / x) * (1 + int(999 / x)) / 2

answer = int(fn(3) + fn(5) - fn(15))

print(answer)
