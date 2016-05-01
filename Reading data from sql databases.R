library(RODBC)
source("conn.txt")
conn <- odbcDriverConnect(connStr)
sqlColumns(conn, 'bi.sentiment')
q <- 'select count(*) from bi.sentiment'
sqlQuery(conn, q)

q <- "
  select Date, avg(Score) as Average_Score
  from bi.sentiment
  where State = 'WA'
  group by Date"
ds <- sqlQuery(conn, q)

close(conn)

detach("package:RODBC", unload=TRUE)
