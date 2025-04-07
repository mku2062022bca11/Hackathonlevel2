<!-- 
Smart Library Management System

This project is a Smart Library Management System developed for Hackathon Level 2. It uses SQL to manage books, students, book issues, returns, and requests efficiently. 

Project Structure

Smart-Library-Management-System/
├── docs/
│   ├── ER_Diagram.png
│   ├── Hackathon_Level2_Report.pdf
│   ├── database_design.md
│   └── queries_explained.md
├── sql_scripts/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   └── sample_queries.sql
├── screenshots/
│   ├── table_creation.png
│   ├── query_results.png
└── README.md


Features

📚 Manage books, authors, and categories

👨‍🎓 Track students and book issues

⏰ Calculate overdue fines

📝 Handle book requests


Database Tables

Students – Stores student info

Authors – Stores author names

Categories – Stores book categories

Books – Book details, linked to Authors and Categories

IssuedBooks – Tracks issued books with fine calculation

BookRequests – Manages requests for books



How to Run

Import create_tables.sql in MySQL to create tables.

Import insert_data.sql to add sample data.

Run sample_queries.sql to view sample outputs.




Screenshots

Table Creation: screenshots/table_creation.png

ER Diagram: docs/ER_Diagram.png

Query Results: screenshots/query_results.png




Submitted By

Name: Manikandan

Reg. No.: C2S11661

College: Arulmigu Palaniandavar College of Arts and Culture

Date: 07-April-2025



Suggestions for Improvement

Add frontend (React or basic HTML interface)

Use stored procedures for fine automation

Add login for librarian/students

Export reports in PDF/Excel format
-->