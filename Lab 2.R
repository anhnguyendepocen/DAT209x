my.function<-function(x){
  return(c(min(x),median(x),mean(x),max(x))) 
}

k<-1000
r<-100
set.seed(5556)
x <- as.data.frame(matrix(rnorm(k*r),nrow=r))

time1<-as.numeric(Sys.time())
my.summary<-matrix(nrow=4,ncol=k)
for (i in 1:k) {
  my.summary[1,i] <- min(x[,i])
  my.summary[2,i] <- median(x[,i])
  my.summary[3,i] <- mean(x[,i])
  my.summary[4,i] <- max(x[,i])
}
time2<-as.numeric(Sys.time())

my.summary <- sapply(x,my.function)
time3<-as.numeric(Sys.time())

(time2-time1)/(time3-time2)
