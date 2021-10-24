
library(tidyverse)
library(tidylog)
library(here)
library(baseballr)

# might have to create game event sequence? that's a PKEY along with gameid!

scrape_statcast_savant(start_date = "2020-10-01") %>% 
  View()
