library(pracma)

fn<-function(x) prod(unique(factors(x)))
n<-1:100000
rad<-sapply(n, function(z) prod(unique(factors(z))))

df<-data.frame(n,rad)
df <- df[order(df$rad),]
print(df[10000,1])
