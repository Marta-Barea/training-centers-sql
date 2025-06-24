-- 11_avg_price_by_category.sql
-- Description:
--   Calculates the average price of courses for each category, excluding NULL prices.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - category: Name of the course category
--   - average_price: Mean price of all non-null courses in that category
--
-- Insight goal:
--   Compare pricing strategies or market value across different subject areas.

SELECT category, AVG(price) AS average_price
FROM courses
WHERE price IS NOT NULL
GROUP BY category
ORDER BY average_price DESC;
