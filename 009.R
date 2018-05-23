c=1000
s<-seq(as.integer(sqrt(c)/2),as.integer(sqrt(c/2)))
m<-s[which((c/(2*s)-s)%%1==0 & s>(c/(2*s)-s))]
(m^2-(c/(2*m)-m)^2)*(2*m*(c/(2*m)-m))*(m^2+(c/(2*m)-m)^2)
