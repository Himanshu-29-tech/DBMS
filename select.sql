CREATE DATABASE instagram;

USE instagram;

CREATE TABLE instagram (
    name VARCHAR(50),
    email VARCHAR(50),
    followers INT,
    following INT,
    age INT
);

INSERT INTO instagram VALUES 
('Satyam Gupta', 'Satu@gmail.com',168,253,18),
('Sujal Gupta','Sujla@gmail.com',185,166,19),
('aaadmi gupta','aadmi@gmail.com',189,250,20),
('sejal Gupta','sejalji@gmail.com',160,323,20);

SELECT name, email FROM instagram;

SELECT * FROM instagram;

SELECT DISTINCT age FROM instagram;

/*
📌 DATABASE + TABLE + QUERIES EXPLANATION

This SQL script creates a database, a table, inserts data, and performs basic queries.

--------------------------------------------------
🗄️ DATABASE
--------------------------------------------------

- CREATE DATABASE instagram;
  Creates a new database named "instagram".

- USE instagram;
  Selects the database to perform operations.

--------------------------------------------------
📋 TABLE: instagram
--------------------------------------------------

- name VARCHAR(50)
  Stores user's name.

- email VARCHAR(50)
  Stores user's email.

- followers INT
  Number of followers.

- following INT
  Number of users the person follows.

- age INT
  Stores user's age.

(Note: No constraints like PRIMARY KEY or UNIQUE are applied here.)

--------------------------------------------------
📥 INSERT DATA
--------------------------------------------------

- INSERT INTO instagram VALUES (...)
  Adds multiple records into the table.

--------------------------------------------------
🔎 QUERIES
--------------------------------------------------

- SELECT name, email FROM instagram;
  Displays only name and email columns.

- SELECT * FROM instagram;
  Displays all columns and all records.

- SELECT DISTINCT age FROM instagram;
  Shows unique age values (removes duplicates).

--------------------------------------------------
💡 SUMMARY

This script demonstrates:
- Database creation
- Table creation
- Data insertion
- Basic SELECT queries
- Use of DISTINCT keyword
*/