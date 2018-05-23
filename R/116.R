t<-50
fn<-function(x,z){
  n<-1:as.integer(x/z)
  n<-factorial(x-((z-1)*n))/(factorial(x-(z*n))*factorial(n))
  sum(n)
}
sum(sapply(2:4, function(z) fn(t,z)))
