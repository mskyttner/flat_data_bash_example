#!/usr/bin/env Rscript

library(dplyr)
library(readr)

args <- commandArgs(TRUE)
csvfile <- args[1]

# tidyverse pipeline to keep two columns
covid <- 
	read_csv(csvfile) %>%
	select(data, ricoverati_con_sintomi) 

write_csv(covid, csvfile)

quit(status = 0)
