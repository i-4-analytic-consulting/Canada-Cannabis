library(rvest)
library(dplyr)

# save url 
Can.url <- read_html("https://www150.statcan.gc.ca/n1/pub/13-610-x/cannabis-eng.htm")

# scrape tables from url into a list 
can.tbls <- Can.url %>%
  # gets all tables 
  html_nodes("table") %>%
  html_table()
