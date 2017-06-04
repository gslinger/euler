library(gmp)
n<-unlist(strsplit(as.character(as.bigz(paste(1:500000,collapse=""))),""))
s<-sapply(c(1,10,100,1000,10000,100000,1000000),function(z) n[z])
print(prod(as.numeric(s)))
