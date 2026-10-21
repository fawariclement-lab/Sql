# Analysis Results and Key Findings

This page summarizes the result values visible in the completed exercise screenshots. These are results from the supplied educational database, not current startup-market statistics.

## Confirmed results

### 1. Startup landscape: closed companies

- **Result:** 2,584 companies had `status = 'closed'` in the dataset.
- **Interpretation:** The dataset contains a substantial set of companies marked closed. This count alone does not explain why they closed or establish a closure rate; that would require a denominator and a defined cohort/time period.
- **SQL:** [01_startup_landscape_analysis.sql](../sql/01_startup_landscape_analysis.sql)

### 2. Average investment rounds by fund activity

The exercise grouped funds by the number of companies they invested in, then rounded the average `investment_rounds` value.

| Fund activity | Average investment rounds (rounded) |
|---|---:|
| Low activity | 2 |
| Middle activity | 51 |
| High activity | 252 |

- **Interpretation:** In this dataset, funds classified into higher activity categories also have much higher average values for `investment_rounds`.
- **Caution:** This is a descriptive comparison. The activity categories are defined using `invested_companies`, and the averages should not be interpreted as proof that investing in more companies causes more investment rounds.
- **SQL:** [09_average_rounds_by_fund_activity.sql](../sql/09_average_rounds_by_fund_activity.sql)

### 3. Education records for the selected closed-company subset

- **Result:** The displayed query result was approximately **1.23113** for the average number of recorded degree entries per person in the selected subset.
- **Interpretation:** The query summarizes education records for people connected to the subset selected by the nested company and funding-round filters.
- **Caution:** The query does not establish that education causes a startup to succeed or fail. Its result depends on the database relationships and the specific filter logic.
- **SQL:** [10_employee_education_and_startup_outcomes.sql](../sql/10_employee_education_and_startup_outcomes.sql)

## Additional analyses in the repository

The remaining scripts query U.S. news-company funding, cash acquisitions from 2011–2013, people matching username patterns, funding by country, funding-round amount variation, and fund activity classifications.

Their query logic is included in the repository, but numeric outputs for those exercises were not recorded in the notes used to prepare this page. They are intentionally not estimated or invented here. Run the queries against the original database to capture their exact outputs.

## Methods and limitations

- Results depend on the source database and may differ if the data changes.
- A query result describes the records selected by its filters; it does not automatically imply causation.
- Aggregations can be affected by missing values, duplicated relationships, and how the source database defines each field.
- For portfolio-quality analysis, pair each result with a clear question, the SQL used, and a brief interpretation that acknowledges these limits.
