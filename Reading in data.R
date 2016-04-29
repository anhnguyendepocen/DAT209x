e5.1 <- read.table('data.exercise5.1.dat', header = TRUE, skip = 1)
e5.2 <- read.table('data.exercise5.2.dat', header = TRUE, skip = 2, sep = ';', dec = ',')
e5.3 <- read.csv('Exercise 5.3.csv', skip = 2)

e5.4f <- file('Exercise 5.4a.txt', 'r')
e5.4at <- scan(e5.4f, what = "", skip = 1, nlines = 1)
e5.4a <- as.data.frame(matrix(scan(e5.4f), byrow = TRUE, ncol = 3))
colnames(e5.4a) <- paste(e5.4at[c(1, 3, 5)], e5.4at[c(2,4,6)])
close(e5.4f)
e5.4a

e5.4f <- file('Exercise 5.4b.txt', 'r')
e5.4b[[1]] <- scan(e5.4f, what = "", skip = 1, nlines = 1)
e5.4b[[2]] <- scan(e5.4f, nlines = 1)
e5.4b[[3]] <- scan(e5.4f, what = "", nlines = 1)
e5.4b[[4]] <- scan(e5.4f, nlines = 1)
e5.4b[[5]] <- scan(e5.4f, nlines = 1)
e5.4b[[6]] <- scan(e5.4f, nlines = 1)
e5.4b[[7]] <- scan(e5.4f, nlines = 1)
close(e5.4f)
e5.4b

vec <- readLines("dat.txt")
vec <- strsplit(vec[2]," ")
vec <- as.numeric(vec[[1]])
