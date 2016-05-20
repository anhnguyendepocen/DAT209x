tapply(presidents, cycle(presidents), mean, na.rm = TRUE)

tapply(airquality$Solar.R, cut(airquality$Wind, 10), mean, na.rm = TRUE)
tapply(airquality$Solar.R, cut(airquality$Wind, 2*(1:11)-1), mean, na.rm = TRUE)

summary(swiss$Agriculture)
aCut <- with(swiss, cut(Agriculture, 9*(1:11)-8))
summary(swiss$Catholic)
cCut <- with(swiss, cut(Catholic,10*(1:11)-9))
tapply(swiss$Fertility, list(aCut, cCut), mean, na.rm = TRUE)

colMeans(airquality)
sapply(airquality, mean) 

tapply(chickwts$weight, chickwts$feed, mean) 
aggregate(weight~feed, data=chickwts, mean) 
by(chickwts$weight, chickwts$feed, mean) 

with(airquality, table(Month, Temp < 65)) 
table(LowTemp = airquality$Temp < 65, airquality$Month) 

prop.table(with(airquality, table(Month, Temp > 80)),1) 
prop.table(with(airquality, table(Temp > 80, Month)),2) 

lapply(airquality, mean)
as.list(sapply(airquality, mean)) 
