i<-144
while(TRUE){
  x<-i*((2*i)-1)
  if(((sqrt(1 + 24*x)+1)/6)%%1==0) break
  i<-i+1
}
