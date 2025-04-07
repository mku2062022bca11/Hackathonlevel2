 📘 Smart Library Management System

This project is a Smart Library Management System uniquely crafted for Hackathon Level 2. It leverages SQL to streamline operations like book management, issuing, returning, and request tracking.

🗂️ Project Directory Structure

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

✨ Key Features

📚 Comprehensive book, author, and category management
👨‍🎓 Student tracking with academic metadata
⏰ Overdue fine tracking and return date validation
📝 Book request system with status handling

🛠️ Core Database Tables

Students – Basic student info and academic details
Authors – Central repository of author information
Categories – Defines book genres and types
Books – Detailed book entries, linked to authors and categories
IssuedBooks – Issue logs with fine and return tracking
BookRequests – Book request log with status (Pending, Approved, Rejected)


🚀 How to Deploy

Run create_tables.sql in your MySQL server to initialize the schema.
Execute insert_data.sql to load sample entries.
Use sample_queries.sql to test retrieval and analytics.


📸 Visuals

Table Creation Screenshot: screenshots/table_creation.png
ER Diagram: docs/ER_Diagram.png
Query Results: screenshots/query_results.png


👤 Submitted By

Name: Manikandan
Register Number: C2S11661
Institution: Arulmigu Palaniandavar College of Arts and Culture
Submission Date: 07-April-2025


🔧 Opportunities for Enhancement

Build a basic or advanced UI (HTML/CSS or React)
Automate fine calculation using stored procedures
Add authentication (Admin/Student login systems)
Generate downloadable reports (PDF/Excel)
