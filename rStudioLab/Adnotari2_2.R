x1=runif(1000);X2=rnorm(1000,mean=1,sd=1);
par(mfrow=c(1,2));
qqnorm(x2,main="Q-Q norm pentru o selectie normala",
       xlab="Cuantile teoretice",ylab="x2=rnorm(100,mean=1,sd=1)",
       pch="+");
qqplot(x1,x2,main="Q-Q plot pentru doua selectii",pch="+",
       xlab="x1=runif(100)",ylab="x2=rnorm(100,mean=1,sd=1)");
par(mfrow=c(1,1))

