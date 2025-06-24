-- 13_avg_duration_by_center.sql
-- Description:
--   Calculates the average duration (in hours) of courses offered by each training center.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - avg_duration: Mean duration of courses offered at that center (in hours)
--
-- Insight goal:
--   Compare the training intensity across centers and identify those with longer or shorter programs.

SELECT ct.center_name, AVG(co.duration_hours) AS avg_duration
FROM centers AS ct
INNER JOIN courses AS co
  ON ct.id_center = co.id_center
GROUP BY ct.center_name;


