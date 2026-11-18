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