-- 03. Analyzing Cash Acquisitions
-- Sum the price amounts for cash acquisitions from 2011 through 2013.
SELECT SUM(price_amount) AS total_cash_acquisition_price
FROM acquisition
WHERE term_code = 'cash'
  AND acquired_at >= '2011-01-01'
  AND acquired_at <= '2013-12-31';
