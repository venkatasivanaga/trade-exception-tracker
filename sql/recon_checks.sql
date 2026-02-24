-- Trade Exception Tracker - Reconciliation Checks
-- These checks assume two tables (or CSV imports):
--   trades(trade_id, trade_date, counterparty, product, currency, notional, trade_status, book, portfolio, settle_date)
--   exceptions(exception_id, trade_id, exception_type, severity, field, expected, actual, detected_at, owner, status)

-- 1) Missing critical fields in trades
SELECT
  trade_id,
  trade_date,
  counterparty,
  product,
  currency,
  notional,
  trade_status,
  book,
  portfolio,
  settle_date
FROM trades
WHERE
  trade_id IS NULL
  OR trade_date IS NULL
  OR counterparty IS NULL
  OR product IS NULL
  OR currency IS NULL
  OR notional IS NULL
  OR trade_status IS NULL
  OR book IS NULL
  OR portfolio IS NULL
  OR settle_date IS NULL;

-- 2) Trades currently in "Break" status (exception queue candidates)
SELECT
  trade_id,
  trade_date,
  counterparty,
  product,
  currency,
  notional,
  book,
  portfolio,
  settle_date
FROM trades
WHERE trade_status = 'Break'
ORDER BY trade_date, counterparty;

-- 3) Exception volume by type + severity
SELECT
  exception_type,
  severity,
  COUNT(*) AS exception_count
FROM exceptions
GROUP BY exception_type, severity
ORDER BY exception_count DESC, exception_type, severity;

-- 4) Open exceptions by owner (work queue view)
SELECT
  owner,
  status,
  COUNT(*) AS cnt
FROM exceptions
GROUP BY owner, status
ORDER BY cnt DESC;

-- 5) “Mismatch” style view (expected vs actual), focusing on high severity
SELECT
  exception_id,
  trade_id,
  exception_type,
  severity,
  field,
  expected,
  actual,
  detected_at,
  owner,
  status
FROM exceptions
WHERE severity IN ('HIGH', 'MEDIUM')
ORDER BY
  CASE severity WHEN 'HIGH' THEN 1 WHEN 'MEDIUM' THEN 2 ELSE 3 END,
  detected_at;

-- 6) Missing-field exceptions (should be fast wins)
SELECT
  exception_id,
  trade_id,
  field,
  detected_at,
  owner,
  status
FROM exceptions
WHERE exception_type = 'MissingField'
ORDER BY detected_at;