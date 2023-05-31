nr=8;media=2;devs=4;
y=rnorm(nr,mean=2,sd=4)
hist(y,probability=TRUE,col="lightgray",
     main="Histograma valorilor y=rnorm(200,mean=2,sd=4)",
     xlab="Valorilor lui y",
     ylab="Densitatea valorilor lui y",cex.axis=1.5,
     cex.lab=1.5)
x1=seq(-6,10,length=100)
y1=dnorm(x1,mean=2,sd=4)
lines(x1,y1, lwd=3)
ex=expression(paste(rho,"(",x,")=",frac(1,
  4*sqrt(2*pi))," ",
  plain(e)^{frac(-(x-2)^2,2%*%4^2)}))
text(locator(),ex,cex=1.5)

