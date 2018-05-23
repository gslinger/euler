# Project Euler Problem [3] # 
#   by github/aev1tas       #

x <- 600851475143
p <- 2
while(x>p){ 
  while(x %% p == 0){ 
    x=x/p}
  p=p+1}
