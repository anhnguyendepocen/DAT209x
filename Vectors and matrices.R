matrix(1:6, nrow = 3, ncol = 3)
matrix(nrow = 3, ncol = 3)

x<-matrix(1:12,4)
x
x[cbind(c(1,3,2),c(3,3,2))]

x[c(1,3,2),c(3,3,2)]

row<- matrix(rep(1:100,100),nrow=100)
column<-matrix(rep(1:100,100),nrow=100,byrow=T)
A<-3*column^3/(1+row*column)

sum(A)
sum(A[row<=column])

x<-1:3 
y<-seq(4,8) 
z<-rep(9:10,1)
xyz<-c(x,y,z)
length(xyz)

x<-1:10
x[2*(1:5)-1] 
