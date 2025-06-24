-- 17_data_categories_multiple_courses.sql
-- Description:
--   Counts the number of courses per category where the course name contains 'Data',
--   filtering categories with more than one such course.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - category: Course category
--   - total_courses: Number of courses matching the 'Data' keyword in their name
--
-- Insight goal:
--   Identify categories strongly related to 'Data' topics with multiple offerings.

SELECT category, COUNT(course_name) AS total_courses
FROM courses
WHERE course_name LIKE '%Data%'
GROUP BY category
HAVING COUNT(course_name) > 1;
