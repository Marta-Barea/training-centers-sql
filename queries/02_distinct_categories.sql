-- 02_distinct_categories.sql
-- Description:
--   Retrieves the distinct course categories offered across all centers.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - category: Unique category names present in the courses table
--
-- Insight goal:
--   Understand the breadth and diversity of training topics available.

SELECT DISTINCT category
FROM courses
ORDER BY category ASC;
