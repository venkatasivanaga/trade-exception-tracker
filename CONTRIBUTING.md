\# Contributing



Thanks for your interest in improving this project.



\## Setup

\- Clone the repo

\- Ensure you have a conda env with Python installed (example env name: `orcd`)



\## Run validations

Windows:

```powershell

powershell -ExecutionPolicy Bypass -File .\\scripts\\run\_validation.ps1

macOS/Linux:

bash ./scripts/run_validation.sh
What to change where

Demo data: data/

SQL checks: sql/

Validator: python/

Docs: docs/

CI: .github/workflows/

Commit style

Use conventional commits:

feat: new functionality

fix: bug fix

docs: documentation changes

refactor: code restructuring

test: CI/tests

chore: repo maintenance


Commit + push:
```powershell
git add CONTRIBUTING.md
git commit -m "docs: add contributing guidelines"
git push