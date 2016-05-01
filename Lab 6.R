library(RODBC)
source("conn.txt")
conn <- odbcDriverConnect(connStr)
my.data.frame <- sqlQuery(conn,
                         "SELECT SUM(Revenue), SUM(Units), ProductID
                         FROM bi.salesFact
                         WHERE Date > '2013-12-31' AND Date < '2015-01-01'
                         GROUP BY ProductID"
)
close(conn)

names(my.data.frame)<-c("SUM(Revenue)","SUM(Units)","ProductID") 
head(my.data.frame[order(my.data.frame$'SUM(Units)', decreasing = TRUE),], n = 5)
head(my.data.frame[order(my.data.frame$`SUM(Revenue)`, decreasing = TRUE),], n = 5)

detach("package:RODBC", unload=TRUE)
