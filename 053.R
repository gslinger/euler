t<-0
for(n in 1:100) for(r in 0:n) if(factorial(n)/(factorial(r)*factorial((n-r)))>=1e6) t<-t+1
