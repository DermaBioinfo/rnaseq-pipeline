# rnaseq-pipeline

  * Step 1: download a single file from the dataset https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE112509
    * Download can be done manually or by code
  * Step 2: convert downloaded file into fastq file
  * Step 3: control the quality of fastq file by running FastQC
  * Step 4: do the alignment with a standard genome to produce reads counts
    * Choose standard genome from different files on Ensembl
    * Need a DNA file and gene set files
  * Step 5: finish the pipeline (ex: nextflow.io) which adapt to our needs
