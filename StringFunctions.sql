-- String Functions 

SELECT LENGTH("skyfall");

SELECT first_name, LENGTH(first_name) 
FROM employee_demographics;

SELECT first_name, LENGTH(first_name) 
FROM employee_demographics
ORDER BY 2;

SELECT UPPER("skyfall");
SELECT LOWER("LIME WATER");

SELECT first_name, UPPER(first_name) 
FROM employee_demographics;

SELECT TRIM("     sky    ");
SELECT LTRIM("     sky    ");
SELECT RTRIM("     sky    ");

SELECT first_name, LEFT(first_name,4)
FROM employee_demographics;

SELECT first_name, LEFT(first_name,4), RIGHT(first_name, 4)
FROM employee_demographics;

SELECT first_name, LEFT(first_name,4), 
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2)
FROM employee_demographics;

SELECT first_name,
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

SELECT first_name,
SUBSTRING(birth_date, 9, 2) AS birth_day
FROM employee_demographics;

SELECT first_name,
REPLACE(first_name, "a", "z") AS new_name 
FROM employee_demographics;

SELECT LOCATE("t", 'Jitendra');

SELECT first_name, last_name, 
CONCAT(first_name, ' ', last_name) AS full_name 
FROM employee_demographics;


