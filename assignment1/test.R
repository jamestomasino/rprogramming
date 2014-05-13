#!/usr/bin/Rscript

source("corr.R")
source("complete.R")

cr <- corr("specdata", 5000)
summary(cr)

##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 

length(cr)

## [1] 0

cr <- corr("specdata")
summary(cr)

##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -1.0000 -0.0528  0.1070  0.1370  0.2780  1.0000

length(cr)

## [1] 323
