CREATE DATABASE Bookstore;

USE Bookstore;

CREATE TABLE Books (
    BookID VARCHAR(10) PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID VARCHAR(10),
    GenreID VARCHAR(10),
    Price DECIMAL(10, 2)
);

INSERT INTO Books (BookID, Title, AuthorID, GenreID, Price)
VALUES
    ('B001', 'The Great Gatsby', 'AUTH001', 'GENRE001', 25.99),
    ('B002', 'To Kill a Mockingbird', 'AUTH002', 'GENRE001', 19.99),
    ('B003', '1984', 'AUTH003', 'GENRE002', 15.50),
    ('B004', 'Pride and Prejudice', 'AUTH004', 'GENRE001', 29.95),
    ('B005', 'The Catcher in the Rye', 'AUTH005', 'GENRE003', 22.75),
    ('B006', 'One Hundred Years of Solitude', 'AUTH006', 'GENRE004', 34.50),
    ('B007', 'Brave New World', 'AUTH003', 'GENRE002', 18.99),
    ('B008', 'The Hobbit', 'AUTH007', 'GENRE005', 27.80),
    ('B009', 'Crime and Punishment', 'AUTH008', 'GENRE006', 21.25),
    ('B010', 'The Lord of the Rings', 'AUTH007', 'GENRE005', 45.00);
    
    CREATE TABLE Authors (
    AuthorID VARCHAR(10) PRIMARY KEY,
    AuthorFirstName VARCHAR(255),
    AuthorLastName VARCHAR(255),
    Nationality VARCHAR(255)
);

INSERT INTO Authors (AuthorID, AuthorFirstName, AuthorLastName, Nationality)
VALUES
    ('AUTH001', 'F. Scott', 'Fitzgerald', 'American'),
    ('AUTH002', 'Harper', 'Lee', 'American'),
    ('AUTH003', 'George', 'Orwell', 'English'),
    ('AUTH004', 'Jane', 'Austen', 'English'),
    ('AUTH005', 'J.D.', 'Salinger', 'American'),
    ('AUTH006', 'Gabriel', 'García Márquez', 'Colombian'),
    ('AUTH007', 'J.R.R.', 'Tolkien', 'English'),
    ('AUTH008', 'Fyodor', 'Dostoevsky', 'Russian');
    
    
    CREATE TABLE Genre (
    GenreID VARCHAR(10) PRIMARY KEY,
    Description VARCHAR(255)
);

INSERT INTO Genre (GenreID, Description)
VALUES
    ('GENRE001', 'Fiction'),
    ('GENRE002', 'Dystopian'),
    ('GENRE003', 'Coming of Age'),
    ('GENRE004', 'Magical Realism'),
    ('GENRE005', 'Fantasy'),
    ('GENRE006', 'Philosophical');

  
  CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Address VARCHAR(255),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO customers (CustomerID, FirstName, LastName, Address, Email, Phone)
