
CREATE DATABASE task4;
USE task4;

-- Create table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary DECIMAL(10,2),
    age INT
);
INSERT INTO employees (emp_id, name, dept, salary, age) VALUES
(1, 'Alice', 'HR', 45000, 30),
(2, 'Bob', 'IT', 60000, 28),
(3, 'Charlie', 'Finance', 55000, 35),
(4, 'David', 'IT', 75000, 40),
(5, 'Eve', 'HR', 50000, 29),
(6, 'Frank', 'Finance', 65000, 32),
(7, 'Grace', 'IT', 80000, 38),
(8, 'Helen', 'Marketing', 40000, 27),
(9, 'Ian', 'Marketing', 42000, 31),
(10, 'Jack', 'Finance', 70000, 45);

SELECT dept, SUM(salary) AS total_salary
FROM employees
GROUP BY dept;

SELECT dept, COUNT(*) AS emp_count
FROM employees
GROUP BY dept;

SELECT dept, ROUND(AVG(salary),2) AS avg_salary
FROM employees
GROUP BY dept;

SELECT dept, SUM(salary) AS total_salary
FROM employees
GROUP BY dept
HAVING SUM(salary) > 120000;

SELECT dept, MAX(salary) AS highest_salary
FROM employees
GROUP BY dept;

SELECT COUNT(DISTINCT dept) AS unique_departments
FROM employees;

/*What is GROUP BY?
👉 It groups rows that have the same values in specified columns into summary rows (used with aggregate functions).

2. Difference between WHERE and HAVING?

WHERE filters rows before grouping.

HAVING filters groups after aggregation.

3. How does COUNT(*) differ from COUNT(column)?

COUNT(*) → counts all rows, including NULLs.

COUNT(column) → counts only non-NULL values in that column.

4. Can you group by multiple columns?
👉 Yes. Example: GROUP BY dept, age.

5. What is ROUND() used for?
👉 It rounds numeric values to a specified number of decimal places.
Example: ROUND(AVG(salary), 2).

6. How do you find the highest salary by department?
👉 SELECT dept, MAX(salary) FROM employees GROUP BY dept;

7. What is the default behavior of GROUP BY?
👉 By default, it sorts results by grouped columns in ascending order (depends on DB engine).

8. Explain AVG and SUM.

AVG() → calculates average of numeric values.

SUM() → calculates total of numeric values.

9. How to count distinct values?
👉 COUNT(DISTINCT column_name)

10. What is an aggregate function?
👉 A function that performs a calculation on a set of values and returns a single value (e.g., SUM, COUNT, AVG, MAX, MIN).
*/

