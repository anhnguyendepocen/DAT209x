data.frame.x<-  data.frame(names=c("Gretha","Robert","John","Heather"),
                           age=c(30,18,25,70),
                           nickname=c("Quicksilver","The Man","Nifty","Starlight"))
data.frame.y <- data.frame("Person_name"=c("William","Nancy","Charlotte","Henry"),
                           age=c(15,75,32,51),
                           "pet_dog" = c("King","Whity","Captain Vom","Doggie"))

res <- merge(data.frame.x, data.frame.y)
res

data.frame.z <- merge(data.frame.y, data.frame.x, by.x = c('Person_name', 'age'),
                                                  by.y = c('names', 'age'), all = TRUE)
data.frame.z

setosa.data <- subset(subset(iris, Species == 'setosa', select = -Species), Sepal.Length < median(iris$Sepal.Length, na.rm = TRUE))
summary(setosa.data)

my.text <-  "Over the last decade, bluetongue virus have spread northwards from the mediterranean area. Initially this was ascribed to climate changes, but it has since been realized that a major contributing factor has been new transmitting vectors, culicoides obsoletus and culicoides pulicaris, which have the ability to aquire and transmit the disease. Recently, schmallenberg virus has emerged in northern europe, transmitted by biting midges as well."
lower.case <- c('bluetongue', 'culicoides', 'europe','mediterranean', 'northern','schmallenberg')
upper.case <- c('Bluetongue', 'Culicoides', 'Europe','Mediterranean', 'Northern','Schmallenberg')
for (i in 1:length(lower.case)) {
  my.text <- gsub(lower.case[i], upper.case[i], my.text)
}
my.text

set.seed(885)
my.posixct <- as.POSIXct(sample((60*60*24*365*50):(60*60*24*365*55),20), origin = as.Date("1960-01-01"))
my.posixct

my.posixct2 <- my.posixct + (60*60*2+60*30+10)
my.posixct2

out <- as.data.frame(my.posixct)
out[,'my.posixct2'] <- my.posixct2
head(out)
rm(out)

df <- data.frame(c(1,2,3),c("apple:3 Orange:9 banana:2", "Orange:1 Apple:3 banana:10", "banana:3 Apple:3 Orange:04"))
colnames(df) <- c('preson.ID', 'fruit')
pattern <- '.*banana[:]([0-9]*).*'
bananaVec <- as.numeric(sub(pattern, '\\1', df$fruit, ignore.case = TRUE))

