-- 01. Startup Landscape Analysis
-- Count companies marked as closed.
SELECT COUNT(*) AS closed_company_count
FROM company
WHERE status = 'closed';
