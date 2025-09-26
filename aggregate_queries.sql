-- Task 4: Aggregate Functions and Grouping
-- Objective: Use aggregate functions and grouping to summarize data
-- Tool: MySQL Workbench / DB Browser for SQLite

-- ===============================
-- 1. Create students table
-- ===============================
CREATE TABLE IF NOT EXISTS students(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    age SMALLINT,
    course VARCHAR(100),
    grade CHAR(1)
);

-- ===============================
-- 2. Insert sample data
-- ===============================
INSERT INTO students (name, age, course, grade) VALUES
('Alice', 20, 'Computer Science', 'A'),
('Bob', 22, 'Computer Science', 'B'),
('Charlie', 21, 'Mathematics', 'A'),
('David', 23, 'Computer Science', 'C'),
('Eva', 20, 'Mathematics', 'B'),
('Frank', 24, 'Physics', 'A'),
('Grace', 22, 'Physics', 'B'),
('Hannah', 21, 'Computer Science', 'A'),
('Ian', 25, 'Mathematics', 'C'),
('Jane', 23, 'Physics', 'B');

-- ===============================
-- 3. Aggregate Queries
-- ===============================

-- Q1. Count number of students in each course
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course;
/*
Expected Result:
+------------------+----------------+
| course           | total_students |
+------------------+----------------+
| Computer Science | 4              |
| Mathematics      | 3              |
| Physics          | 3              |
+------------------+----------------+
*/

-- Q2. Find average age of students in each course
SELECT course, AVG(age) AS avg_age
FROM students
GROUP BY course;
/*
Expected Result:
+------------------+---------+
| course           | avg_age |
+------------------+---------+
| Computer Science | 21.5    |
| Mathematics      | 22.0    |
| Physics          | 23.0    |
+------------------+---------+
*/

-- Q3. Count students in each grade
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade;
/*
Expected Result:
+-------+----------------+
| grade | total_students |
+-------+----------------+
| A     | 3              |
| B     | 4              |
| C     | 2              |
+-------+----------------+
*/

-- Q4. Get total students per course, but only show courses with more than 2 students
SELECT course, COUNT(*) AS total_students
FROM students
GROUP BY course
HAVING COUNT(*) > 2;
/*
Expected Result:
+------------------+----------------+
| course           | total_students |
+------------------+----------------+
| Computer Science | 4              |
| Mathematics      | 3              |
| Physics          | 3              |
+------------------+----------------+
*/

-- Q5. Find average age of students for each grade, only include grades with average age above 20
SELECT grade, AVG(age) AS avg_age
FROM students
GROUP BY grade
HAVING AVG(age) > 20;
/*
Expected Result:
+-------+---------+
| grade | avg_age |
+-------+---------+
| A     | 21.67   |
| B     | 21.75   |
| C     | 24.00   |
+-------+---------+
*/

-- Q6. Count students per course and grade (multi-column grouping)
SELECT course, grade, COUNT(*) AS total_students
FROM students
GROUP BY course, grade;
/*
Expected Result:
+------------------+-------+----------------+
| course           | grade | total_students |
+------------------+-------+----------------+
| Computer Science | A     | 2              |
| Computer Science | B     | 1              |
| Computer Science | C     | 1              |
| Mathematics      | A     | 1              |
| Mathematics      | B     | 1              |
| Mathematics      | C     | 1              |
| Physics          | A     | 1              |
| Physics          | B     | 2              |
+------------------+-------+----------------+
*/
