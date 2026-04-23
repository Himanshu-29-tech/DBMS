CREATE TABLE user (
    id INT PRIMARY KEY,
    age INT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) UNIQUE,
    followers INT DEFAULT 0,
    following INT,
    CONSTRAINT chk_age CHECK (age >= 13)
);

CREATE TABLE post (
    id INT PRIMARY KEY,
    content VARCHAR(100),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

/*
📌 DATABASE SCHEMA EXPLANATION

This SQL defines two tables: user and post, with constraints and relationships.

--------------------------------------------------
🧑‍💻 USER TABLE
--------------------------------------------------

- id INT PRIMARY KEY
  Unique ID for each user (no duplicates, no NULL).

- age INT
  Stores user's age.

- name VARCHAR(30) NOT NULL
  User must provide a name.

- email VARCHAR(50) UNIQUE
  Prevents duplicate email entries.

- followers INT DEFAULT 0
  Automatically set to 0 if not given.

- following INT
  Number of users this user follows.

- CHECK (age >= 13)
  Ensures only users aged 13 or above are allowed.

--------------------------------------------------
📝 POST TABLE
--------------------------------------------------

- id INT PRIMARY KEY
  Unique ID for each post.

- content VARCHAR(100)
  Stores post text.

- user_id INT
  Refers to the user who created the post.

- FOREIGN KEY (user_id) REFERENCES user(id)
  Ensures each post belongs to a valid user.

--------------------------------------------------
🔗 RELATIONSHIP

- One user can create multiple posts.
- Each post belongs to one user.
- This is a One-to-Many relationship.

--------------------------------------------------
✅ FEATURES USED

- Primary Key
- Foreign Key
- NOT NULL
- UNIQUE
- DEFAULT
- CHECK Constraint

--------------------------------------------------
💡 SUMMARY

This schema ensures:
- Data consistency (unique email, valid age)
- Referential integrity (valid user-post link)
- Basic social media database structure
*/