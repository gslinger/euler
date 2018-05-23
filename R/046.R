library(pracma)
n <- seq(3,10000,2)[which(!isprime(seq(3,10000,2)))]
p <- primes(10000)
t<-c()
for (i in n) {
    x<-sqrt((i-p[p<i])/2)
    if (any(round(x)==x)) next
    t<-c(t,i)
}
min(t)
