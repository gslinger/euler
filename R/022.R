s<- (read.csv("X:/t.csv",header=FALSE, stringsAsFactors=FALSE))
s[is.na(s)]<-"NA"
s<- s[order(s$V1),]
n.s <- numeric(length(s))
for(i in 1:length(s)){
  x<-unlist(strsplit(as.character(s[i]),""))
  n.s[i]<-(sum(match(x,LETTERS))*i)
}
print(sum(n.s))
