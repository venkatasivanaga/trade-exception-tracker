\# Setup \& Usage



This repo includes demo data in `data/` plus validation scripts and SQL checks.



\## Quick start (Python report)

Run the validator to generate a demo summary:



```powershell

conda run -n orcd python python\\validate.py



Output:



docs/sample-output/summary.md



Excel / Power Query demo (recommended)



You can build an Excel tracker on top of the demo CSVs:



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

