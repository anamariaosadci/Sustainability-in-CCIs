# Description: Code to combine and deduplicate 66 Scopus exports for bibliometric analysis

# Load required package
library(bibliometrix)

# Set working directory (adjust path as needed)
# setwd("path/to/your/data")

# Get all .bib files in the directory
file_paths <- list.files(pattern = "\\.bib$", full.names = TRUE)

# Convert and merge all files into single dataframe
M <- convert2df(file = file_paths, dbsource = "scopus", format = "bibtex")

# Deduplicate based on DOI with 95% tolerance threshold
M_clean <- duplicatedMatching(M, Field = "DI", tol = 0.95)

# Check results
cat("Original documents:", nrow(M), "\n")
cat("After deduplication:", nrow(M_clean), "\n")
cat("Duplicates removed:", nrow(M) - nrow(M_clean), "\n")

# Save as RDS (R native format - can be loaded directly into R/Biblioshiny)
saveRDS(M_clean, "CCI_sustainability_clean.rds")

# Save as Excel (for easy viewing, sharing, and uploading to Biblioshiny)
write.xlsx(M_clean, "CCI_sustainability_clean.xlsx")
