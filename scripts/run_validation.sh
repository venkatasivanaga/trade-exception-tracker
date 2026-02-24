#!/usr/bin/env bash
set -euo pipefail

ENV_NAME="${1:-orcd}"
TRADES="${2:-data/trades.csv}"
EXCEPTIONS="${3:-data/exceptions.csv}"
OUT="${4:-docs/sample-output/summary.md}"

echo "Running validator..."
conda run -n "$ENV_NAME" python python/validate.py --trades "$TRADES" --exceptions "$EXCEPTIONS" --out "$OUT"
echo "Done. Output: $OUT"