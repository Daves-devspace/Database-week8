-- Question1
-- Create Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other')
);

-- Create Instructors table
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(100)
);

-- Create Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

-- Create Enrollments table (Many-to-Many: Students <-> Courses)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Create Grades table
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollment_id INT,
    grade VARCHAR(2),
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);

-- Sample Data (Students)
INSERT INTO Students (first_name, last_name, email, date_of_birth, gender) VALUES
('Alice', 'Smith', 'alice@example.com', '2001-06-12', 'Female'),
('Bob', 'Johnson', 'bob@example.com', '2000-03-22', 'Male');

-- Sample Data (Instructors)
INSERT INTO Instructors (name, department) VALUES
('Dr. Emily Clark', 'Computer Science'),
('Prof. John Adams', 'Mathematics');

-- Sample Data (Courses)
INSERT INTO Courses (course_name, credits, instructor_id) VALUES
('Intro to Programming', 3, 1),
('Calculus I', 4, 2);

-- Sample Data (Enrollments)
INSERT INTO Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-01');

-- Sample Data (Grades)
INSERT INTO Grades (enrollment_id, grade) VALUES
(1, 'A'),
(2, 'B');
