> **AI Assistance Declaration**: I used ChatGPT on 19 September 2026 to draft the structure of this README and the layout of the R Markdown file. Prompts used: listed in the [AI Assistance Disclosure](#ai-assistance-disclosure) section below and in full in [Appendix.md](Appendix.md). I verified outputs using manual calculation cross-checks in Excel/Sheets, verifying script execution and data frame dimensions in RStudio, comparing documentation structure against the tidyverse/dplyr README, and previewing GitHub Markdown formatting. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Coffee Shop Sales Summary

A small R project that generates a synthetic coffee shop sales dataset, calculates revenue per product, and visualizes the result.

## Overview

This project demonstrates clean, reproducible R documentation. A single script builds a synthetic dataset of 200 sales records, summarizes total revenue by product, and saves a chart and a CSV summary. The script is documented in an R Markdown file that explains its purpose, inputs, and outputs.

All data is **synthetic** and generated inside the script with `set.seed(42)`. No real or personal data is used.

## Repository Structure

```text
markdown-buddy-rachnalekh/
├── README.md                    # Project overview (this file)
├── coffee_sales_summary.R       # The R script
├── coffee_sales_summary.Rmd     # R Markdown documentation of the script
├── Reflection.md                # Reflection questions
├── Appendix.md                  # AI prompts and key responses
├── revenue_by_product.csv       # Summary table exported by script
└── revenue_by_product.png       # Bar chart exported by script
```

## Requirements

- R 4.1 or later
- RStudio or Posit Cloud (recommended)
- R packages: `dplyr`, `ggplot2`, `knitr`, `rmarkdown`

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/RachnaLekh/markdown-buddy-rachnalekh.git
   ```

2. Open the project folder in RStudio or Posit Cloud.
3. Install the required packages:

   ```r
   install.packages(c("dplyr", "ggplot2", "knitr", "rmarkdown"))
   ```

## Example Code

Run the script and inspect the results:

```r
source("coffee_sales_summary.R")

head(sales)
revenue_by_product
```

Render the documentation to HTML:

```r
rmarkdown::render("coffee_sales_summary.Rmd")
```

## Outputs

| File / Object | Type | Description |
|---|---|---|
| `sales` | Data frame | Synthetic data frame: `date`, `product`, `units`, `unit_price`, `revenue` |
| `revenue_by_product` | Data frame | Summary table: `product`, `total_revenue` |
| `revenue_by_product.csv` | File | Summary table saved to disk |
| `revenue_by_product.png` | File | Bar chart of total revenue by product |

## License

This project is released under the MIT License.

## AI Assistance Disclosure

**Tool used:** ChatGPT, 19 September 2026.

**Main prompts:**

- "Explain what sections a good GitHub README for an R data analysis project should include."
- "Here's a summary of my R project: [summary]. Generate a professional README.md file using Markdown."
- "Add sections for Installation, Example Code, and License. Keep tone concise and professional."
- "Review the Markdown for syntax errors and suggest 2 improvements for clarity."

Full prompts and key responses are in [Appendix.md](Appendix.md).

**Changes I made after reviewing the outputs:**

- **Refined Image Embedding and Knitr Output**: Adjusted `rmarkdown` chunk parameters (`out.width = '80%'`, centering) and output paths so `revenue_by_product.png` renders smoothly and reliably in both local viewer and rendered HTML.
- **Deterministic Data Generation in R**: Added an explicit pseudo-random seed (`set.seed(42)`) and standardized date generation (`as.Date("2026-01-01")`) in `coffee_sales_summary.R` to ensure consistent 200-row outputs and matching summary totals across operating systems and R sessions.
- **Restructured Outputs and Repository Schema**: Reorganized the outputs table to clearly separate memory objects from persistent disk files, and updated repository structure listings to track `Reflection.md` and generated visual artifacts.
