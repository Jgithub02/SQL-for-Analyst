SELECT * FROM employee_demographics;

SELECT first_name 
FROM employee_demographics;

SELECT first_name, last_name, birth_date
FROM employee_demographics;

SELECT first_name, last_name, birth_date, age 
FROM employee_demographics;

SELECT first_name, last_name, birth_date, age, age + 10 as new_age 
FROM employee_demographics;

SELECT DISTINCT(gender) 
FROM employee_demographics;

-- WHERE CLAUSE

SELECT * FROM employee_salary;

SELECT * FROM employee_salary
WHERE salary >= 50000;

SELECT * FROM employee_salary
WHERE salary > 50000;

SELECT * FROM employee_salary
WHERE salary <= 50000;

SELECT * FROM employee_salary
WHERE dept_id = 1;

SELECT * FROM employee_demographics
WHERE gender = "Female";

SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01";

-- AND, OR & NOT Operator (Logical operator)

SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01"
AND gender = "Male";

SELECT * FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR gender = "Male";

SELECT * FROM employee_demographics
WHERE (first_name = "TOM" AND age = 36) OR age > 40;

-- LIKE Statement

SELECT * FROM employee_demographics
WHERE first_name LIKE "Jer%";

SELECT * FROM employee_demographics
WHERE first_name LIKE "A%";

SELECT * FROM employee_demographics
WHERE first_name LIKE "%an%";

SELECT * FROM employee_demographics
WHERE first_name LIKE "A__";

SELECT * FROM employee_demographics
 
WHERE first_name LIKE "A__%";

SELECT * FROM employee_demographics
WHERE birth_date LIKE "1994%";


