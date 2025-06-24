-- 06_price_categories.sql
-- Description:
--   Classifies each course into price categories: Free, Low, Medium, or High,
--   based on its price value (including NULLs treated as 'Free').
--
-- Tables used:
--   - courses
--
-- Columns returned:
--   - course_name: Name of the course
--   - price_category: Categorized price label (Free, Low, Medium, High)
--
-- Insight goal:
--   Group training offerings by affordability range for easier comparison and reporting.

SELECT course_name,
  CASE 
    WHEN price IS NULL THEN 'Free'
    WHEN price < 100 THEN 'Low'
    WHEN price BETWEEN 100 AND 150 THEN 'Medium'
    ELSE 'High'
  END AS price_category
FROM courses
ORDER BY price_category ASC;
