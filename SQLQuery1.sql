-- 1. Create the Database
CREATE DATABASE SchoolDB;

USE SchoolDB;

-- 2. Create the Tables
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    EnrollmentDate DATE
);

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(100) NOT NULL,
    Credits INT
);

CREATE TABLE Enrollments (
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
    CourseID INT FOREIGN KEY REFERENCES Courses(CourseID),
    StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
    Grade CHAR(1)
);