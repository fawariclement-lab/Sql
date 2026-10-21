-- 09. Investment Strategy by Fund Activity
-- Compare average investment rounds for each fund activity category.
SELECT CASE
           WHEN invested_companies >= 100 THEN 'high_activity'
           WHEN invested_companies >= 20 THEN 'middle_activity'
           ELSE 'low_activity'
       END AS activity,
       ROUND(AVG(investment_rounds)) AS average_rounds
FROM fund
GROUP BY activity
ORDER BY average_rounds;
