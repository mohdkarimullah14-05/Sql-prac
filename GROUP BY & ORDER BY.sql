SELECT *
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;


-- ORDER BY 
-- By default ASC 

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY 5,4;


