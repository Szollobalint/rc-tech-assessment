CREATE TABLE subject(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO subject(name) VALUES ('algebra');
INSERT INTO subject(name) VALUES ('biology');
INSERT INTO subject(name) VALUES ('world history');

-- store students attended subjects
CREATE TABLE subject_members (
  student_id INT,
  subject_id INT,
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);

-- store student grades by student_id and subject_id
CREATE TABLE subject_grades (
  student_id INT,
  subject_id INT,
  grade INT,
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);