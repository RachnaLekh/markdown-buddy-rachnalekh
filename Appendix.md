> **AI Assistance Declaration**: I used ChatGPT on 19 September 2026 for drafting README and R Markdown structure. Prompts used: pasted below. I verified outputs using manual calculation cross-checks in Excel/Sheets, comparing against the official `tidyverse/dplyr` GitHub repository documentation, running interactive chunk execution in Posit Cloud / RStudio, and checking visual formatting in GitHub Markdown preview. All final calculations are done by myself. I am responsible for the accuracy and originality of this work.

# Appendix: AI Prompts and Key Responses

**Tool:** ChatGPT | **Date:** 19 September 2026

---

## Step 1: Understanding README Structure

### 1. Seed Prompt

> Explain what sections a good GitHub README for an R data analysis project should include.

**Key Response:**
ChatGPT recommended including the following sections for an R data analysis project:
1. **Title & Header**: Project name and short description.
2. **Project Overview**: High-level explanation of the problem domain, objectives, and analytical scope.
3. **Prerequisites & System Dependencies**: R version requirements and package dependencies (`dplyr`, `ggplot2`).
4. **Installation & Setup Instructions**: Step-by-step terminal and R commands for cloning the repo and installing packages.
5. **Repository Architecture**: A directory tree showing file organization.
6. **Usage & Reproducibility Guide**: Code snippets showing how to execute scripts and run the analysis.
7. **Outputs & Results**: Summary table or list detailing data schemas, generated tables, and exported graphics.
8. **Methodology & Data Integrity**: Notes on synthetic data sourcing and seed setting.
9. **License**: Open-source license declaration.

---

### 2. Refinement Prompt

> Revise the sections list so it's concise and uses Markdown headers and bullet formatting.

**Key Response:**
ChatGPT provided a streamlined Markdown outline:

```markdown
# [Project Title]
Brief one-sentence description of the project.

## Overview
- Purpose and analytical scope
- Synthetic data statement (`set.seed`)

## Repository Structure
- Directory layout listing key scripts, docs, and outputs

## Requirements
- R version (>= 4.1)
- Core packages: `dplyr`, `ggplot2`, `knitr`, `rmarkdown`

## Installation & Setup
- Git clone commands
- R package installation script

## Example Code & Usage
- Executing the script via `source()`
- Rendering `.Rmd` reports

## Outputs
- Data frames generated in-memory
- Persisted artifacts (CSV files and visualization plots)

## License
- Standard MIT open-source license
```

---

### 3. Critique / Validation Prompt

> Check the Markdown syntax for correctness and readability.

**Key Response:**
ChatGPT reviewed the Markdown structure and noted:
- The header hierarchy flows logically (`#` for document title, `##` for primary sections).
- Inline backticks are correctly used for file extensions, package names, and function names.
- Fenced code blocks specify language identifiers (`bash`, `r`, `text`) for proper syntax highlighting.
- Recommendation: Ensure that table formatting conforms to GitHub Flavored Markdown (GFM) pipe table standards with alignment headers.

---

### 4. Verification & Comparison

- **Comparative Repository:** Official `tidyverse/dplyr` GitHub README (`https://github.com/tidyverse/dplyr`).
- **Findings:**
  - The `tidyverse/dplyr` README focuses heavily on a concise overview, installation instructions (`install.packages("dplyr")`), and immediate usage examples (`starwars %>% filter(...)`).
  - Large open-source libraries include extensive contributing guidelines, build status badges, and issue templates that are unnecessary for a standalone analytical script.
  - **Adjustment:** I streamlined the suggested outline by removing open-source contribution guidelines and prioritizing the **Repository Structure**, **Synthetic Data Transparency**, and an explicit **Outputs Summary Table**.

---

## Step 2: README Draft

### Project Summary Provided to AI

> Coffee Shop Sales Summary: an R project with one script, `coffee_sales_summary.R`, that generates 200 synthetic sales records (seed 42), calculates total revenue per product with dplyr, and saves a ggplot2 bar chart and a CSV summary. Dependencies: dplyr, ggplot2, knitr, rmarkdown.

---

### 1. Seed Prompt

> Here's a summary of my R project: [summary above]. Generate a professional README.md file using Markdown.

