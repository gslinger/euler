t<-numeric()
for(i in 3:1e5){
  s<-as.numeric(unlist(strsplit(as.character(i),"")))
  if(sum(sapply(s, function(z) fact(z)))==i) t<-c(t, i)
}
sum(t)

#very slow needs work
