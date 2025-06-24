-- 05_courses_related_to_sql.sql
-- Description:
--   Retrieves courses whose name contains the keyword 'SQL'.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course (must include 'SQL')
--   - level: Course difficulty level (e.g., Beginner, Intermediate, etc.)
--
-- Insight goal:
--   Identify all SQL-related training offerings to analyze thematic coverage.

SELECT course_name, level
FROM courses
WHERE course_name LIKE '%SQL%';
