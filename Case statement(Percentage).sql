CREATE DATABASE PC;

USE PC;

CREATE TABLE MARKSHEET (
    RollNumber INT PRIMARY KEY,
    Name VARCHAR(100),
    PassingYear INT,
    ExamType VARCHAR(50),
    Percentage VARCHAR(100)
);

SELECT * FROM MARKSHEET;
                                                                                            
INSERT INTO MARKSHEET (RollNumber, Name, PassingYear, ExamType, Percentage) VALUES
(1, 'Faham', 2022, 'Matric', 85),
(2, 'Aziz', 2024, 'Matric', 78),
(3, 'Mahad', 2023, 'Matric', 92),
(4, 'Saad', 2024, 'Matric', 50),
(5, 'Zain', 2023, 'Matric', 88);

CREATE TABLE MatricResult AS
SELECT 
    Name,
    Percentage,
    CASE
        WHEN Percentage >= 90 THEN 'A'
        WHEN Percentage >= 80 THEN 'B'
        WHEN Percentage >= 70 THEN 'C'
        WHEN Percentage >= 60 THEN 'D'
        ELSE 'F'
    END AS Grade
FROM MARKSHEET;

-- Display records from MatricResult
SELECT * FROM MatricResult;

-- Display records from Matric_Result
SELECT * FROM Matric_Result;
                                                                                            