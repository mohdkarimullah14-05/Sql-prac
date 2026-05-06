-- Joins (combining columns)

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;


-- INNER JOIN
SELECT ed.employee_id,ed.age,es.occupation
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id =  es.employee_id;
    
-- OUTER JOINS    
SELECT *
FROM employee_demographics AS ed
LEFT JOIN employee_salary AS es
	ON ed.employee_id =  es.employee_id;
    
SELECT *
FROM employee_demographics AS ed
RIGHT JOIN employee_salary AS es
	ON ed.employee_id =  es.employee_id;
    
-- SELF JOIN
SELECT es1.employee_id AS emp_santa, es1.first_name AS first_name_santa, es1.last_name AS last_name_santa,
es2.employee_id AS emp_santa, es2.first_name AS first_name_empa, es2.last_name AS last_name_emp
FROM employee_salary es1 
JOIN employee_salary es2
     ON es1.employee_id + 1 = es2.employee_id;
     
-- Joining multiple tables together
SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id =  es.employee_id;
    
SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
	ON ed.employee_id =  es.employee_id
INNER JOIN parks_departments pd
    ON es.dept_id = pd.department_id;
    
    
    
    
    
    
    