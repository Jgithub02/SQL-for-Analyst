-- SQL JOINS 

SELECT * FROM 
employee_demographics;

SELECT * FROM 
employee_salary;

SELECT * FROM 
employee_demographics D
INNER JOIN employee_salary S
	ON D.employee_id = S.employee_id;

SELECT D.employee_id, age, occupation
FROM employee_demographics D
INNER JOIN employee_salary S
	ON D.employee_id = S.employee_id;
    
SELECT * FROM 
employee_demographics D
LEFT JOIN employee_salary S
	ON D.employee_id = S.employee_id;   
    
SELECT * FROM 
employee_demographics D
RIGHT JOIN employee_salary S
	ON D.employee_id = S.employee_id;

-- SELF JOIN 

SELECT * FROM 
employee_salary S1
JOIN employee_salary S2
	ON S1.employee_id = S2.employee_id;

SELECT * FROM 
employee_salary S1
JOIN employee_salary S2
	ON S1.employee_id + 1 = S2.employee_id;

SELECT S1.employee_id AS santa_emp_id,
S1.first_name AS first_name_santa,
S1.last_name AS last_name_santa,
S2.employee_id AS emp_id,
S2.first_name AS first_name_emp,
S2.last_name AS last_name_emp
FROM employee_salary S1
JOIN employee_salary S2
	ON S1.employee_id + 1 = S2.employee_id;

-- JOINING MULTIPLE TABLES 

SELECT * FROM 
employee_demographics D
INNER JOIN employee_salary S
	ON D.employee_id = S.employee_id;

SELECT * FROM 
parks_departments;

SELECT * FROM 
employee_demographics D
INNER JOIN employee_salary S
	ON D.employee_id = S.employee_id
INNER JOIN parks_departments P
	ON S.dept_id = P.department_id;

-- UNIONS 

SELECT first_name, last_name
FROM employee_demographics
UNION 
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;

SELECT first_name, last_name, "Old Man" as lable
FROM employee_demographics
WHERE age > 40 AND gender = "Male"
UNION ALL
SELECT first_name, last_name, "Old Lady" as lable
FROM employee_demographics
WHERE age > 40 AND gender = "Female"
UNION ALL
SELECT first_name, last_name, "Highly Paid Employee" as lable 
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name, last_name;
