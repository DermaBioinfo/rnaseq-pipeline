if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager")
BiocManager::install("Rqc")

library("Rqc")
qa <- rqc(path=getwd(), pattern = ".fastq.gz")