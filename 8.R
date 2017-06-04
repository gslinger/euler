#I don't like this solution=/

n<-as.numeric(unlist(strsplit(paste(scan("X:/t.txt",what=""),collapse=""),"")))
x<-13
products<-numeric()
for(i in 1:(1000-(x-1))){
  products<-c(products,prod(n[i:(i+(x-1))]))
}
max(products)
