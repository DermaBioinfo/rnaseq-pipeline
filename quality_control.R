if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager")
BiocManager::install("Rqc")
BiocManager::install("QuasR", version = "3.8")

library("Rqc")
library("QuasR")
library("xlsx")

infiles <- list.files(getwd(), pattern=".fastq.gz")
outfiles <- paste0("qualified_sequences/", infiles)
qa <- rqc(getwd(), pattern=".fastq.gz")
preproc <- preprocessReads(infiles, outfiles)
write.xlsx(preproc, "preprocess_report.xlsx", col.names=TRUE, row.names=TRUE, append=FALSE)