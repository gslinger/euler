for(x in 1e5:1e6){
  n<-c(x,x*2,x*3,x*4,x*5,x*6)
  n<-sapply(n, function(z) as.numeric(paste(sort(unlist(strsplit(as.character(z),""))),collapse="")))
  if(var(n)==0) break
}
print(x)

