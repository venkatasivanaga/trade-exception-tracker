param(
  [string]$EnvName = "orcd",
  [string]$Trades = "data/trades.csv",
  [string]$Exceptions = "data/exceptions.csv",
  [string]$Out = "docs/sample-output/summary.md"
)

Write-Host "Running validator..."
conda run -n $EnvName python python/validate.py --trades $Trades --exceptions $Exceptions --out $Out

if ($LASTEXITCODE -ne 0) {
  Write-Error "Validator failed (exit code $LASTEXITCODE)."
  exit $LASTEXITCODE
}

Write-Host "Done. Output: $Out"