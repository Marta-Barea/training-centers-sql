-- 07_courses_under_150_or_free.sql
-- Description:
--   Retrieves distinct courses priced below 150€, including those with NULL price.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - category: Course category or subject area
--   - price: Course price (can be NULL)
--
-- Insight goal:
--   Identify affordable or potentially free learning options for budget-conscious users.

SELECT DISTINCT course_name, category, price
FROM courses
WHERE price < 150 OR price IS NULL;
