USE startersql_1;

UPDATE users SET salary='48000', email='aarav@aarav.com' WHERE id = 1;
SELECT * FROM users;


-- Increase salary by 10000 for all users whose salary is less than 60000.
SET SQL_SAFE_UPDATES = 0; -- Temporarily disable Safe Update Mode
SET SQL_SAFE_UPDATES = 1;  -- Enable Safe Update Mode

UPDATE users
SET salary = salary + 10000
WHERE salary<60000;