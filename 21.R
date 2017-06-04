dv<- function(x)seq_len(x-1) [x%%seq_len(x-1) == 0]
t<-c()
for(i in 2:10000){
  x<-sum(dv(i))
  if(sum(dv(x))==i & i!=x) t<-c(t,i)
}
print(sum(t))
