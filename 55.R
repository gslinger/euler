reversenum<-function(x) as.numeric(paste(rev(strsplit(as.character(x),"")[[1]]),collapse=""))
is.palin <- function(x){
  i<-strsplit(as.character(x),"")[[1]]
  all(i==rev(i))
}

t<-c()
for(j in 1:10000){
  p<-j
  for(i in 1:50){
    n<-p+reversenum(p)
    if(is.palin(n)==TRUE) break
    p<-n
  }
  if(i==50) t<-c(t,j)
}

print(length(t))


#note options(scipen=999) is needed for this!
