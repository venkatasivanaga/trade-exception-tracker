\# Data Dictionary



This project uses two core datasets:



\- `data/trades.csv` — normalized trade records

\- `data/exceptions.csv` — exception/break events tied to trades



---



\## trades.csv



| Column | Type | Description | Example |

|---|---|---|---|

| trade\_id | string | Unique trade identifier | T0001 |

| trade\_date | date | Trade date (YYYY-MM-DD) | 2026-02-01 |

| counterparty | string | Counterparty / broker | ALPHA\_BANK |

| product | string | Product type | IRS\_SWAP |

| currency | string | Trade currency | USD |

| notional | number | Trade notional amount | 2500000 |

| trade\_status | string | Matched / Break / Pending | Break |

| book | string | Booking book | NYC\_IRS |

| portfolio | string | Portfolio code | PF1 |

| settle\_date | date | Settlement date (YYYY-MM-DD) | 2026-02-03 |



---



\## exceptions.csv



| Column | Type | Description | Example |

|---|---|---|---|

| exception\_id | string | Unique exception identifier | E1001 |

| trade\_id | string | Trade identifier (FK to trades.trade\_id) | T0002 |

| exception\_type | string | Category of exception | NotionalMismatch |

| severity | string | LOW / MEDIUM / HIGH | HIGH |

| field | string | Field impacted | notional |

| expected | string/number | Expected value | 1500000 |

| actual | string/number | Actual value observed | 1450000 |

| detected\_at | date | Detection date (YYYY-MM-DD) | 2026-02-01 |

| owner | string | Owning team | ops\_team |

| status | string | Open / Investigating / Resolved | Open |



---



\## Relationships

\- `exceptions.trade\_id` → `trades.trade\_id`



\## Notes

\- Demo data is anonymized and intended for portfolio demonstration only.

