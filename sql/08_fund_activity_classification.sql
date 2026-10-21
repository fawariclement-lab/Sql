-- 08. Fund Activity Classification
-- Classify funds by the number of companies invested in.
SELECT *,
       CASE
           WHEN invested_companies >= 100 THEN 'high_activity'
           WHEN invested_companies >= 20 THEN 'middle_activity'
           ELSE 'low_activity'
       END AS activity
FROM fund;
