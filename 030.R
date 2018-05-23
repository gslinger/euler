x<-numeric()
for(i in 2:(9^6)){
  s<-as.numeric(unlist(strsplit(as.character(i),"")))
  if(sum(sapply(s, function(x) x^5))==i)  x<-c(x,i)
}
sum(x)

#slow needs improving
