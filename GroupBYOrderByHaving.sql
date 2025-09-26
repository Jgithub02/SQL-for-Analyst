-- GROUP BY Statement

SELECT * FROM employee_demographics;

SELECT gender 
FROM employee_demographics
GROUP BY gender;

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT * FROM employee_salary;

SELECT occupation 
FROM employee_salary
GROUP BY occupation;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

SELECT gender , AVG(age), MAX(age), MIN(age), COUNT(employee_id)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY 

SELECT * FROM employee_demographics;

SELECT * FROM 
employee_demographics
ORDER BY first_name;

SELECT * FROM 
employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY age, gender ;

SELECT *
FROM employee_demographics
ORDER BY 5, 4;

-- HAVING 

SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;


SELECT occupation, AVG(salary) 
FROM employee_salary
WHERE occupation LIKE "%nager"
GROUP BY occupation
HAVING AVG(salary) > 75000;

-- LIMIT & ALIASING

SELECT * FROM 
employee_demographics;

SELECT * FROM 
employee_demographics
LIMIT 3;

SELECT * FROM 
employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT gender , AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender;

