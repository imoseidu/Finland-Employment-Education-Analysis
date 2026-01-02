# Education and Employment in Finland: Trends, Growth, and Gender Differences
**Author:** Imose Iduozee

Full project write-up: [View PDF](Full%20Project%20Write-up.pdf)


**View the interactive Power BI dashboard:** [View Dashboard](Dashboard.png) 

*Note: Interactive dashboard built using Power BI Online. Public sharing is restricted due to institutional account limitations. Screen capture of Dashboard provided instead.*


## Overview
This project analyzes how employment in Finland is distributed across education levels, how this structure has changed since 2009, and how employment growth and gender differences vary by educational attainment. The analysis demonstrates an **end-to-end analytics workflow**, from raw public data to SQL-based analysis and interactive visualization.

The project emphasizes **correct interpretation and clear communication**, reflecting how data analysts work with real socio-economic and labor-market data in practice.

<img width="1123" height="636" alt="Dashboard" src="https://github.com/user-attachments/assets/de66c114-1b30-4d31-9aa2-cc3d55edf94c" />
---

## Skills Demonstrated
- **SQL:** data cleaning, aggregation, analytical views
- **Data analysis:** employment shares, growth metrics, gender gaps
- **Power BI:** interactive dashboards and business-style visualizations
- **Python (pandas):** validation and exploratory analysis
- **Analytical communication:** clear, non-misleading interpretation

---

## Tools
SQL · Power BI · Python (pandas, matplotlib, seaborn)

---

## Reproducing the Analysis

To reproduce the analysis:

1. Open this repository in VS Code.
2. Run the SQL files in the `queries/` folder in numerical order.
3. Query outputs correspond to files in `outputs/` (saved as CSV files).
4. Use the output CSV files for visualization (see `plots/`).
   
---
## Data Source
- **Statistics Finland (StatFin)**  
  *Employed persons aged 15–74 by educational level and sex, 2009–2024*

Education categories follow the ISCED classification. Aggregate categories (e.g. *Total* and *Tertiary (all)*) were excluded to avoid overlap and double-counting across education levels.

---
## Key Questions
- How is total employment distributed across education levels?
- How has the composition of employment changed over time?
- Which education groups have contributed most to employment growth since 2009?
- How do gender employment gaps vary by education level?

---

## Methodology

### Data Preparation (SQL)
- Imported raw StatFin data into SQLite
- Standardized education categories into clean, non-overlapping labels
- Created analytical SQL views to:
  - remove aggregate categories
  - convert employment figures to absolute counts
  - calculate employment shares and growth metrics
- Derived:
  - employment shares over time
  - absolute employment levels
  - absolute and relative employment growth since 2009
  - gender-specific employment counts and gaps

### Analysis & Visualization
- Exported analytical outputs into a single long-format dataset
- Built an interactive **Power BI dashboard** (Power BI Online) featuring:
  - employment composition over time
  - employed persons by education level (latest year)
  - employment change and growth since 2009
  - gender employment gaps by education level

Python (pandas, matplotlib, seaborn) was used for validation and exploratory analysis, while Power BI was used for final presentation.

---

## Key Insights
- **Upper secondary / non-tertiary education accounts for the largest share of total employment**, reflecting the size of this education group in the workforce rather than higher individual employment prospects.
- **Employment has shifted toward higher educational attainment** over time, with Bachelor’s and Master’s/Doctorate groups increasing their share of total employment.
- **Employment growth since 2009 has been strongest among tertiary-educated groups**, particularly at Bachelor’s and Master’s/Doctorate levels.
- **Gender employment gaps vary by education level**, with larger absolute gaps in more populous education groups.

*Note: Employment shares describe the composition of employed persons and should not be interpreted as employment rates.*
