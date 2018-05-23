x<-as.matrix(read.csv("t.txt",header=F, sep= " "))

t<-c()
for(i in 1:16) for(j in 1:20) t<-c(t,prod(x[j,i:(i+3)]))
for(i in 1:16) for(j in 1:20) t<-c(t,prod(x[i:(i+3),j]))
for(i in 1:16) for(j in 1:16) t<- c(t,x[i,j]*x[(i+1),(j+1)]*x[(i+2),(j+2)]*x[(j+3),(j+3)])
for(i in 20:4) for(j in 20:4) t<- c(t,x[i,j]*x[(i-1),(j-1)]*x[(i-2),(j-2)]*x[(j-3),(j-3)])
for(i in 1:16) for(j in 4:16) t<-c(t,x[i,j]*x[(i+1),(j-1)]*x[(i+2),(j-2)]*x[(i+3),(j-3)])
print(max(t))

#HORRENDOUS code. Need to fix this. Also missing 20:4, 1:16 diagonal. 
# would  make more sense for 1 loop. 4:16 to 4:16 and check each direction. 

