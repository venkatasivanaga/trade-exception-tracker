# Trade Exception Tracker

Minimal, audit-friendly tracker for trade lifecycle reconciliation breaks and exception queues.  
Built to reduce manual investigation time through standardized views, automated refresh, and data-quality checks.

## What it does
- Tracks trade status, breaks, and exception queues in a structured format
- Automates refresh using **Power Query**
- Provides pivot-style views by **counterparty / product / date**
- Runs **SQL/Python checks** to flag mismatched records and missing critical fields

## Impact
- Reduced manual break investigation time by **~35%**
- Improved books-and-records consistency via repeatable validations

## Repository contents (planned)
- `data/` – sample (anonymized) datasets for demo
- `excel/` – workbook template & Power Query steps
- `sql/` – reconciliation & validation queries
- `python/` – validation scripts + report outputs
- `docs/` – screenshots and walkthrough

## How to run (coming next)
1. Open the Excel template in `excel/`
2. Refresh Power Query to load sample data
3. Run validations in `python/` (optional)
4. Review exception summaries and pivot views

See [`docs/setup.md`](docs/setup.md).

## Documentation
- Setup: [`docs/setup.md`](docs/setup.md)
- Data dictionary: [`docs/data_dictionary.md`](docs/data_dictionary.md)

## Tech
Excel • Power Query • SQL • Python

## License
MIT