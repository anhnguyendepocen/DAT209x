set.seed(9007)
my.data <- data.frame(x=rnorm(10),y=rnorm(10)+5,z=rchisq(10,1))
additional.data <- data.frame(x=rnorm(3),y=rnorm(3)+5,z=rchisq(3,1))
write.table(my.data, file = "Data/Exercise 6.txt", row.names = FALSE, col.names = FALSE, sep = ', ')
write.table(additional.data, file = "Data/Exercise 6.txt", row.names = FALSE, col.names = FALSE, sep = ', ', append = TRUE)

set.seed(45)
my.data <- data.frame(x=rnorm(10),y=rnorm(10),z=rnorm(10))
write.csv(my.data, file = "data/Exercise 6.2.csv", row.names = FALSE)

save(my.data, file = 'Data/saveFile')
rm(my.data)
load('Data/saveFile')

write.table(mtcars,file = "Data/mtcars.txt")
write.csv(mtcars,file = "Data/mtcarsC.txt",sep = ",")
