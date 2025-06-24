-- 12_course_count_by_level.sql
-- Description:
--   Counts the number of courses offered at each difficulty level.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - level: Course difficulty level (e.g., Beginner, Intermediate, Advanced)
--   - total_courses: Number of courses in each level
--
-- Insight goal:
--   Understand how the training catalog is distributed across difficulty levels.

SELECT level, COUNT(*) AS total_courses
FROM courses
GROUP BY level
ORDER BY total_courses DESC;
