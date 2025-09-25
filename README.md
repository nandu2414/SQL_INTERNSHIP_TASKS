-----------------------------------------------------------TASK -1 ------------------------------------------------------

# Library Management System Database

## Overview
This project is a *relational database schema* for a Library Management System. It manages books, authors, publishers, categories, members, staff, and borrowing transactions.

## Features
- Track *books, their **authors, **publishers, and **categories*.
- Manage *library members* and *staff*.
- Record *borrow and return transactions*.
- Enforces *data integrity* using primary & foreign keys.
- Supports *cascading updates and deletes* to maintain consistency.

## Tables
- *Author*: AuthorID, Name, Country  
- *Publisher*: PublisherID, Name, Address  
- *Category*: CategoryID, CategoryName  
- *Book*: BookID, Title, ISBN, CopiesAvailable, AuthorID, PublisherID, CategoryID  
- *Member*: MemberID, Name, Email, Phone  
- *Staff*: StaffID, Name, Role  
- *Borrow*: BorrowID, MemberID, BookID, StaffID, IssueDate, DueDate, ReturnDate  

## Special Features
- AUTO_INCREMENT for unique IDs.  
- ON UPDATE CASCADE and ON DELETE CASCADE for referential integrity.  
- Sample dataset provided for testing.

## How to Use
1. Create a MySQL database.  
2. Run the CREATE TABLE scripts.  
3. Insert sample data using the provided INSERT statements.  
4. Perform queries like finding borrowed books, overdue books, etc.




-----------------------------------------------------------TASK -2 ------------------------------------------------------

Data Insertion and Handling Nulls
Overview
This task focuses on practicing SQL commands for inserting, updating, and deleting data.  
It also demonstrates handling missing values (`NULL`), using default values, and applying constraints to maintain data integrity.

Features
- Insert rows with full values, partial values, NULLs, and defaults.  
- Update single or multiple rows based on conditions.  
- Delete rows safely with conditions.  
- Enforce NOT NULL and DEFAULT constraints.  
- Use transactions to rollback accidental deletions.  

Tables
Students:  
- RollNo (Primary Key)  
- Name (NOT NULL)  
- Gender  
- Age (DEFAULT 18)  
- Email  
- Marks  

Special Features
- Supports partial inserts (missing columns take `NULL` or `DEFAULT`).  
- Demonstrates safe update/delete practices.  
- Includes handling of `IS NULL` conditions.  
- Uses rollback in transactions for safe data recovery.  

How to Use
1. Create a database in MySQL/SQLite.  
2. Run the `CREATE TABLE` script.  
3. Insert sample data using `INSERT` statements.  
4. Perform updates and deletes with `WHERE` conditions.  
5. Test handling of NULL values and default constraints.  

-----------------------------------------------------------TASK - 3 ------------------------------------------------------
Writing Basic SELECT Queries
1. Overview

This task focuses on practicing SQL commands for retrieving data from one or more tables.
It demonstrates selecting all columns or specific ones, filtering rows with conditions, sorting results, and limiting the output.

2. Features

Select all columns or specific columns.

Filter rows using WHERE, AND, OR.

Perform pattern matching with LIKE.

Use BETWEEN for range filtering.

Sort results with ORDER BY (ascending/descending).

Limit the number of rows returned.

Retrieve unique values with DISTINCT.

Apply aliasing (AS) for readability.

3. Tables

Students:

RollNo (Primary Key)

Name

Age

City

Marks

4. Special Features

Supports selecting all (*) or specific columns.

Demonstrates filtering with operators (=, IN, BETWEEN, LIKE).

Shows both ascending and descending sorting.

Illustrates LIMIT for restricting output.

Explains aliasing (AS) and distinct results (DISTINCT).

Covers interview-style examples with practical queries.

5. How to Use

Create a database in MySQL/SQLite.

Run the CREATE TABLE script to create the Students table.

Insert sample data into the table.

Execute the provided SELECT queries one by one.

Observe the results for filtering, sorting, and limiting.
