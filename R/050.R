library(pracma)
s<-cumsum(primes(1e6))[which(s<1e6)]
s[length(s)]
