x<-rnorm(100)
head(x)
mean(x)
mu <- mean(x)
sig <- var(x)
exp(mu + (sig / 2))
exp(mu - (sig / 2))
mean(exp(x))

a <- 1
b <- 3
c <- 1
sol <- c((-b + sqrt(b*b - 4*a*c))/(2*a), (-b - sqrt(b*b - 4*a*c))/(2*a))
round(sol, 1) 
acc1 <- (round(sol, 1) - sol) * 100 / sol

set.seed(1234)
x <- rnorm(100, mean=.5, sd=.3)
mean(x)
sd(x)
hist(x, axes = FALSE)
axis(4)
axis(1)

set.seed(1)
x <- rnorm(100) 
head(x)

x <- 5 : 6 

