library(data.table)
library(magrittr)
library(ggplot2)

source('scripts/prepare.R')
invisible(sapply(list.files('src', full.names = TRUE), source))
