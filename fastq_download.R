source('http://bioconductor.org/biocLite.R')
biocLite('SRAdb')
biocLite('DBI')
library(SRAdb)
library(DBI)

srafile <- paste0(getwd(), "/SRAmetadb.sqlite")
if (!file.exists(srafile)) {
  srafile = getSRAdbFile()
}

con = dbConnect(RSQLite::SQLite(), srafile)
SRA.list <- listSRAfile('SRP026197', con)
in_acc <- c("SRR6916965")
getSRAfile(in_acc, con, fileType = 'fastq')