fib <- function(x) (1/sqrt(5))*((((1+sqrt(5))/2)^x)-(((1-sqrt(5))/2)^x))
l<-as.integer(fib(1:100))
sum(l[which((l<4e6)&(l%%2==0))])
