-- 09_filter_by_category_and_level.sql
-- Description:
--   Retrieves all non-advanced courses in the 'Data', 'Programming', or 'BI' categories.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - category: Subject area (Data, Programming, or BI)
--   - level: Difficulty level (Beginner or Intermediate)
--
-- Insight goal:
--   Identify technical courses suitable for beginners or intermediate learners in high-demand fields.

SELECT course_name, category, level
FROM courses 
WHERE (category IN ('Data', 'Programming', 'BI')) 
  AND level NOT IN ('Advanced');
