library(gmp)
t<-read.csv("X:/t.txt",header=FALSE)
b<-c(0,0)
for(i in 1:1000){
  x<-pow.bigz(t[i,1],t[i,2])
  if(x>b[1]) b<-c(x,i)
}
print(b[2])

##COULD USE LOG FOR EFFICIENCY AND LESS MEMORY USAGE
