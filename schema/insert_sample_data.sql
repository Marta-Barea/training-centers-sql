INSERT INTO centers (id_center, center_name, city, phone) VALUES
  (1, 'North Center', 'Bilbao', 'FAKE_PHONE_001'),
  (2, 'East Center', NULL, NULL),
  (3, 'South Center', NULL, 'FAKE_PHONE_002');

INSERT INTO courses (id_courses, course_name, duration_hours, category, level, price, id_center) VALUES
  (1, 'Intro to Python', 40, 'Programming', 'Beginner', 180.00, 1),
  (2, 'SQL for Analysts', 30, 'Data', 'Intermediate', 150.00, 2),
  (3, 'Deep Learning', 60, 'AI', 'Advanced', NULL, 1),
  (4, 'Tableau Visualization', 25, 'BI', 'Intermediate', 120.00, 3),
  (5, 'Git and GitHub', 20, 'Tools', 'Beginner', 90.00, 2);
