<!-- 1. Insert Sample Data Queries -->

<!-- Authors -->

<!--
 INSERT INTO Authors (Name) VALUES
('J.K. Rowling'), ('George Orwell'), ('Sundar Raj'); 

Purpose: Inserts predefined author names into the Authors table. These values are later referenced by the Books table.

-->


<!-- Categories -->
<!-- 
INSERT INTO Categories (CategoryName) VALUES
('Fiction'), ('Science'), ('History');

Purpose:Defines book categories used to classify books in the library.Purpary.
 -->

 <!-- Books -->


 <!-- 
 INSERT INTO Books (Title, AuthorID, CategoryID, ISBN, Quantity) VALUES
('Harry Potter', 1, 1, 'HP001', 3),
('1984', 2, 1, '1984X', 2),
('The Indian Economy', 3, 3, 'IE2024', 1);

Purpose: Inserts books and links each to its author and category. It also specifies the available quantity of each book.
 -->

<!-- Students -->
<!-- 
INSERT INTO Students (Name, Email, Department, Year) VALUES
('Arun Kumar', 'arun@example.com', 'CSE', 2),
('Divya R', 'divya@example.com', 'ECE', 3),
('Ravi M', 'ravi@example.com', 'IT', 1); 

Purpose: Adds students who will interact with the library system for issuing and requesting books.
-->

 <!-- IssuedBooks -->

 <!-- 
 INSERT INTO IssuedBooks (BookID, StudentID, IssueDate, DueDate, ReturnDate, Fine)
VALUES (1, 1, '2024-03-01', '2024-03-10', '2024-03-15', 25.00);

Purpose: Keeps track of book issues. This entry shows that a book was issued and returned late, incurring a fine.
 -->

  <!-- BookRequests -->
<!-- 
  INSERT INTO BookRequests (StudentID, BookID, RequestDate)
VALUES (2, 3, '2024-04-01'); 

Purpose: Records a request from a student for a particular book. This can be used by admins to manage demand.
-->



<!-- 2. Retrieval Queries Explained -->

<!-- List all books by genre "Fiction" -->

<!-- 
SELECT Title FROM Books  
JOIN Categories ON Books.CategoryID = Categories.CategoryID 
WHERE CategoryName = 'Fiction';

Purpose: Retrieves the titles of all books that fall under the Fiction genre by joining the Books and Categories tables.
 -->


  <!-- Find overdue books with fines -->
<!-- 
SELECT Students.Name, Books.Title, IssuedBooks.Fine 
FROM IssuedBooks 
JOIN Students ON IssuedBooks.StudentID = Students.StudentID 
JOIN Books ON IssuedBooks.BookID = Books.BookID 
WHERE ReturnDate > DueDate;

Purpose: Finds records where books were returned after their due date, and displays student names, book titles, and applicable fines.
 -->

 <!-- Show pending book requests -->

 <!-- 
 SELECT Students.Name, Books.Title, RequestDate 
FROM BookRequests 
JOIN Students ON BookRequests.StudentID = Students.StudentID 
JOIN Books ON BookRequests.BookID = Books.BookID 
WHERE Status = 'Pending';

Purpose: Lists all book requests that are still pending and not yet approved or rejected. 
-->

<!-- Top 3 most issued books -->
<!-- 
SELECT Books.Title, COUNT(*) AS TimesIssued 
FROM IssuedBooks 
JOIN Books ON IssuedBooks.BookID = Books.BookID 
GROUP BY IssuedBooks.BookID 
ORDER BY TimesIssued DESC 
LIMIT 3;

Purpose: Shows the top 3 most frequently issued books by counting how many times each book has been issued.
 -->