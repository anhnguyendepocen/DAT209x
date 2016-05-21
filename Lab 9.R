my.data <- read.csv('Lab10.csv', header = TRUE)
dim(my.data)

data1<-my.data$systolic.bp[my.data$Genotype=="BA"] 
data2<-my.data$systolic.bp[my.data$Genotype=="BB"] 

testResult <- t.test(data1,data2)
testResult$statistic
testResult$p.value
  
plot(density(data1))
lines(density(data2), lty = 2)

doIt <- function() {
  my.data1 <- my.data
  my.data1$Genotype <- 'BB'
  index.temp <- sample(1:50, size = 26)
  my.data1$Genotype[index.temp] <- 'BA'
  data1a<-my.data$systolic.bp[my.data1$Genotype=="BA"] 
  data2a<-my.data$systolic.bp[my.data1$Genotype=="BB"] 
  testResult1 <- t.test(data1a,data2a)
  as.numeric(testResult1$statistic)
}

set.seed(1234)
doIt()

set.seed(554)
my.t.values <- replicate(100000, doIt())
mean(abs(my.t.values) > 2.2027)

