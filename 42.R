t<-c()
r<-scan("X:/t.txt",sep=",",what="",na.strings="")
for(i in 1:length(r)){
  d<-unlist(strsplit(r[i],""))
  d<-sapply(d, function(z) match(z,LETTERS))
  if((0.5*sqrt((8*sum(d)) + 1) - 0.5)%%1==0) t<-c(t,sum(d))
}
length(t)
