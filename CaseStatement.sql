-- CASE STATEMENT


SELECT first_name, last_name, age,
CASE 
	WHEN age < 18 THEN "Teen"
	WHEN age BETWEEN 18 AND 40 THEN "Adult"
    WHEN age BETWEEN 40 AND 60 THEN "Young"
    WHEN age > 60 THEN "Old"
END AS Age_group
FROM employee_demographics;


SELECT first_name, last_name, salary,
CASE 
	WHEN salary < 50000 THEN salary*1.05
    WHEN salary >= 50000 THEN salary*1.07
END AS New_salary
FROM employee_salary;










