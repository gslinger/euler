as.P = function(x) x*(3*x-1)/2
is.P = function(x) ((sqrt(1 + 24*x) + 1 ) / 6)%%1==0
b = as.data.frame(t(combn(as.P(1000:2400),2))) 
b$V3 = b[2]-b[1]
b$V4 = b[2]+b[1]
print(b[is.P(b[3])&is.P(b[4]),][3])
