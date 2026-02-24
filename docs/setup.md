\# Setup \& Usage



This repo includes demo data in `data/` plus validation scripts and SQL checks.



\## Quick start (Python report)

Run the validator to generate a demo summary:



```powershell
```powershell
conda run -n orcd python python/validate.py --trades data/trades.csv --exceptions data/exceptions.csv --out docs/sample-output/summary.md


conda run -n orcd python python\\validate.py


Save.

### 3) Create `python/README.md`
```powershell
notepad python\README.md

# Validator Tool

`validate.py` generates a markdown summary of break and exception activity from CSV inputs.

## Usage (Windows PowerShell)

```powershell
conda run -n orcd python python/validate.py --trades data/trades.csv --exceptions data/exceptions.csv --out docs/sample-output/summary.md

Output:



docs/sample-output/summary.md



Excel / Power Query demo (recommended)



You can build an Excel tracker on top of the demo CSVs:



Save.

### 4) Commit + push
```powershell
git add docs\setup.md python\README.md
git commit -m "docs: document validator CLI usage"
git push


Open Excel and create a new workbook.



Go to Data → Get Data → From Text/CSV



Import:



data/trades.csv



data/exceptions.csv



In Power Query:



Set correct data types (dates, numbers)



Create relationships (optional) on trade\_id



Create pivot views:



Exceptions by counterparty / product / date



Open queue by owner and severity



Refresh:



Data → Refresh All



SQL checks



sql/recon\_checks.sql contains standard checks:



Missing critical fields



Trades in Break status



Exception volume by type/severity



Open queue by owner



You can run it by importing the CSVs into your SQL engine (SQLite/Postgres/SQL Server) as trades and exceptions.



Notes



outputs/ is ignored by git (generated artifacts). Track sample outputs under docs/sample-output/.





Save.



\### 2) Update README to link setup guide

Open README:

```powershell

notepad README.md



Add this line under “How to run (coming next)” (or replace that section):



\## How to run

See \[`docs/setup.md`](docs/setup.md).

