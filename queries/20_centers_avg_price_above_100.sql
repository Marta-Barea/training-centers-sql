-- 20_centers_with_avg_price_above_100.sql
-- Description:
--   Lists training centers with an average course price above 100 euros.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - avg_price: Average price of courses at the center
--
-- Insight goal:
--   Identify centers que posicionan su oferta en un segmento de precio alto.

SELECT ct.center_name, AVG(co.price) AS avg_price
FROM centers AS ct
INNER JOIN courses AS co
	ON ct.id_center = co.id_center
GROUP BY ct.center_name
HAVING AVG(price) > 100;
