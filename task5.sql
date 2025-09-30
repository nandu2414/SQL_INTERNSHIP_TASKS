
CREATE DATABASE task5;
USE task5;

-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Insert customers
INSERT INTO Customers (CustomerID, Name, Country) VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA');

-- Insert orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '2025-09-01', 250.50),
(102, 2, '2025-09-03', 125.00),
(103, 1, '2025-09-10', 300.00),
(104, 3, '2025-09-12', 450.00);


select * from Customers;

select * from Orders;

SELECT c.Name, o.OrderID, o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT c.Name, o.OrderID, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT c.Name, o.OrderID, o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

-- FULL OUTER JOIN (SQLite does not support directly; MySQL needs UNION)
SELECT c.CustomerID,c.Name,c.Country,o.OrderID,o.OrderDate,o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
UNION
SELECT c.CustomerID,c.Name,c.Country,o.OrderID,o.OrderDate,o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT c.Name, o.OrderID
FROM Customers c
CROSS JOIN Orders o;

-- self join Example: Find customers from the same country
SELECT a.Name AS Customer1, b.Name AS Customer2, a.Country
FROM Customers a
INNER JOIN Customers b ON a.Country = b.Country AND a.CustomerID <> b.CustomerID;

/*
Difference between INNER and LEFT JOIN?

INNER JOIN → Returns only rows that have matching values in both tables.

LEFT JOIN → Returns all rows from the left table, and matched rows from the right table. If there is no match, the right table columns show NULL.

2. What is a FULL OUTER JOIN?

Returns all rows from both tables.

Where there is no match, columns from the other table are NULL.

In MySQL, you can simulate it using LEFT JOIN UNION RIGHT JOIN.

Useful to see all data even if some rows don’t have matches.

3. Can joins be nested?

Yes, you can nest joins by joining the result of a join with another table.

Example: (A INNER JOIN B) LEFT JOIN C.

Useful for multi-table queries.

4. How to join more than 2 tables?

Simply chain joins:

SELECT *
FROM A
INNER JOIN B ON A.id = B.id
LEFT JOIN C ON B.id = C.id;


You can mix join types (INNER, LEFT, RIGHT) depending on the requirement.

5. What is a cross join?

Returns the Cartesian product of two tables.

Every row in the first table is paired with every row in the second table.

Example: Table A has 3 rows, Table B has 2 rows → CROSS JOIN produces 3 × 2 = 6 rows.

6. What is a natural join?

Automatically joins two tables based on columns with the same name and compatible data type.

No explicit ON clause is needed.

Example: SELECT * FROM A NATURAL JOIN B;

7. Can you join tables without foreign key?

Yes, joins do not require a foreign key.

You can join tables based on any condition in the ON clause.

Foreign keys help maintain data integrity but are not required for joining.

8. What is a self-join?

A self-join joins a table with itself using aliases.

Useful for comparing rows in the same table, finding hierarchical relationships, or pairing related rows.

9. What causes a Cartesian product?

A Cartesian product occurs when a join condition is missing or incorrect.

Every row from the first table is paired with every row from the second table.

Example: SELECT * FROM A, B; without WHERE or ON clause.

10. How to optimize joins?

Use indexes on join columns for faster access.

Select only required columns instead of SELECT *.

Avoid unnecessary joins or complex nested joins.

Use the correct join type (INNER vs LEFT) to reduce result size.

Filter rows early using WHERE before joining large tables.
*/
