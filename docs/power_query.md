\# Excel + Power Query Walkthrough (Demo)



This guide shows how to build a minimal Trade Exception Tracker in Excel using the demo datasets in `data/`.



\## Files used

\- `data/trades.csv`

\- `data/exceptions.csv`



\## 1) Import CSVs via Power Query

1\. Open Excel → \*\*Data\*\* tab → \*\*Get Data\*\* → \*\*From Text/CSV\*\*

2\. Import `data/trades.csv`

&nbsp;  - Click \*\*Transform Data\*\*

&nbsp;  - Ensure types:

&nbsp;    - `trade\_date`, `settle\_date` → Date

&nbsp;    - `notional` → Whole number / Decimal

3\. Repeat for `data/exceptions.csv`

&nbsp;  - Ensure types:

&nbsp;    - `detected\_at` → Date



\## 2) Clean + standardize (recommended)

In Power Query:

\- Trim columns like `counterparty`, `product`, `status`

\- Replace blanks in `portfolio` with `"UNKNOWN"` (optional)

\- Ensure consistent status values: Open / Investigating / Resolved



\## 3) Load to worksheet / data model

\- Click \*\*Close \& Load To...\*\*

\- Choose \*\*Only Create Connection\*\*

\- Check \*\*Add this data to the Data Model\*\* (recommended)



\## 4) Create pivot views

Suggested pivots:



\### A) Exception queue (worklist)

Rows:

\- `owner`

\- `status`

Values:

\- Count of `exception\_id`



\### B) Exceptions by type/severity

Rows:

\- `exception\_type`

Columns:

\- `severity`

Values:

\- Count of `exception\_id`



\### C) Break trends by counterparty/product

If you load `trades`:

\- Filter `trade\_status = Break`

Rows: `counterparty`

Columns: `product`

Values: Count of `trade\_id`



\## 5) Refresh process

\- Data → \*\*Refresh All\*\*

\- Power Query re-imports and pivots update



\## Screenshots (optional)

Add screenshots to:

\- `docs/images/`

and link them here.



Placeholders:

\- Import screen

\- Query transform steps

\- Pivot views

\- Refresh button

