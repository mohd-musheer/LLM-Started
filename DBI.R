install.packages('DBI')
install.packages('RMySQL')
library(DBI)
library(RMySQL)
con<-dbConnect(MySQL(),
               host='localhost',
               username='root',
               password='',
          )

dbExecute(con,'CREATE DATABASE std4')

dbExecute(con, 'USE std4')

dbExecute(con,"CREATE TABLE std (
              id INT,
              name VARCHAR(50),
              class INT
              ) ")
dbExecute(con, "INSERT INTO std values
          (1,'abc',12),
          (2,'egf',13)")
dbReadTable(con,'std')

