# Database Schema Notes

This guide summarizes the entities visible in the project entity-relationship diagram (ERD). Confirm exact column definitions and data types against the source database.

| Table | Purpose suggested by the schema |
|---|---|
| `company` | Company records, including status, category, country, and total funding |
| `funding_round` | Funding rounds, dates, raised amounts, and first/last-round flags |
| `investment` | Investment records connecting companies and investors/funds |
| `fund` | Fund records, including companies invested in and investment-round counts |
| `acquisition` | Acquisition events, terms, dates, and price amounts |
| `people` | People records, including names, Twitter usernames, and company association |
| `education` | Education records associated with people, including degree type |

## Relationship notes

The ERD shows relationships among companies, funding rounds, investments, acquisitions, funds, people, and education. The education analysis joins `people.id` to `education.person_id`. It also filters people by companies associated with selected closed-company funding-round records.

Use the original ERD and database constraints as the source of truth for exact cardinalities, foreign keys, and column types.
