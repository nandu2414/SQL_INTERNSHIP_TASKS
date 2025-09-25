create database task3;

use task3;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    marks INT
);


INSERT INTO Students (student_id, name, age, city, marks) VALUES
(1, 'Ramesh', 20, 'Hyderabad', 85),
(2, 'Suresh', 21, 'Chennai', 72),
(3, 'Priya', 22, 'Bangalore', 91),
(4, 'Anjali', 20, 'Hyderabad', 60),
(5, 'Rohit', 23, 'Mumbai', 75);



SELECT * FROM Students;


SELECT name, marks FROM Students;


SELECT * FROM Students
WHERE city = 'Hyderabad';


SELECT * FROM Students
WHERE city = 'Hyderabad' AND marks > 70;


SELECT * FROM Students
WHERE name LIKE 'R%';   


SELECT * FROM Students
WHERE marks BETWEEN 70 AND 90;


SELECT * FROM Students
ORDER BY marks DESC;


SELECT * FROM Students
LIMIT 3;


SELECT * FROM Students
WHERE city IN ('Hyderabad', 'Mumbai');


SELECT name AS student_name, marks AS score
FROM Students;


SELECT DISTINCT city
FROM Students;


/*
1.What does SELECT * do?
Retrieves all columns from a table.

2.How do you filter rows?
Using WHERE clause with conditions (=, <, >, AND, OR, etc.).

3.What is LIKE '%value%'?
Pattern matching operator; % is a wildcard. Example: '%ram%' finds values containing “ram”.

4.What is BETWEEN used for?
To filter values within a range (inclusive). Example: marks BETWEEN 70 AND 90.

5.How do you limit output rows?
Using LIMIT n

6.Difference between = and IN ?

= checks equality with a single value.

IN checks if a value matches any in a list.
Example: city = 'Hyderabad' vs. city IN ('Hyderabad', 'Mumbai').

7.How to sort in descending order?
ORDER BY column_name DESC.

8.What is aliasing?
Giving a temporary name to a column or table using AS. Example: SELECT name AS student_name.

9.Explain DISTINCT.
Removes duplicate values from the result set. Example: SELECT DISTINCT city.

10.What is the default sort order?
Ascending (ASC) if not specified.*/