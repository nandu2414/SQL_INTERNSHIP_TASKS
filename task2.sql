create database college1;

use college1;

CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender CHAR(1),
    Age INT DEFAULT 18,
    Email VARCHAR(100),
    Marks INT
);


INSERT INTO Students (RollNo, Name, Gender, Age, Email, Marks)
VALUES (1, 'Nandu', 'M', 21, 'nandu@gmail.com', 85);


INSERT INTO Students (RollNo, Name, Gender, Age, Email, Marks)
VALUES (2, 'Kishore', 'M', 20, NULL, 90);


INSERT INTO Students (RollNo, Name, Gender, Email, Marks)
VALUES (3, 'Ravi', 'M', 'ravi@yahoo.com', 75);


INSERT INTO Students (RollNo, Name)
VALUES (4, 'Nanda');

select * from Students;

UPDATE Students
SET Marks = 95
WHERE RollNo = 1;


DELETE FROM Students
WHERE RollNo = 4;

select * from Students


/*1. What is the difference between NULL and 0?

NULL means no value or unknown, while 0 is a defined numeric value.

They are treated differently in comparisons and calculations.

2. What is a DEFAULT constraint?

A default constraint automatically assigns a value if no value is provided during insertion.

Example: Age INT DEFAULT 18; assigns 18 when no age is given.

3. How does IS NULL work in SQL?

IS NULL checks if a column has no value.

Example: SELECT * FROM Students WHERE Email IS NULL;

4. How do you update multiple rows in a table?

Use UPDATE with a WHERE condition that matches more than one row.

Example: UPDATE Students SET Age=21 WHERE Gender='M';

5. Can we insert partial values into a table? If yes, how?

Yes, by specifying only the required columns in INSERT.

Missing columns will take NULL or DEFAULT values.

6. What happens if a NOT NULL field is left empty during insertion?

The database throws an error.

NOT NULL ensures that a column must always have a value.

7. How do you rollback a deletion in SQL?

Use ROLLBACK if the delete was inside a transaction.

Example:

BEGIN; DELETE FROM Students WHERE RollNo=3; ROLLBACK;


8. Can we insert values into specific columns only? If yes, how?

Yes, by listing only those columns in the INSERT statement.

Example: INSERT INTO Students (RollNo, Name) VALUES (10, 'Nandu');

9. How can you insert values using a SELECT statement?

Use INSERT INTO ... SELECT to copy data from another table or query.

Example: INSERT INTO Alumni (RollNo, Name) SELECT RollNo, Name FROM Students;

10. What is ON DELETE CASCADE in SQL?

It is a foreign key option that automatically deletes child rows when the parent row is deleted.

Ensures referential integrity between related tables.*/
