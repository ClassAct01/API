
--USE MASTER;
--GO

--CREATE DATABASE Student
--GO

USE Student
GO

CREATE TABLE Student(
StudentID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
StudentName VARCHAR(50) NOT NULL,
StudentSurname VARCHAR(50) NOT NULL
)
GO

CREATE TABLE Residence(
ResidenceID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
ResidenceName VARCHAR(50) NOT NULL)
GO

CREATE TABLE ResStudent(
ID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
JoinYear INT NOT NULL,
StudentID INT NOT NULL,
ResidenceID INT NOT NULL,
FOREIGN KEY(ResidenceID) REFERENCES Residence(ResidenceID),
FOREIGN KEY(StudentID) REFERENCES Student(StudentID))
go

INSERT INTO Student VALUES ('Bianca','Botha'),('Scooter','Matseke'),('Mark','Long')
GO

INSERT INTO Residence VALUES ('Erica'),('Olienhout'),('Jasmyn'),('Taaibos'))
GO

INSERT INTO ResStudent VALUES (2019,2,3),(2017,3,3),(2016,1,1)
GO