VALUES
  (8900, 'Alice', 'Johnson', '987 Maple St', 'alice.johnson@example.com', '222-333-4444'),
  (8901, 'Bob', 'Smith', '123 Oak St', 'bob.smith@example.com', '111-222-3333'),
  (8902, 'Diana', 'White', '567 Maple Dr', 'diana.white@example.com', '444-555-6666'),
  (8903, 'Charlie', 'Brown', '654 Birch Ln', 'charlie.brown@example.com', '777-888-9999'),
  (8904, 'Eva', 'Martinez', '321 Cedar Ave', 'eva.martinez@example.com', '111-222-3333'),
  (8905, 'Frank', 'Taylor', '876 Pine Rd', 'frank.taylor@example.com', '444-555-6666'),
  (8906, 'Grace', 'Davis', '543 Oak Blvd', 'grace.davis@example.com', '999-888-7777'),
  (8907, 'Harry', 'Lee', '765 Elm St', 'harry.lee@example.com', '333-222-1111'),
  (8908, 'Ivy', 'Garcia', '234 Walnut Dr', 'ivy.garcia@example.com', '666-777-8888'),
  (8909, 'Jack', 'Miller', '789 Spruce Ct', 'jack.miller@example.com', '555-444-3333'),
  (8910, 'Katie', 'Clark', '432 Pine Dr', 'katie.clark@example.com', '111-999-5555'),
  (8911, 'Kevin', 'Garcia', '432 Oak Ln', 'kevin.garcia@example.com', '999-888-7777'),
  (8912, 'Laura', 'Miller', '789 Cedar Ct', 'laura.miller@example.com', '222-333-4444'),
  (8913, 'Leo', 'Scott', '876 Birch Blvd', 'leo.scott@example.com', '777-333-1111'),
   (8914, 'Mia', 'Wong', '876 Elm St', 'mia.wong@example.com', '333-222-1111'),
  (8915, 'Nathan', 'Lopez', '234 Cedar Ln', 'nathan.lopez@example.com', '666-777-8888'),
  (8916, 'Olivia', 'Harris', '987 Pine Rd', 'olivia.harris@example.com', '555-444-3333'),
  (8917, 'Paul', 'Young', '321 Oak Ave', 'paul.young@example.com', '111-999-5555'),
  (8918, 'Quinn', 'Johnson', '543 Maple Dr', 'quinn.johnson@example.com', '999-888-7777'),
  (8919, 'Ryan', 'Lee', '876 Birch Blvd', 'ryan.lee@example.com', '222-333-4444'),
  (8920, 'Sara', 'Garcia', '765 Walnut Dr', 'sara.garcia@example.com', '777-333-1111');
  
  CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    Status VARCHAR(20)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status)
VALUES
(1001, 8901, '2023-12-20', 81.93, 'Delivered'),
  (1002, 8905, '2023-12-22', 15.50, 'Delivered'),
  (1003, 8907, '2023-12-25', 78.69, 'Delivered'),
  (1004, 8910, '2023-12-28', 34.5, 'Processing'),
  (1005, 8920, '2023-01-01', 34.5, 'Shipped'),
  (1006, 8921, '2023-01-01', 45.05, 'Shipped'),
  (1007, 8922, '2023-01-02', 22.75, 'Processing'),
  (1008, 8902, '2023-01-02', 111.5, 'Processing'),
  (1009, 8904, '2023-01-02', 345.0, 'Processing'),
  (1010, 8919, '2023-01-02', 67.93, 'Processing');
  
  CREATE TABLE OrderDetails (
    ID VARCHAR(10),
    OrderID VARCHAR(10),
    BookID VARCHAR(10),
    Quantity INT,
    Price DECIMAL(10, 2)
);

INSERT INTO OrderDetails (ID, OrderID, BookID, Quantity, Price)
VALUES
('OD1001', 1001, 'B001', 2, 25.99),
  ('OD1002', 1001, 'B004', 1, 29.95),
  ('OD1003', 1002, 'B003', 1, 15.50),
  ('OD1004', 1003, 'B004', 1, 29.95),
  ('OD1005', 1003, 'B001', 1, 25.99),
  ('OD1006', 1003, 'B005', 1, 22.75),
  ('OD1007', 1004, 'B006', 15, 34.5),
  ('OD1008', 1005, 'B006', 1, 34.5),
  ('OD1009', 1006, 'B008', 1, 27.8),
  ('OD1010', 1006, 'B009', 1, 21.25),
  ('OD1011', 1007, 'B005', 1, 22.75),
  ('OD1012', 1008, 'B009', 2, 21.25),
  ('OD1013', 1008, 'B006', 2, 34.5),
  ('OD1014', 1009, 'B006', 10, 34.5),
  ('OD1015', 1010, 'B004', 1, 29.95),
  ('OD1016', 1010, 'B007', 2, 18.99);
  

  