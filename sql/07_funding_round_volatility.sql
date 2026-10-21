-- 07. Funding Round Volatility Analysis
-- Compare minimum and maximum raised amounts for each funding date.
SELECT funded_at,
       MIN(raised_amount) AS minimum_raised_amount,
       MAX(raised_amount) AS maximum_raised_amount
FROM funding_round
GROUP BY funded_at
HAVING MIN(raised_amount) <> MAX(raised_amount)
   AND MIN(raised_amount) <> 0;
