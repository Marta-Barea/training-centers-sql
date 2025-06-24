-- 15_centers_with_multiple_courses.sql
-- Description:
--   Lists all training centers that offer more than one course.
--
-- Tables used:
--   - centers
--   - courses
--
-- Columns returned:
--   - center_name: Name of the training center
--   - courses_quantity: Number of courses offered by that center
--
-- Insight goal:
--   Identify centers with broader course offerings and higher training activity.

SELECT ct.center_name, COUNT(co.course_name) AS courses_quantity
FROM centers AS ct
INNER JOIN courses AS co
	ON ct.id_center = co.id_center
GROUP BY center_name
HAVING COUNT(co.course_name) > 1;
