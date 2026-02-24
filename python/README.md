\# Validator Tool



`validate.py` generates a simple markdown summary of break and exception activity from CSV inputs.



\## Usage



```powershell

conda run -n orcd python python/validate.py ^

&nbsp; --trades data/trades.csv ^

&nbsp; --exceptions data/exceptions.csv ^

&nbsp; --out docs/sample-output/summary.md

