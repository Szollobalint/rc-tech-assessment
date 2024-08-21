CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100),
  class VARCHAR(100)
);

INSERT INTO student(name, email) VALUES ('John', 'john@school.com');
INSERT INTO student(name, email) VALUES ('Adam', 'adam@school.com');
INSERT INTO student(name, email) VALUES ('Lucy', 'lucy@school.com');