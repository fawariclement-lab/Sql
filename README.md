# Exploring Startup Trends with SQL

## Project overview

This project explores a venture-capital and startup database to answer questions about company closures, funding patterns, acquisitions, influential people, geographic investment, fund activity, and employee education.

The queries demonstrate filtering, sorting, aggregation, grouping, conditional logic with `CASE`, pattern matching with `LIKE`, joins, and nested subqueries.

> **Project context:** Educational analysis using a provided practice database. Results describe this dataset and should not be interpreted as current market statistics.

## Questions explored

1. **Startup landscape:** Count companies marked as closed.
2. **Sector analysis:** Retrieve funding totals for U.S. news companies, ordered from highest to lowest.
3. **Cash acquisitions:** Sum cash acquisition prices from 2011 through 2013.
4. **Industry influencers:** Find people whose Twitter usernames begin with `Silver`.
5. **Finance influencers:** Find people whose Twitter usernames contain `money` and whose last names begin with `K`.
6. **Geographic investment:** Sum company funding by country and rank countries by total.
7. **Funding-round variation:** Compare minimum and maximum amounts raised on each funding date, excluding zero minimums and dates with identical amounts.
8. **Fund activity:** Classify funds as high, middle, or low activity by number of companies invested in.
9. **Investment strategy:** Compare average investment rounds across fund-activity categories.
10. **Education and startup outcomes:** Calculate the average number of recorded degree entries for people associated with companies that are both first-round and last-round funding records and are marked closed.

## Repository structure

- `sql/` — ten queries organized by analysis question.
- `schema/database_schema.md` — notes on the tables and relationships shown in the project ERD.

## SQL concepts demonstrated

- `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `COUNT`, `SUM`, `MIN`, `MAX`, `AVG`
- `GROUP BY` and `HAVING`
- `CASE` expressions and `ROUND`
- `LIKE` pattern matching
- `JOIN` operations and nested subqueries

## Interpretation notes

- These scripts preserve the original exercise logic and field names from the provided database.
- Results can vary if the underlying database changes.
- Query 10 measures recorded education entries per person in the selected subset; it does not establish that education causes startup success.
- Run these scripts against the matching project database/schema. They do not create the source tables.

## Author

Clement Fawari — SQL portfolio project
