\# Architecture



This repo demonstrates a minimal trade reconciliation exception-tracking workflow using demo datasets.



\## Components



\### 1) Data (demo inputs)

\- `data/trades.csv` — trade lifecycle records

\- `data/exceptions.csv` — breaks/exceptions tied to trades



\### 2) SQL checks (controls)

\- `sql/recon\_checks.sql`

&nbsp; - Missing critical fields

&nbsp; - Break queue candidates

&nbsp; - Exception counts by type/severity

&nbsp; - Work queue by owner/status



\### 3) Python validator (automation)

\- `python/validate.py`

&nbsp; - Reads CSVs

&nbsp; - Generates:

&nbsp;   - `docs/sample-output/summary.md`

&nbsp;   - `docs/sample-output/exceptions\_by\_type.csv`



Run:

```powershell

powershell -ExecutionPolicy Bypass -File .\\scripts\\run\_validation.ps1



4\) Excel + Power Query (operations view)



Walkthrough: docs/power\_query.md



Power Query loads CSVs and supports pivot views for:



breaks by counterparty/product/date



open exceptions by owner/severity



exception trends



5\) CI (reproducibility)



.github/workflows/ci.yml runs validator on each push to main



Uploads sample outputs as build artifacts



Flow diagram

CSV demo data

&nbsp;  |

&nbsp;  +--> SQL checks (recon\_checks.sql)  ---> analyst review / controls evidence

&nbsp;  |

&nbsp;  +--> Python validator (validate.py) ---> summary.md + exceptions\_by\_type.csv

&nbsp;  |

&nbsp;  +--> Excel Power Query -------------> pivots / queue views / refresh

&nbsp;  |

&nbsp;  +--> GitHub Actions CI -------------> artifacts uploaded each push



Save.



\### 2) Link it from README

Open README:

```powershell

notepad README.md



Under your Documentation section, add:



\- Architecture: \[`docs/architecture.md`](docs/architecture.md)

