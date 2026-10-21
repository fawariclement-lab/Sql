-- 02. Sector Analysis for US Investors
-- Retrieve funding totals for U.S. news companies.
SELECT funding_total
FROM company
WHERE category_code = 'news'
  AND country_code = 'USA'
ORDER BY funding_total DESC;
