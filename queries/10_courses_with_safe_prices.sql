-- 10_courses_with_safe_prices.sql
-- Description:
--   Displays course prices, replacing NULL values with the label 'Pending'
--   using the COALESCE function.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - price_display: Actual price or the string 'Pending' if not yet defined
--
-- Insight goal:
--   Prepare course price information for presentation or reporting, avoiding blank values.

SELECT course_name, COALESCE(price, 'Pending') AS price_display
FROM courses;
