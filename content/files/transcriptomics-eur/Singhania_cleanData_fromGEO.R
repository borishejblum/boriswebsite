# DATA ----
rm(list=ls())
set.seed(3)

library(GEOquery)
library(readxl)

London_norm <- read_excel("GSE107991_edgeR_normalized_Berry_London.xlsx") # edgeR preprocessed
SouthAfrica_norm <- read_excel("GSE107992_edgeR_normalized_Berry_SouthAfrica.xlsx")
Leicester_norm <- read_excel("GSE107993_edgeR_normalized_Leicester_non_progressor_longitudnal_only.xlsx") # raw counts
London_raw <- read_excel("GSE107991_Raw_counts_Berry_London.xlsx") # raw counts
SouthAfrica_raw <- read_excel("GSE107992_Raw_counts_Berry_SouthAfrica.xlsx") # raw counts
Leicester_raw <- read_excel("GSE107993_Raw_counts_Leicester_non_progressor_longitudnal_only.xlsx") # raw counts

#metadata
GSE107991_metadata <- GEOquery::getGEO("GSE107991", GSEMatrix = FALSE) #London
GSE107992_metadata <- GEOquery::getGEO("GSE107992", GSEMatrix = FALSE) # SouthAfrica
GSE107993_metadata <- GEOquery::getGEO("GSE107993", GSEMatrix = FALSE) #Leicester

get_info <- function(i, meta){
  name <- meta@gsms[[i]]@header$source_name_ch1
  name <- gsub("Active_TB", "ActiveTB", name)
  name <- gsub("Test_set", "TestSet", name)
  name <- gsub("Validation_set", "ValidationSet", name)
  name <- gsub("Non_progressor", "NonProgressor", name)
  res <- unlist(strsplit(name, split="_"))
  res <- c(res, meta@gsms[[i]]@header$title)
  res
}
infos_london <- sapply(1:length(GSE107991_metadata@gsms), FUN=get_info, meta=GSE107991_metadata)
infos_df_london <- cbind.data.frame("GSMID" = names(GSE107991_metadata@gsms), t(infos_london))
rownames(infos_df_london) <- names(GSE107991_metadata@gsms)
colnames(infos_df_london)[-1] <- c("Cohort", "Location", "Set", "Status", "SampleName")

infos_sf <- sapply(1:length(GSE107992_metadata@gsms), FUN=get_info, meta=GSE107992_metadata)
infos_df_sf <- cbind.data.frame("GSMID" = names(GSE107992_metadata@gsms), t(infos_sf))
rownames(infos_df_sf) <- names(GSE107992_metadata@gsms)
colnames(infos_df_sf)[-1] <- c("Cohort", "Location", "Set", "Status", "SampleName")

infos_leicester <- sapply(1:length(GSE107993_metadata@gsms), FUN=get_info, meta=GSE107993_metadata)
infos_df_leicester <- cbind.data.frame("GSMID" = names(GSE107993_metadata@gsms), t(infos_leicester))
rownames(infos_df_leicester) <- names(GSE107993_metadata@gsms)
colnames(infos_df_leicester)[-1] <- c("Cohort", "Location", "Status", "Set", "SampleName")
infos_df_leicester <- infos_df_leicester[, c(1,2,3,5,4,6)]

infos_singhania <- rbind.data.frame(infos_df_london, infos_df_sf, infos_df_leicester)
expr_singhania_raw <- merge(x = merge(x=London_raw, y=SouthAfrica_raw, by=c(1:3)), 
                        y=Leicester_raw, by=c(1:3))
expr_singhania_norm <- merge(x = merge(x=London_norm, y=SouthAfrica_norm, by=c(1:3), all = FALSE), 
                             y=Leicester_norm, by=c(1:3), all = FALSE)

save(infos_singhania, expr_singhania_raw, London_norm, SouthAfrica_norm, Leicester_norm, file="SinghaniaTB_data.Rdata")