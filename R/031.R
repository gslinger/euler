c <- c(1,2,5,10,20,50,100,200)
fn <- function(m, n) {
  if (n ==1)
    return(1)
  s <- 0
  for (i in 1:n) {
    r <- m-c[i]
    if(r==0)
      s <- s+1
    if(r>0)
      s <- s+fn(r,i)
  }
  return(s)
}
fn(200,8)

#recursive approach.
# also a math solution : taylor series 
