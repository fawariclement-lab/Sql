-- 06. Geographic Investment Analysis
-- Sum company funding by country, highest total first.
SELECT country_code, SUM(funding_total) AS total_funding
FROM company
GROUP BY country_code
ORDER BY total_funding DESC;
