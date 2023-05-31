m=1500
sigma=200
n=25
z_alpha=-2.33
xc=m+sigma/sqrt(n)*z_alpha
xc
m1=1400
a=z_alpha+((m-m1)/sigma)*sqrt(n)
a
integrate(dnorm,-Inf,a)

