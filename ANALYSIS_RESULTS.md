# Analysis Results and Key Findings

This page documents the results of the SQL analysis. They come from the venture-capital dataset analyzed in this project and are not current startup-market statistics.

## 1. Startup landscape: closed companies

- **Result:** 2,584 companies had `status = 'closed'`.
- **Interpretation:** The dataset contains 2,584 records marked closed. This count alone does not establish a closure rate because it does not include the total company count or a defined cohort/time period.
- **SQL:** [01_startup_landscape_analysis.sql](sql/01_startup_landscape_analysis.sql)

## 2. U.S. news-sector funding

The query returned funding totals for companies categorized as `news` and registered in the United States, sorted from highest to lowest.

- **Highest displayed funding total:** 622,553,000 (approximately **$622.6 million**).
- Other high values shown included **$250 million**, **$160.5 million**, **$128 million**, and **$126.5 million**.
- The output also included zero-valued funding records, so not every returned company had a positive recorded total.
- **Interpretation:** The filtered records vary substantially in recorded funding. Because the query selects only `funding_total`, company names and the number of rows are not available in this output, and the largest values should not be treated as a sector-wide total.
- **SQL:** [02_us_news_sector_funding.sql](sql/02_us_news_sector_funding.sql)

## 3. Cash acquisitions, 2011–2013

- **Result:** The sum of `price_amount` for acquisitions marked as cash and dated from January 1, 2011 through December 31, 2013 was **1.37762 × 10¹¹**, or approximately **$137.762 billion**.
- **Interpretation:** This is the aggregate recorded acquisition price for rows meeting the query's payment-method and date filters.
- **Caution:** This value depends on the completeness and currency conventions of the source database; it is not independently verified as a market-wide total.
- **SQL:** [03_cash_acquisitions_2011_2013.sql](sql/03_cash_acquisitions_2011_2013.sql)

## 4. Industry influencer username matches

The query returned three people whose Twitter usernames begin with `Silver`.

| First name | Last name | Twitter username |
|---|---|---|
| Rebecca | Silver | `SilverRebecca` |
| Silver | Teede | `SilverMatrixx` |
| Mattias | Guillotte | `Silverreven` |

- **Interpretation:** The query identifies records by username pattern only. It does not measure audience size, influence, engagement, or suitability for a partnership.
- **SQL:** [04_industry_influencers.sql](sql/04_industry_influencers.sql)

## 5. Finance influencer username match

- **Result:** One matching record was shown: **Gregory Kim**, username `gmoney75`.
- The query filters for usernames containing `money` and last names beginning with `K`.
- **Interpretation:** This is a string-match result, not evidence that the person is a finance expert or has a particular level of influence.
- **SQL:** [05_finance_influencers.sql](sql/05_finance_influencers.sql)

## 6. Geographic investment

The query sums `funding_total` by company country code and sorts the results in descending order.

| Country code | Total funding (as displayed, approximate) |
|---|---:|
| USA | 310.588 billion |
| GBR | 17.7056 billion |
| CHN | 10.6897 billion |
| CAN | 9.86636 billion |
| IND | 6.14141 billion |
| DEU | 5.76577 billion |
| FRA | 4.59514 billion |
| ISR | 4.48009 billion |
| CHE | 2.82925 billion |
| NLD | 2.35397 billion |

- **Interpretation:** The U.S. has by far the largest summed company funding total in this dataset. The next displayed country totals are much smaller.
- **Caution:** This query aggregates company-level `funding_total` by registration country. It should not be read as funding invested during a particular year, and country codes or missing country values should be checked before producing a polished geographic visualization.
- **SQL:** [06_geographic_investment_analysis.sql](sql/06_geographic_investment_analysis.sql)

## 7. Funding-round amount variation by date

The query grouped funding-round records by `funded_at` and retained dates where the minimum raised amount differs from the maximum and the minimum is not zero.

Examples visible in the output include:

| Funding date | Minimum raised | Maximum raised |
|---|---:|---:|
| 2012-08-22 | 40,000 | 75,000,000 |
| 2010-07-25 | 3,278,250 | 9,000,000 |
| 2002-03-01 | 2,844,180 | 8,959,150 |
| 2010-10-11 | 28,000 | 200,000,000 |
| 2013-09-10 | 50,000 | 448,000,000 |
| 2010-04-20 | 40,000 | 314,960,000 |
| 2009-06-22 | 400,000 | 525,750,000 |
| 2010-11-30 | 25,996 | 770,000,000 |

- **Interpretation:** The selected dates show wide variation in the smallest and largest funding-round amounts recorded on the same date.
- **Caution:** These are date-level minimum/maximum comparisons, not a formal statistical volatility measure. The query also does not show how many rounds occurred on each date.
- **SQL:** [07_funding_round_volatility.sql](sql/07_funding_round_volatility.sql)

## 8. Fund activity classification

The query adds an `activity` category based on `invested_companies`:

- **High activity:** 100 or more companies.
- **Middle activity:** 20 through 99 companies.
- **Low activity:** fewer than 20 companies.

The displayed rows illustrate the rule: Greylock Partners has 196 invested companies and is classified as high activity; Mission Ventures has 33 and is middle activity; Kapor Enterprises, Inc. has 1 and is low activity. The output also includes records with zero invested companies and some incomplete fund metadata.

- **Interpretation:** The classification creates a simple segmentation for comparing funds. It is based only on the count of invested companies, not investment performance or fund quality.
- **SQL:** [08_fund_activity_classification.sql](sql/08_fund_activity_classification.sql)

## 9. Average investment rounds by fund activity

The exercise grouped funds by activity category and rounded the average `investment_rounds` value.

| Fund activity | Average investment rounds (rounded) |
|---|---:|
| Low activity | 2 |
| Middle activity | 51 |
| High activity | 252 |

- **Interpretation:** In this dataset, higher activity categories have higher average values for `investment_rounds`.
- **Caution:** This is descriptive, not causal. Activity categories are defined using `invested_companies`, and the results may be affected by the source data and the distribution of funds.
- **SQL:** [09_average_rounds_by_fund_activity.sql](sql/09_average_rounds_by_fund_activity.sql)

## 10. Education records in the selected closed-company subset

- **Result:** The displayed query returned approximately **1.23113** as the average number of recorded degree entries per person in the selected subset.
- **Interpretation:** This summarizes education records for people associated with companies selected by the nested company and funding-round filters.
- **Caution:** It does not establish that education causes startup success or failure. The result depends on the relationships and filter logic in the query.
- **SQL:** [10_employee_education_and_startup_outcomes.sql](sql/10_employee_education_and_startup_outcomes.sql)

## Methods and limitations

- The results describe the dataset analyzed in this project, not current market conditions.
- A query result reflects the rows selected by its filters; it does not by itself establish causation.
- Aggregations may be affected by missing values, duplicate relationships, inconsistent country codes, and how the source defines each field.
- The funding and acquisition amounts are reported in the database's numeric units; dollar interpretations assume the source values are denominated in U.S. dollars, as described by the exercise.
- For portfolio-quality analysis, pair each result with the question, SQL, interpretation, and limitations. Consider checking missing country codes and validating monetary fields before presenting totals as business facts.
