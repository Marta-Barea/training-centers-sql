-- 19_courses_levels_per_center.sql
-- Description:
--   Counts the number of courses offered by each training center, grouped by course level.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - level: Difficulty level of the courses
--   - total_courses: Number of courses in that level for the center
--
-- Insight goal:
--   Understand the distribution of course levels per center to evaluate training diversity.

SELECT ct.center_name, co.level, COUNT(co.course_name) AS total_courses
FROM centers AS ct
INNER JOIN courses AS co
	ON ct.id_center = co.id_center
GROUP BY center_name, co.level
HAVING COUNT(co.course_name) > 0;
