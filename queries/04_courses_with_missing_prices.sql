-- 04_courses_with_missing_price.sql
-- Description:
--   Retrieves all courses where the price is not defined (NULL).
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - category: Category or subject of the course
--   - price: NULL values indicating missing price
--
-- Insight goal:
--   Detect courses with incomplete pricing data for further cleaning or validation.

SELECT course_name, category, price 
FROM courses
WHERE price IS NULL;
