use startersql_1;

SELECT name, gender FROM users;

-- WHERE  clause
SELECT * FROM users WHERE gender='Female';

-- <> and != =>(not equal to sign, you can use both)
SELECT * FROM users WHERE gender!='Male';
SELECT * FROM users WHERE gender<>'Female';

SELECT * FROM users WHERE date_of_birth<'1999-08-17';
SELECT * FROM users WHERE id<=10;

SELECT * FROM users WHERE date_of_birth IS NULL;
SELECT * FROM users WHERE date_of_birth IS NOT NULL;
SELECT * FROM users WHERE date_of_birth BETWEEN '1999-10-30' AND '2002-08-31';

SELECT * FROM users WHERE gender IN('Male', 'Female');

SELECT * FROM users WHERE salary BETWEEN '45000' AND '55000';




-- AND / OR
SELECT * FROM users WHERE gender='Female' AND salary>'60000';
SELECT * FROM users WHERE gender='Male' AND salary>'60000';

SELECT * FROM users WHERE gender='Female' OR id>10 ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender='Female' OR id>10 ORDER BY date_of_birth ASC LIMIT 5;
SELECT * FROM users WHERE gender='Female' OR id>10 LIMIT 3;

SELECT * FROM  users WHERE salary > '60000' ORDER BY name DESC;
SELECT * FROM users ORDER BY salary ASC;
SELECT * FROM users WHERE salary BETWEEN '50000' AND '70000';