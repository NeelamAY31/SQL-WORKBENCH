-- FUNCTIONS

/* Aggregate Function
COUNT(), SUM(), AVG(), MIN(), MAX(), LENGTH()
LOWER(), UPPER(), CONCAT() */

SELECT COUNT(*) FROM users; -- total nos of users

SELECT COUNT(*) FROM users WHERE gender = 'Male';
SELECT COUNT(*) FROM users WHERE gender = 'Female'; 

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS total_salary FROM users;

SELECT AVG(salary) AS avg_salary FROM users;

SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

SELECT name, LENGTH(name) AS name_length FROM users;
SELECT id,gender,name, LENGTH(name) AS name_length FROM users;

SELECT LOWER(name), LENGTH(name) AS name_length FROM users;
SELECT LOWER(name) AS low_name, LENGTH(name) AS name_length FROM users;

-- CONCAT
SELECT LOWER(name) AS low_name,
CONCAT("Hello ", name) AS username,
LENGTH(name) AS name_lenght FROM users;

SELECT LOWER(name) AS low_name,
CONCAT("Hello ", name) AS username,
YEAR(date_of_birth) AS YOB FROM users;

SELECT LOWER(name) AS low_name,
CONCAT("Hello ", name) AS username,
MONTH(date_of_birth) AS YOB FROM users;

SELECT LOWER(name) AS low_name,
CONCAT("Hello ", name) AS username,
DAY(date_of_birth) AS YOB FROM users;


SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days FROM users;


