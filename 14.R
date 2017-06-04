t<-c()
s<-seq(7e5,1e6)

for(x in s){
  p<-x
  c<-1
  while(TRUE){
    if(p%%2==0){p<-p/2}else{p<-(3*p)+1}
    c<-c+1
    if(p==1) break
  }
  t<-c(t,c)
}
s[which(t==max(t))]

#SLOW BRUTE FORCE
#NEEDS OPTIMIZING
