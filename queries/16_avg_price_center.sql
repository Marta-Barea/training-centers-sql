-- 16_avg_price_by_center.sql
-- Description:
--   Calculates the average price of courses offered by each training center,
--   excluding courses with NULL prices.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - avg_price: Average price of courses at that center
--
-- Insight goal:
--   Compare pricing strategies and positioning of centers based on course cost.

SELECT ct.center_name, AVG(co.price) AS avg_price
FROM centers AS ct
INNER JOIN courses AS co 
    ON ct.id_center = co.id_center
WHERE co.price IS NOT NULL
GROUP BY ct.center_name
ORDER BY avg_price DESC;
