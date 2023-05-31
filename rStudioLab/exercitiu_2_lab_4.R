par(mfrow = c(2,1))
windows()
plot(function(x) dnorm(x,log = TRUE),-60,50,
     main = "log { Normal density}")
curve(log(dnorm(x)),add = TRUE,col = "red",lwd=2)
mtext("dnorm(x,log=TRUE)",adj=0)
mtext("log(dnorm(x))",col="red",adj=1)
plot(function(x) pnorm(x,log.p=TRUE),-50,10,
     main = "log{ Normal Cumulative }")
curve(log(pnorm(x)),add=TRUE,col="red",lwd=2)
mtext("pnorm(x,log=TRUE)",adj=0)
mtext("log(pnorm(x))",col = "red",adj=1)
erf <-function(x) 2 * pnorm(x * sqrt(2))-1
erfc <- function(x) 2 * pnorm(x * sqrt(2),lower=FALSE)
erfinv <- function(x) qnorm((1+x)/2)/sqrt(2)
erfcinv <-function(x) qnorm(x/2,lower=FALSE)/sqrt(2)
