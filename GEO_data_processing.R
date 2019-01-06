if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
BiocManager::install("GEOquery", version = "3.8")
library(GEOquery)
library(Biobase)
library("xlsx")

gds <- getGEO("GSE112509")
data <- pData(gds[[1]])
write.xlsx(data, "GSE112509_metadata.xlsx", col.names=TRUE, row.names=TRUE, append=FALSE)
