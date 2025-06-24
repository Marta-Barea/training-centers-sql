-- 03_courses_by_level_and_duration.sql
-- Description:
--   Retrieves courses that are either Beginner or Intermediate level,
--   and whose duration is between 20 and 40 hours (inclusive).
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - duration_hours: Total course duration in hours
--   - level: Course level (Beginner or Intermediate)
--
-- Insight goal:
--   Identify accessible courses of moderate length suitable for entry-level learners.

SELECT course_name, duration_hours, level 
FROM courses
WHERE (level = 'Beginner' OR level = 'Intermediate')
  AND duration_hours BETWEEN 20 AND 40;
