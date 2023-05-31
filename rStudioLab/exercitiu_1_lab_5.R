
require(graphics)
windows()
dchisq(1,df = 1:3)
pchisq(1, df = 3)
pchisq(1, df = 3, ncp = 0:4)
x <- 1:10
all.equal(dchisq(x, df = 2), dexp(x, 1/2))
all.equal(pchisq(x, df = 2), pexp(x, 1/2))
z0 <- rchisq(100 , df=0,ncp=2)
graphics::stem(z0)
L <- 1.2;n<-1000;pp <-ppoints(n)
op <- par(mfrow = c(3,3),mar=c(3,3,1,1)+.1,mgp=c(1.5,.6,0),oma=c(0,0,3,0))
for(df in 2^(4*rnorm(9)))
{
plot(pp,sort(pchisq(rr <- rchisq(n,df=df,ncp = L),df=df,ncp=L)),
     ylab="pchisq(rchisq(.),.)",pch=".") 
  mtext(paste("df= ",formatC(df,digits = 4)),
        line = -2, adj = 0.05)
  abline(0,1,col = 2)
}
mtext(expression("P-P plots: Noncentral "*
                   chi^2 *"(n=1000,df=x,ncp=1.2)"),
cex=1.5,font=2,outer=TRUE)
par(op)
lam<-seq(0,100,by=.25)
p00<-pchisq(0,df=0,ncp=lam)
p.0<-pchisq(1e-300,df=0,ncp=lam)
stopifnot(all.equal(p00, exp(-lam/2)),
          all.equal(p.0, exp(-lam/2)))
