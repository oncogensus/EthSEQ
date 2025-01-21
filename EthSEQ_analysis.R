if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("SNPRelate")


if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("gdsfmt", force=TRUE)

#################

install.packages("EthSEQ")

library(EthSEQ)

## View all available reference models
getModelsList()

## Run the analysis
ethseq.Analysis(
  target.vcf = "/storage/users/tulio/Projeto_Luy_COVID/SNP_data/all_gatk_final.vcf.gz",
  model.available = "Gencode.Exome",
  model.assembly = "hg38",
  model.pop = "All",
  out.dir = file.path("EthSEQ_Analysis"),
  verbose=TRUE,
  cores =8,
  composite.model.call.rate = 1,
  space = "3D")

## Delete analysis folder
#unlink(file.path(tempdir(),"EthSEQ_Analysis/"),recursive=TRUE)