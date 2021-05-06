# Project Euler Problem [4] #
#      Brute Force          #

is.palindrome <- function(x) {
  input <- strsplit(as.character(x), "")[[1]]
  all(input == rev(input))
}

input<-outer(900:999,900:999)
input[max(which(sapply(input, is.palindrome)==TRUE))]
