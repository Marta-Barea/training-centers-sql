DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS centers;

CREATE TABLE centers (
  id_center INT NOT NULL AUTO_INCREMENT,
  center_name VARCHAR(100),
  city VARCHAR(50),
  phone VARCHAR(20),
  PRIMARY KEY (id_center)
);

CREATE TABLE courses (
  id_courses INT NOT NULL AUTO_INCREMENT,
  course_name VARCHAR(100),
  duration_hours INT,
  category VARCHAR(50),
  level VARCHAR(20),
  price DECIMAL(8,2),
  id_center INT,
  PRIMARY KEY (id_courses),
  FOREIGN KEY (id_center) REFERENCES centers(id_center)
);
