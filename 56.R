library(gmp)
t<-0
for(a in 11:99) for(b in 1:99) t<-c(t,(as.numeric(sum(as.bigz(unlist(strsplit(as.character(pow.bigz(a,b)),"")))))))
max(t)
