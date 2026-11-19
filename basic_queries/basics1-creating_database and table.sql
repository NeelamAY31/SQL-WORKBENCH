-- create database
CREATE DATABASE startersql;

-- use databse
USE startersql;

-- creating table
CREATE TABLE users(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Others'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from users;

-- drop database ==> delete entire database
DROP DATABASE startersql;


-- rename table 
RENAME TABLE users TO customer;
RENAME TABLE customer TO users;

-- Altering a table => You can use ALTER TABLE to modify an exiciting table. 
-- here I am adding one more column in "users" table
select * from users;
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE; 

-- MODIFY column
-- syntax => ALTER TABLE users MODIFY COLUMN name(is_active) VARCHAR(150);

-- drop a column using ALTER
ALTER TABLE users DROP COLUMN is_active;

-- we can change the positon of column using ALTER
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;

ALTER TABLE users MODIFY COLUMN date_of_birth DATE FIRST;


