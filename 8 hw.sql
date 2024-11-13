-- Creating database for storing student grades
CREATE DATABASE SGrades;
GO

-- Switching to SGrades database
USE SGrades;
GO

-- Creating table Grades to store student information and grades
CREATE TABLE Grades (
    ID INT PRIMARY KEY IDENTITY(1,1),           -- Unique identifier for each student
    Name NVARCHAR(100) NOT NULL,                -- Student full name
    City NVARCHAR(50) NOT NULL,                 -- City of residence
    Country NVARCHAR(50) NOT NULL,              -- Country of residence
    BirthDate DATE NOT NULL,                    -- Date of birth
    Email NVARCHAR(100) NOT NULL,               -- Email address
    Phone NVARCHAR(15),                         -- Contact number
    GroupName NVARCHAR(50) NOT NULL,            -- Group name
    AnnualAverageGrade FLOAT NOT NULL,          -- Annual average grade across all subjects
    LowestGradeSubject NVARCHAR(50) NOT NULL,   -- Subject name with the lowest average grade
    HighestGradeSubject NVARCHAR(50) NOT NULL   -- Subject name with the highest average grade
);
GO
-- Inserting into Grades
INSERT INTO Grades (Name, City, Country, BirthDate, Email, Phone, GroupName, AnnualAverageGrade, LowestGradeSubject, HighestGradeSubject)
VALUES 
('John Doe', 'Kyiv', 'Ukraine', '2000-05-15', 'john.doe@example.com', '+380501234567', 'Group A', 85.5, 'Mathematics', 'Physics'),
('Jane Smith', 'Lviv', 'Ukraine', '1999-08-22', 'jane.smith@example.com', '+380971234567', 'Group B', 91.0, 'History', 'Computer Science'),
('Maxim Ivanov', 'Odessa', 'Ukraine', '2001-02-10', 'maxim.ivanov@example.com', '+380661234567', 'Group A', 78.2, 'Biology', 'Chemistry'),
('Olga Petrova', 'Kharkiv', 'Ukraine', '2000-11-03', 'olga.petrova@example.com', '+380991234567', 'Group C', 88.7, 'Literature', 'Mathematics'),
('Dmitry Koval', 'Dnipro', 'Ukraine', '2002-01-30', 'dmitry.koval@example.com', '+380632345678', 'Group B', 82.4, 'Economics', 'Physics');
-- 1. Display all information from Grades table
SELECT * 
FROM Grades;
GO

-- 2. Display names of all students
SELECT Name 
FROM Grades;
GO

-- 3. Display all average grades
SELECT AnnualAverageGrade 
FROM Grades;
GO

-- 4. Display names of all students with an average grade higher than a specified value 
SELECT Name 
FROM Grades
WHERE AnnualAverageGrade > 68;
GO

-- 5. Display unique countries of students
SELECT DISTINCT Country 
FROM Grades;
GO

-- 6. Display unique cities of students
SELECT DISTINCT City 
FROM Grades;
GO

-- 7. Display unique group names
SELECT DISTINCT GroupName 
FROM Grades;
GO

-- 8. Display unique subjects with the lowest average grade
SELECT DISTINCT LowestGradeSubject 
FROM Grades;
GO

-- 9. Display unique subjects with the highest average grade
SELECT DISTINCT HighestGradeSubject 
FROM Grades;
GO 
