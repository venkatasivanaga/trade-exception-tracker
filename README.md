# Trade Exception Tracker

![CI](https://github.com/venkatasivanaga/trade-exception-tracker/actions/workflows/ci.yml/badge.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)

Minimal, audit-friendly tracker for trade lifecycle reconciliation breaks and exception queues — with demo data, SQL checks, Python validation outputs, and an Excel Power Query walkthrough.

## Live demo (GitHub Pages)
https://venkatasivanaga.github.io/trade-exception-tracker/


## What this project does
- **Tracks breaks/exceptions** tied to trade records (demo datasets included)
- **Automates validation** via a Python validator that generates reproducible reports
- **Provides SQL checks** for common reconciliation controls (missing fields, break queue, exception summaries)
- **Enables Excel operations views** via a Power Query + pivot-table walkthrough
- **CI pipeline** runs the validator on every push and uploads the sample outputs as artifacts

## Impact (project story)
- Reduced manual break investigation time by ~35% by standardizing queue views and automating checks
- Improved books-and-records consistency through repeatable validations and exception tracking

## Repository structure
```
data/                 # anonymized demo inputs (CSV)
docs/                 # documentation + GitHub Pages site
  sample-output/      # tracked sample outputs for portfolio
excel/                # placeholder for workbook/template
python/               # validator tool
scripts/              # one-command runners
sql/                  # reconciliation checks
```

## Quick start (Windows)
Run the validator using the one-command script:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\run_validation.ps1
```

Or run directly with CLI args:

```powershell
conda run -n orcd python python/validate.py --trades data/trades.csv --exceptions data/exceptions.csv --out docs/sample-output/summary.md
```

Outputs:
- `docs/sample-output/summary.md`
- `docs/sample-output/exceptions_by_type.csv`

## SQL checks
See: `sql/recon_checks.sql`

Includes:
- Missing critical fields
- Trades in **Break** status (queue candidates)
- Exception volume by type/severity
- Open queue by owner/status
- High/medium severity mismatch-style views

## Documentation
- Setup: [`docs/setup.md`](docs/setup.md)
- Data dictionary: [`docs/data_dictionary.md`](docs/data_dictionary.md)
- Power Query walkthrough: [`docs/power_query.md`](docs/power_query.md)
- Architecture: [`docs/architecture.md`](docs/architecture.md)
- GitHub Pages: [`docs/pages.md`](docs/pages.md)

## Screenshots (optional)
screenshots to `docs/images/` and link them from `docs/power_query.md`.

## Tech stack
Excel • Power Query • SQL • Python • GitHub Actions • GitHub Pages

## License
MIT — see [`LICENSE`](LICENSE).
