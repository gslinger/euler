def collatz(n, c=1):
    while n > 1:
        c += 1
        if n % 2 == 0:
            n = n / 2
        else:
            n = (3 * n) + 1
    return c

maxn = 0
for i in range(500001, 1000000, 2):
    x = collatz(i)
    if x > maxn:
        maxn = x
        maxi = i

print(maxi)


#brute force