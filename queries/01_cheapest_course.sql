-- 01_cheapest_courses.sql
-- Description:
--   Retrieves all available courses (non-null price), sorted by price ascendingly.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - category: Category/topic of the course
--   - price: Course price in euros
--
-- Insight goal:
--   Identify the most affordable courses offered by training centers.

SELECT course_name, category, price
FROM courses
WHERE price IS NOT NULL
ORDER BY price ASC;
