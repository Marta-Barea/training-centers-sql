-- 08_duration_in_days.sql
-- Description:
--   Calculates the estimated number of days needed to complete each course,
--   assuming an 8-hour training day.
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - duration_day: Approximate duration in full working days (hours ÷ 8)
--
-- Insight goal:
--   Provide a more intuitive measure of course length for scheduling and planning.

SELECT course_name, duration_hours / 8 AS duration_day
FROM courses;
