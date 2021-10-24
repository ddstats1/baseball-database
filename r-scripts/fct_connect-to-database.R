
library(tidyverse)
library(here)
library(RMySQL)

db <- dbConnect(MySQL(), user = "root", password = "", host = "localhost", 
                port = 3306, dbname = "sys")

dbListTables(db)
