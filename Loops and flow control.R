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
<<<<<<< HEAD
      cat(paste("The mean of row number", i, "is", mean(lines[i,]), "\n"))
=======
      cat(paste("The mean of row number", i, "is", mean(line), "\n"))
>>>>>>> d0e671c3a91525003bcd7a567512c1ed2453abec
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
