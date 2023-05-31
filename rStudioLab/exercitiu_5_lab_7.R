x1 <- c(68,82,95,109,112,76,81)
x2 <- c(66,88,106,121,116,79,89)
summary(x1)
summary(x2)
x1 = cumsum(x1)
x1
x2 = cumsum(x2)
x2
f1 <- ecdf(x1)
f1
f2 <- ecdf(x2)
f2
op <- par(mfrow = c(1,2))
plot(f1,do.points = FALSE, verticals = TRUE)
grid(10,10,lwd = 2)
plot(f2,do.points = FALSE, verticals = TRUE)
grid(10,10,lwd = 2)
ks.test(x1,x2)
