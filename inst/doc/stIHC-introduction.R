## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(stIHC)

rds_path <- system.file("extdata", "spatial_data.rds", package = "stIHC")
example_data <- readRDS(rds_path)

stihc = stIHC(example_data) #Run stIHC

table(stihc$label)



