-- Insert Authors 
INSERT INTO Authors (Name) VALUES  
('J.K. Rowling'), ('George Orwell'), ('Sundar Raj'); 


 -- Insert Categories 
INSERT INTO Categories (CategoryName) VALUES  
('Fiction'), ('Science'), ('History'); 



 -- Insert Books 
INSERT INTO Books (Title, AuthorID, CategoryID, ISBN, Quantity) VALUES 
('Harry Potter', 1, 1, 'HP001', 3), 
('1984', 2, 1, '1984X', 2), 
('The Indian Economy', 3, 3, 'IE2024', 1); 


 -- Insert Students 
INSERT INTO Students (Name, Email, Department, Year) VALUES 
('Arun Kumar', 'arun@example.com', 'CSE', 2), 
('Divya R', 'divya@example.com', 'ECE', 3), 
('Ravi M', 'ravi@example.com', 'IT', 1); 



 -- Issue a Book 
INSERT INTO IssuedBooks (BookID, StudentID, IssueDate, DueDate, ReturnDate, Fine) 
VALUES (1, 1, '2024-03-01', '2024-03-10', '2024-03-15', 25.00); 


 -- Book Request Example 
INSERT INTO BookRequests (StudentID, BookID, RequestDate) 
VALUES (2, 3, '2024-04-01');