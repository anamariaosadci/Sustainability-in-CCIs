# CCI Sustainability Bibliometric Analysis

This repository contains search strategies and code for the bibliometric analysis examining the relationship between sustainability and cultural and creative industries (CCIs).

## Authors

- Ana-Maria Osadci - National University of Political Studies and Public Administration (SNSPA), Bucharest, Romania
- Alexandra Zbuchea - National University of Political Studies and Public Administration (SNSPA), Bucharest, Romania

## Contents

- `search_terms.csv` - 66 search queries used in Scopus across UNESCO cultural domains
- `Merge_deduplicate_code.R` - R script for merging and deduplicating Scopus exports
- `LICENSE` - MIT License

## Methodology

### Data Collection
- Database: Scopus
- Date: November 12, 2025
- Initial results: 10,068 documents
- Final deduplicated dataset: 7,411 documents

### Deduplication Process
Uses the bibliometrix R package with DOI matching (tolerance = 0.95)

## Requirements
```r
install.packages("bibliometrix")
install.packages("openxlsx")
```

## Usage

1. Place all .bib files from Scopus in the same directory as the script
2. Run `Merge_deduplicate_code.R`
3. Output files will be created: `CCI_sustainability_clean.rds` and `CCI_sustainability_clean.xlsx`


## License

This project is licensed under the MIT License - see the LICENSE file for details.
