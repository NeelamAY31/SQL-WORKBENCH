-- Deleting data
SELECT * FROM users;
DELETE FROM users WHERE salary='63000';

DELETE FROM users
WHERE salary IS NULL;