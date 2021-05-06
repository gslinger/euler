i<-999
fn <- function(x) {x<- x*as.integer(i/x)*(1+as.integer(i/x))/2}
fn(3)+fn(5)-fn(15)
