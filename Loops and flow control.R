checkEm <- function(lines) {
  consNeg <- 0
  for (i in 1:nrow(lines)) {
    hasNeg <- FALSE
    for (item in lines[i,]) {
      if (item < 0) {
        hasNeg <- TRUE
        break()
      }
    }
    if (hasNeg) {
      if (consNeg >= 3) {
        cat("Too many negative values\n")
        break()
      } else {
        cat(paste("<Row", i, "contains negative values>\n"))
        consNeg <- consNeg + 1
      }
    } else {
      cat(paste("The mean of row number", i, "is", mean(lines[i,]), "\n"))
    }
  }
}

set.seed(1786)
data.exercise.3.1<-exp(matrix(rnorm(2000),nrow=100))
index1.temp<-sample(1:100,10)
index2.temp<-sample(1:20,10)
for(i in 1:10){
  data.exercise.3.1[index1.temp[i],index2.temp[i]]<--1
}
checkEm(data.exercise.3.1)

timeIt <- function(s) {
  y<-matrix(rnorm(s^2),nrow=s)
  z<-0*y
  time1<-as.numeric(Sys.time())
  #loop:
  for(i in 1:s){
    for(j in 1:s){
      z[i,j]<-y[i,j]^2
    }
  }
  time2<-as.numeric(Sys.time()) 
  # using object form in R:
  z<-y^2
  time3<-as.numeric(Sys.time()) 
  # run time increase factor:
  return (time2-time1)/(time3-time2)
}

v <- c(10, 20, 50, 100, 200, 500, 800, 1000)
a <- c()
for (i in v) {
  a <- c(a, timeIt(i))
}
a
plot(v, a)
