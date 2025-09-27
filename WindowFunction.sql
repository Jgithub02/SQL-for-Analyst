-- WINDOW FUNCTIONS


SELECT gender, AVG(salary)  AS avg_salary
FROM employee_demographics D 
JOIN employee_salary S
	ON D.employee_id = S.employee_id
GROUP BY gender;

SELECT gender, AVG(salary)  OVER(PARTITION BY gender)
FROM employee_demographics D 
JOIN employee_salary S
	ON D.employee_id = S.employee_id;
    
SELECT D.first_name, D.last_name, AVG(salary)  OVER(PARTITION BY gender)
FROM employee_demographics D 
JOIN employee_salary S
	ON D.employee_id = S.employee_id;