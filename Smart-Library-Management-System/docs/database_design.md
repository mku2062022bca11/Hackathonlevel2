<!-- 1. Tables   -->
<!--1.1. Students -->
<!-- 
Column Name	                   Data Type	                      Description
StudentID	                   INT (PK, AUTO_INCREMENT)	          Unique ID for each student
Name	                       VARCHAR(100)	                      Full name of the student
Email	                       VARCHAR(100)                       UNIQUE	Email address of the student
Department                     VARCHAR(100)                       Department the student belongs to
Year	                       INT                                Year of study
 -->

<!-- 1.2  Authors -->
<!-- 
Column Name	                   Data Type	                       Description
AuthorID	                   INT (PK, AUTO_INCREMENT)	           Unique ID for each author
Name	                       VARCHAR(100)	                       Author's full name -->


<!-- 1.3 Categories -->
<!-- 
Column Name	                    Data Type	                       Description
CategoryID	                    INT (PK, AUTO_INCREMENT)	       Unique ID for each category
CategoryName	                VARCHAR(100)                       Name of the book category -->


<!-- 1.4 Books -->

<!-- 
Column Name                  	Data Type	                       Description
BookID	                        INT (PK, AUTO_INCREMENT)	       Unique ID for each book
Title	                        VARCHAR(255)	                   Title of the book
AuthorID	                    INT (FK → Authors)                 Linked to Authors(AuthorID)
CategoryID	                    INT (FK → Categories)	           Linked to Categories(CategoryID)
ISBN	                        VARCHAR(50)                        UNIQUE	International Standard Book Number
Quantity	                    INT CHECK (Quantity >= 0)	       Number of copies available -->


<!-- 1.5 IssuedBooks -->

<!-- Column Name	            Data Type	                       Description
IssueID	                        INT (PK, AUTO_INCREMENT)	       Unique ID for each issue transaction
BookID	                        INT (FK → Books)	               Linked to Books(BookID)
StudentID	                    INT (FK → Students) 	           Linked to Students(StudentID)
IssueDate	                    DATE	                           Date the book was issued
DueDate	                        DATE	                           Due date for returning the book
ReturnDate	                    DATE	                           Actual return date
Fine	                        DECIMAL(10,2)	                   Fine charged for late return -->

 <!--1.6 BookRequests -->
<!-- 
Column Name	                   Data Type	                                                    Description
RequestID	                   INT (PK, AUTO_INCREMENT)   	                                    Unique ID for each request
StudentID	                   INT (FK → Students)	                                            Linked to Students(StudentID)
BookID	                       INT (FK → Books)	                                                Linked to Books(BookID)
RequestDate                    DATE	                                                            Date the book was requested
Status	                       ENUM('Pending', 'Approved', 'Rejected')DEFAULT 'Pending'         Current status of the request -->



<!-- 2. Structure  -->

<!-- 2.1. Students 

StudentID INT PRIMARY KEY AUTO_INCREMENT
Name VARCHAR(100)
Email VARCHAR(100) UNIQUE
Department VARCHAR(100)
Year INT -->



<!-- 2.2. Authors

AuthorID INT PRIMARY KEY AUTO_INCREMENT
Name VARCHAR(100) -->


<!-- 2.3. Categories


CategoryID INT PRIMARY KEY AUTO_INCREMENT
CategoryName VARCHAR(100) -->

<!-- 2.4. Books

BookID INT PRIMARY KEY AUTO_INCREMENT
Title VARCHAR(255)
AuthorID INT (FK → Authors)
CategoryID INT (FK → Categories)
ISBN VARCHAR(50) UNIQUE
Quantity INT CHECK (Quantity >= 0) -->

<!-- 2.5. IssuedBooks

IssueID INT PRIMARY KEY AUTO_INCREMENT
BookID INT (FK → Books)
StudentID INT (FK → Students)
IssueDate DATE
DueDate DATE
ReturnDate DATE
Fine DECIMAL(10,2) -->

<!-- 2.6. BookRequests
RequestID INT PRIMARY KEY AUTO_INCREMENT
StudentID INT (FK → Students)
BookID INT (FK → Books)
RequestDate DATE
Status ENUM('Pending', 'Approved', 'Rejected') DEFAULT 'Pending' -->


<!-- Relationships Overview
Books → Many-to-One with Authors and Categories

IssuedBooks → Many-to-One with Books and Students

BookRequests → Many-to-One with Books and Students -->


<!-- Constraints & Design Choices
UNIQUE on Email and ISBN for data consistency

CHECK constraint on Quantity ensures inventory isn’t negative

ENUM used for BookRequests.Status to streamline status control

Normalization via separate tables for Authors and Categories -->


<!-- Efficient and trackable borrowing system

Cleanly categorized and easily searchable book records

Flexible enough to handle future features like advanced reservations, fines, notifications, etc. -->