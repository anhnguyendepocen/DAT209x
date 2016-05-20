set.seed(256)
par(mfrow=c(3,3))
for (i in 1:9) {
  hist(rnorm(n = 25), probability = TRUE)
  curve(dnorm, add=TRUE, col='red', lwd=3)
}

my.ozone <- airquality$Ozone[!is.na(airquality$Ozone) & airquality$Ozone>1]
mean.1 <- mean(my.ozone)
sd.1 <- sd(my.ozone)
pts <- rnorm(length(my.ozone), mean = mean.1, sd = sd.1)
qqplot(my.ozone, pts)
lines(1:150)

mean.2 <- mean(log(my.ozone))
sd.2 <- sd(log(my.ozone))
ptsl <- rnorm(length(my.ozone), mean = mean.2, sd = sd.2)
qqplot(log(my.ozone), ptsl)
lines(1:5)

set.seed(457778)
y <- numeric(1000)
for (i in 1:1000) {
  x <- sum(sample(1:6, 2, replace = TRUE))
  y[i] <- sum(sample(1:6, x, replace = TRUE))
}
hist(y)

rnorm(3, mean=2, sd=1) 

n<-10000 
doone <- function(){ 
  x<-rbinom(1,50,1/6) 
  p<-x/50 
  p 
} 
p.sim<-replicate(n,doone())
mean(p.sim)
