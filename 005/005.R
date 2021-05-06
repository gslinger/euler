# Project Euler Problem [5] #
library(gmp)
prod(sapply(seq(1,20+1)[which(isprime(seq(1,20+1))==2)], function(x) x^floor(log(20,x))))
