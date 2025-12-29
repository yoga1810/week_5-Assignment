-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT
);

-- Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    fees INT
);

-- Insert data into Students
INSERT INTO Students VALUES
(1, 'Anu', 20, 85),
(2, 'Ravi', 22, 78),
(3, 'Meena', 21, 90),
(4, 'Karthik', 23, 65);

-- Insert data into Courses
INSERT INTO Courses VALUES
(101, 1, 'Data Science', 30000),
(102, 2, 'AI', 35000),
(103, 3, 'ML', 40000),
(104, 4, 'Python', 20000);

-- Logical Operators
SELECT * FROM Students WHERE age > 20 AND marks > 75;
SELECT * FROM Students WHERE age > 22 OR marks > 80;
SELECT * FROM Students WHERE NOT age = 21;

-- Aggregate Functions
SELECT SUM(fees) AS Total_Fees FROM Courses;
SELECT AVG(marks) AS Average_Marks FROM Students;
SELECT COUNT(*) AS Total_Students FROM Students;

-- ORDER BY queries
SELECT * FROM Students ORDER BY marks DESC;
SELECT * FROM Courses ORDER BY fees ASC;
