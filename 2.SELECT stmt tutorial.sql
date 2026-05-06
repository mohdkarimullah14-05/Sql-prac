SELECT *
FROM parks_and_recreation.employee_demographics;


SELECT first_name,last_name,birth_date,age,(age + 10) * 10 + 10
FROM parks_and_recreation.employee_demographics;

# PEMDAS is the order of operations for arithmetic or math  with in MySQL
# P - Parantheses, E - Exponents, M - Multiplication, D - Divison, A - Addition, S - Subtraction

SELECT DISTINCT first_name,gender
FROM parks_and_recreation.employee_demographics;

