-- 1. List all books by genre 'Fiction'
SELECT Title 
FROM Books  
JOIN Categories ON Books.CategoryID = Categories.CategoryID 
WHERE CategoryName = 'Fiction';

-- 2. Find overdue books with fines
SELECT Students.Name, Books.Title, IssuedBooks.Fine 
FROM IssuedBooks 
JOIN Students ON IssuedBooks.StudentID = Students.StudentID 
JOIN Books ON IssuedBooks.BookID = Books.BookID 
WHERE ReturnDate > DueDate;

-- 3. Show all pending book requests
SELECT Students.Name, Books.Title, RequestDate 
FROM BookRequests 
JOIN Students ON BookRequests.StudentID = Students.StudentID 
JOIN Books ON BookRequests.BookID = Books.BookID 
WHERE Status = 'Pending';

-- 4. Top 3 most issued books
SELECT Books.Title, COUNT(*) AS TimesIssued 
FROM IssuedBooks 
JOIN Books ON IssuedBooks.BookID = Books.BookID 
GROUP BY IssuedBooks.BookID 
ORDER BY TimesIssued DESC 
LIMIT 3;

-- 5. List all books with available stock > 0
SELECT Title, Quantity 
FROM Books 
WHERE Quantity > 0;

-- 6. Find books issued by a specific student (Example: Arun Kumar)
SELECT Books.Title, IssueDate, DueDate, ReturnDate 
FROM IssuedBooks 
JOIN Books ON IssuedBooks.BookID = Books.BookID 
JOIN Students ON IssuedBooks.StudentID = Students.StudentID 
WHERE Students.Name = 'Arun Kumar';

-- 7. Show students who have requested a specific book (Example: 'The Indian Economy')
SELECT Students.Name, RequestDate, Status 
FROM BookRequests 
JOIN Students ON BookRequests.StudentID = Students.StudentID 
JOIN Books ON BookRequests.BookID = Books.BookID 
WHERE Books.Title = 'The Indian Economy';
