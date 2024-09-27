--Create a table students and insert names in malayalam
CREATE TABLE STUDENTS(
STUD_ID INT,
NAME NVARCHAR(30)
);

INSERT INTO STUDENTS VALUES(02,N'റാം');

--Retrieve all employees who work in Sales, Marketing, or IT departments.
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT IN ('SALES','MARKETING','IT');

--Find all employees with salaries ranging from $50,000 to $75,000 (inclusive).
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 50000 AND 75000;

--List all employees whose last name begins with the letter 'S'.
SELECT * FROM EMPLOYEES 
WHERE LASTNAME 
LIKE 'S%';

--Display all employees with exactly five letters in their first name
SELECT * FROM EMPLOYEES 
WHERE FIRSTNAME 
LIKE '_____';

--Find employees whose last name starts with either 'B', 'R', or 'S'.
SELECT *
FROM Employees
WHERE LastName LIKE 'B%'
   OR LastName LIKE 'R%'
   OR LastName LIKE 'S%';

--Retrieve all employees whose first name begins with any letter from 'A' through 'M'.
SELECT *
FROM Employees
WHERE FirstName LIKE '[A-M]%';

--List employees whose last name doesn't start with a vowel (A, E, I, O, U).

SELECT * FROM EMPLOYEES
WHERE LASTNAME LIKE '[^AEIOU]%';

--Identify employees earning more than $80,000 annually.
SELECT * FROM EMPLOYEES
WHERE SALARY > 80000;

--Find employees who joined the company before 2020.

SELECT * FROM EMPLOYEES
WHERE year(HireDate) < 2020;

--List all employees not named 'John' (first name).

SELECT * FROM EMPLOYEES
WHERE FirstName NOT LIKE 'JOHN';

--Identify Marketing department employees earning $60,000 or less who were hired after June 30, 2019.
SELECT * 
FROM EMPLOYEES
WHERE DEPARTMENT='MARKETING' 
AND SALARY < 60000
AND HIREDATE > '2019-06-30';

--Find employees whose first name contains the letters 'an' anywhere and ends with 'e'.
SELECT * 
FROM EMPLOYEES
WHERE FIRSTNAME 
LIKE '%AN%E' ;




