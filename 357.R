library(pracma)

divisors <- function(x) {
  seq_len(x)[x%%seq_len(x) == 0]
}

t<-c(0,0,0)
p<-primes(100000001)-1

for(i in 1:5761455){
  c<-divisors(p[i])
  for(j in 1:(length(c))){
    if(isprime(c[j]+p[i]/c[j])==0) break
  }
  if(j==(length(c))) {
    t[3]<-t[3]+p[i]
    t[2]<-p[i]
    t[1]<-i
    print(t)
  }
}


#THIS IS VERY SLOW. Further optimization needed. Maybe limitation of R
