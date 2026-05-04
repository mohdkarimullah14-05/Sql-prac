-- LEFT JOIN

-- List every customer. If they have placed orders, show the order count; otherwise show 0.
SELECT c.*,COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.name;


-- Find all employees who have NOT been assigned to any department.
SELECT e.*
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- Show every product name and its category name. If the product has no category, show NULL.
SELECT p.name,c.category_name
FROM products p
LEFT JOIN categories c
ON p.category_id = c.category_id;


-- Return the names of students who have not enrolled in any course.
SELECT s.name
FROM students s
LEFT JOIN enrollments e
ON s.student_id = e.student_id
WHERE e.course_id IS NULL;


-- List all employees. For each, show their manager's name (or NULL if they have no manager).
SELECT e.*,m.name AS manager_name
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


-- Show each customer's name and total amount spent. Customers with no orders should show 0.
SELECT c.name, COALESCE(SUM(o.amount),0) AS total_amount_spent
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.name;


-- Find products that have never appeared in any order.
SELECT p.product_id,p.name, 'No single order yet' AS order_status
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;


-- List all courses and how many students are enrolled. Include courses with zero enrollments.
SELECT c.course_id,c.course_name,COUNT(e.student_id) AS total_students_opted
FROM courses c
LEFT JOIN enrollments e
ON c.course_id = e.course_id
GROUP BY c.course_id;


-- Show each department name and the average salary of its employees. 
-- Include departments with no employees.
SELECT d.dept_id,d.dept_name,ROUND(AVG(e.salary),2) avg_salary
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id,d.dept_name;


-- For every customer, show their name and the date of their very first order (NULL if none).
SELECT c.name, MIN(o.order_date) AS very_first_order_date
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.name;



























