DROP TABLE students;
DROP TABLE  cohorts;


CREATE TABLE cohorts
(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  start_date DATE,
  end_date DATE
);
CREATE TABLE students
(
  id SERIAL PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  email VARCHAR(225),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);