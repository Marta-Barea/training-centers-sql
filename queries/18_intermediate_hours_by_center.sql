-- 18_intermediate_hours_by_center.sql
-- Description:
--   Calculates the total number of training hours for Intermediate level courses offered by each center.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - total_hours: Sum of duration_hours for Intermediate courses
--
-- Insight goal:
--   Measure the commitment of centers to Intermediate level training offerings.

SELECT ct.center_name, SUM(co.duration_hours) AS total_hours 
FROM centers AS ct
INNER JOIN courses AS co
	ON ct.id_center = co.id_center
WHERE co.level LIKE '%Intermediate%'
GROUP BY ct.center_name
HAVING SUM(co.duration_hours) > 0;
