create database library;
use library;

CREATE TABLE Author (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50)
);

CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    Name VARCHAR(150) NOT NULL,
    Address VARCHAR(200)
);

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    CopiesAvailable INT CHECK (CopiesAvailable >= 0),
    AuthorID INT,
    PublisherID INT,
    CategoryID INT,
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50)
);

CREATE TABLE Borrow (
    BorrowID INT PRIMARY KEY,
    MemberID INT,
    BookID INT,
    StaffID INT,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
        ON UPDATE CASCADE ON DELETE SET NULL
);


/*1. What is normalization?

Normalization is the process of organizing data in a database to minimize redundancy and improve data integrity.

It involves dividing tables into smaller, related tables and defining relationships.

Common normal forms:

1NF: Eliminate repeating groups; ensure each column has atomic values.

2NF: Ensure 1NF + all non-key columns fully depend on the primary key.

3NF: Ensure 2NF + no transitive dependency (non-key columns depend only on the key).

2. Explain primary vs foreign key.

Primary Key (PK):

Uniquely identifies each record in a table.

Cannot be NULL and must be unique.

Example: CustomerID in a Customer table.

Foreign Key (FK):

A column in one table that references the primary key of another table.

Ensures referential integrity.

Example: CustomerID in an Orders table refers to Customer table.

3. What are constraints?

Constraints are rules applied on table columns to enforce data integrity.

Common constraints:

PRIMARY KEY – Unique identifier.

FOREIGN KEY – Referential integrity.

UNIQUE – Values must be unique.

NOT NULL – Column cannot have NULL values.

CHECK – Column values must satisfy a condition.

DEFAULT – Sets default value if none provided.

4. What is a surrogate key?

A surrogate key is an artificial, system-generated key used as the primary key.

It has no business meaning and is usually numeric (e.g., BookID INT AUTO_INCREMENT).

Advantage: Simpler joins, independent of business data changes.

5. How do you avoid data redundancy?

Normalization: Break tables into smaller related tables.

Use primary and foreign keys to reference data instead of duplicating.

Example: Instead of storing AuthorName in every Book record, store AuthorID and reference the Author table.

6. What is ER diagram?

ER (Entity-Relationship) Diagram visually represents:

Entities (tables, e.g., Book, Member)

Attributes (columns, e.g., BookID, Title)

Relationships between entities (1:1, 1:M, M:N)

Helps design databases before creating tables.

7. What are the types of relationships in DBMS?

One-to-One (1:1): One record in Table A relates to one record in Table B.

One-to-Many (1:M): One record in Table A relates to many in Table B.

Many-to-Many (M:N): Many records in Table A relate to many in Table B (usually requires a junction table).

8. Explain the purpose of AUTO_INCREMENT.

AUTO_INCREMENT automatically generates a unique numeric value for a column when a new row is inserted.

Typically used for primary keys.

Example: BookID INT AUTO_INCREMENT PRIMARY KEY.

9. What is the default storage engine in MySQL?

The default storage engine in MySQL is InnoDB.

Features:

Supports ACID transactions.

Enforces foreign key constraints.

Row-level locking for concurrency.

10. What is a composite key?

A composite key is a primary key made of two or more columns.

Used when a single column cannot uniquely identify a record.

Example: In a Borrow table, (MemberID, BookID) can be a composite key to ensure a member borrows a book only once.*/
Example: In a Borrow table, (MemberID, BookID) can be a composite key to ensure a member borrows a book only once.*/