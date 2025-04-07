-- Create the database 
create database mani; 
USE mani; 


 -- Table: Students 
CREATE TABLE Students ( 
    StudentID INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(100), 
    Email VARCHAR(100) UNIQUE, 
    Department VARCHAR(100), 
    Year INT 
); 


 -- Table: Authors 
CREATE TABLE Authors ( 
    AuthorID INT AUTO_INCREMENT PRIMARY KEY, 
    Name VARCHAR(100) 
); 


 -- Table: Categories 
CREATE TABLE Categories ( 
    CategoryID INT AUTO_INCREMENT PRIMARY KEY, 
CategoryName VARCHAR(100) 
); 


-- Table: Books 
CREATE TABLE Books ( 
BookID INT AUTO_INCREMENT PRIMARY KEY, 
Title VARCHAR(255), 
AuthorID INT, 
CategoryID INT, 
ISBN VARCHAR(50) UNIQUE, 
Quantity INT CHECK (Quantity >= 0), 
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID), 
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID) 
); 

-- Table: IssuedBooks 
CREATE TABLE IssuedBooks ( 
IssueID INT AUTO_INCREMENT PRIMARY KEY, 
BookID INT, 
StudentID INT, 
IssueDate DATE, 
DueDate DATE, 
ReturnDate DATE, 
Fine DECIMAL(10,2), 
FOREIGN KEY (BookID) REFERENCES Books(BookID), 
FOREIGN KEY (StudentID) REFERENCES Students(StudentID) 
); 


-- Table: BookRequests (NEW) 
CREATE TABLE BookRequests ( 
RequestID INT AUTO_INCREMENT PRIMARY KEY, 
StudentID INT, 
BookID INT, 
RequestDate DATE, 
Status ENUM('Pending', 'Approved', 'Rejected') DEFAULT 'Pending', 
FOREIGN KEY (StudentID) REFERENCES Students(StudentID), 
FOREIGN KEY (BookID) REFERENCES Books(BookID) 
);