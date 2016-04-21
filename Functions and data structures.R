paste("R sesion", 1)
a <- data.frame(i=c(1,2,3), j=c(4,5,6))
a+1
b <- data.frame(i=c("1","2","3"), j=c(4,5,6))
b+1

std <- function(v) {
  mu <- mean(v)
  sig <- sd(v)
  (v - mu) / sig
}

v <- rnorm(100, 5, 2)
z <- std(v)
mean(z)
sd(z)
std(c(2))

func <- function(x) {
  3*sin(x/2)+x
}

func(0)
func(-1)
func(pi)

plot(func, -7, 7)
