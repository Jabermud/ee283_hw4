#!/usr/bin/env Rscript

setwd("/Users/jabermud/Documents/ee283_hw4/")

data("mtcars")

con <- DBI::dbConnect(RSQLite::SQLite(), snakemake@output[[1]])
DBI::dbWriteTable(con, "mtcars", mtcars)
DBI::dbDisconnect(con)
