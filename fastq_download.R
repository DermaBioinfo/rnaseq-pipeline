source('http://bioconductor.org/biocLite.R')
biocLite('SRAdb')
biocLite('DBI')
library(SRAdb)
library(DBI)
library("xlsx")

srafile <- "SRAmetadb.sqlite"
project <- c("SRP136742")
runs <- c("SRR6916965")

if (!file.exists(srafile)) {
  srafile = getSRAdbFile()
}

con = dbConnect(RSQLite::SQLite(), srafile)
# listSRAfile returns info which is not diff from getSRAinfo
SRA.list <- listSRAfile(project, con)

getSRAfile(runs, con, fileType = 'fastq')
write.xlsx(SRA.list, "SRP136742_metadata.xlsx", col.names=TRUE, row.names=TRUE, append=FALSE)
