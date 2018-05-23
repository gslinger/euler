#Since a lot of functions need reusing ill add some of my frequently used functions here. 
ndigit<-function(x,z) unlist(strsplit(as.character(x),""))[z]
as.pentagonal <- function(x) x*(3*x-1)/2
is.pentagonal <- function(x) ((sqrt(1 + 24*x) + 1 ) / 6)%%1==0
fib <- function(x) (1/sqrt(5))*((((1+sqrt(5))/2)^x)-(((1-sqrt(5))/2)^x))
reversenum<-function(x) as.numeric(paste(rev(strsplit(as.character(x),"")[[1]]),collapse=""))
is.palin <- function(x){
  i<-strsplit(as.character(x),"")[[1]]
  all(i==rev(i))
}
numtodig<-function(x) as.numeric(unlist(strsplit(as.character(x),"")))
  
#simple formula to check if x is permutation of z. works for chars and numbers, returns true/false
#may add additional argument parameters for more numbers.. 
is.permutation<-function(x,z){
  all(sort(unlist(strsplit(as.character(x),"")))==sort(unlist(strsplit(as.character(z),""))))
}
  
#slight adaptation of above formula for pandigital
#currently includes 0, can remove. May also include second argument to select how many digits, 1-5 pandigital, etc. 
  
is.pandigital<-function(x){
  as.numeric(paste(sort(unlist(strsplit(as.character(x),""))),collapse=""))==0123456789
}


  ##Formula for Greatest common denominator using Euclidean Algorithm. 
GCD<-function(x,y){
  while(y!=0){
    rem<-x%%y
    x=y
    y=rem
  }
  GCD<-x
}
  
## big exponentials. needs combining with a package containing more precise calculations. uses A2 × M = (AM)^2
PWR<-function(x,y){
  tot<-1
  n<-2
  while((n+1)<y){
    tot<-tot*(x^n)
    n<-n*2
  }
  PWR<-tot
}
