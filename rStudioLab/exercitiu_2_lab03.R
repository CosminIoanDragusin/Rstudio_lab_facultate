sum(dbinom(46:54,100,0.5))
n<-2000
k<-seq(0,n,by=20)
plot(k,dbinom(k,n,pi/10,log=TRUE),type="l",
     ylab="log density",
     main="dbinom(*,log=TRUE) is better than log
     (dbinom(*))")
lines(k,log(dbinom(k,n,pi/10)),col="red",lwd=2)
mtext("dbinom(k,log=TRUE)",adj=0)
mtext("extended range",adj=0,line=-1,font=4)
mtext("log(dbinom(k))",col="red",adj=1)

