 /*
========================================
        CONSTRAINTS IN SQL
========================================

NOT NULL  → Column cannot have NULL values
UNIQUE    → All values must be different
DEFAULT   → Sets default value
CHECK     → Restricts values based on condition
PRIMARY KEY → Uniquely identifies each row
*/

-- Create Database
CREATE DATABASE instagram;

-- Use Database
USE instagram;

-- Create Table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    age INT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT DEFAULT 0,
    CONSTRAINT age_check CHECK (age >= 13)
);

-- Insert Data
INSERT INTO users (age, name, email, followers, following) VALUES
(18, 'Satyam Gupta', 'satyam@gmail.com', 168, 253),
(19, 'Sujal Gupta', 'sujal@gmail.com', 185, 166),
(20, 'Aadmi Gupta', 'aadmi@gmail.com', 189, 250),
(27, 'Sejal Gupta', 'sejal@gmail.com', 160, 323);

-- View Data
SELECT * FROM users;