**Key Response:**
ChatGPT generated an initial draft containing:
- Project title and introductory summary.
- Brief overview paragraph explaining the coffee sales scenario.
- Table of dependencies.
- Code blocks demonstrating `source("coffee_sales_summary.R")`.
- Mention of expected output files.

---

### 2. Refinement Prompt

> Add sections for Installation, Example Code, and License. Keep tone concise and professional.

**Key Response:**
ChatGPT updated the document by inserting:
- Step-by-step installation instructions including `git clone` and `install.packages()`.
- An "Example Code" section demonstrating how to run the script and render the R Markdown report.
- An MIT License declaration.
- An initial draft of the AI Assistance Declaration and Disclosure sections.

---

### 3. Critique / Validation Prompt

> Review the Markdown for syntax errors and suggest 2 improvements for clarity.

**Key Response:**
ChatGPT reviewed the document and noted:
1. Syntax validity: All Markdown fences and table pipes conformed to valid GFM.
2. Suggested Improvement 1: Clarify the synthetic nature of the dataset explicitly in the Overview to confirm data privacy compliance.
3. Suggested Improvement 2: Format the outputs listing into an explicit table distinguishing between in-memory R data objects (`sales`, `revenue_by_product`) and saved physical disk files (`revenue_by_product.csv`, `revenue_by_product.png`).

---

### 4. Verification and Manual Refinements

- **GitHub Preview Verification:** Tested the Markdown rendering through GitHub / Posit Cloud preview to ensure tables rendered cleanly without broken columns and code blocks had correct syntax highlighting.
- **Manual Edits Made:**
  1. Updated the GitHub repository clone URL to match the exact assignment specification: `https://github.com/RachnaLekh/markdown-buddy-rachnalekh.git`.
  2. Replaced all generic template markers with concrete, verified execution and calculation details.
  3. Added `Reflection.md` to the Repository Structure diagram.
  4. Validated that table pipe alignment renders properly across Markdown preview tools.

---

## Step 3: R Markdown Documentation

### 1. Seed Prompt

> Here's my R script description. Suggest Markdown formatting and code block examples.

**Key Response:**
ChatGPT proposed a standard R Markdown structure:
- YAML frontmatter with title, author, and date.
- Markdown headers dividing the document into Purpose, Inputs, Outputs, and Results.
- Basic R code chunks (`{r}`) executing the script and printing table outputs.

---

### 2. Refinement Prompt

> Add syntax highlighting and improve section organization (e.g., # Purpose, ## Inputs, ## Outputs).

**Key Response:**
ChatGPT refined the document layout:
- Configured YAML output options: `html_document` with `toc: true`, `toc_float: true`, `theme: readable`, and `highlight: tango`.
- Created structured section hierarchy: `# Purpose`, `## Inputs`, `## Outputs`, `# Script Listing`, `# Running the Script`, and `# Notes`.
- Introduced the dynamic code chunk `{r show-script, code = readLines("coffee_sales_summary.R"), eval = FALSE}` to display the script without manual copy-pasting.

---

### 3. Critique / Validation Prompt

> Is the Markdown consistent with RMarkdown best practices?

**Key Response:**
ChatGPT confirmed consistency with R Markdown standards and provided the following best practice checks:
- Include a hidden global setup chunk (`knitr::opts_chunk$set(...)`) to prevent unneeded warnings or messages from cluttering reports.
- Use `knitr::kable()` rather than raw console printing for tabular summaries.
- Use `knitr::include_graphics()` with explicit relative dimensions (`out.width = '80%'`) for displaying exported visualization plots cleanly.
- Add an explanatory note regarding working directory resolution when sourcing external scripts.

---

### 4. Verification and Manual Refinements

- **Knitting & Execution Verification:**
  - Executed chunks in Posit Cloud / RStudio. Verified that `readLines("coffee_sales_summary.R")` correctly pulled the script text dynamically.
  - Confirmed `source("coffee_sales_summary.R")` ran cleanly in the document environment without path errors.
  - Verified that `knitr::include_graphics("revenue_by_product.png")` properly scaled the image and displayed within the HTML report.
- **Manual Edits Made:**
  1. Added author attribute `"Rachna Lekh"` and formatted dynamic date calculation in YAML frontmatter.
  2. Embedded the required AI Assistance Declaration at the top of the document immediately beneath the YAML header.
  3. Verified that the table formatting in `## Outputs` aligns exactly with the structure declared in `README.md`.
