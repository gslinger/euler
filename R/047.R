library(gmp)
sx<-sapply(seq(50000,250000), function(z) length(unique(factorize(z))))
for(i in 1:length(sx)){
  if(sum(sx[i:(i+3)])==16)  break
}
seq(50000,250000)[i]
