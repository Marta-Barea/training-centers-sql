-- 14_categories_with_multiple_courses.sql
-- Description:
--   Counts the number of courses in each category and filters those with at least two courses.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - category: Course subject area
--   - course_quantity: Number of courses in that category (≥ 2)
--
-- Insight goal:
--   Identify categories with stronger or more diverse training offerings.

SELECT category, COUNT(course_name) AS course_quantity 
FROM courses 
GROUP BY category
HAVING COUNT(course_name) >= 2;
