-- INNER JOIN — 14 problems

-- List every employee along with their department name. 
-- Only include employees who belong to a department.
SELECT e.emp_id,e.name,d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;


-- Show each order (order_id, amount) together with the customer name who placed it.
SELECT o.order_id,o.amount,c.name
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;


-- Retrieve product name and category name for every product that has a category assigned.
SELECT p.name,c.category_name
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id;


-- List student names alongside the course names they are enrolled in.
SELECT s.name,c.course_name
FROM students s
INNER JOIN enrollments e
ON s.student_id = e.student_id
INNER JOIN courses c
ON e.course_id = c.course_id;


-- Display each salesperson's name and their assigned region name.
SELECT sp.name,r.region_name
FROM salespersons sp
INNER JOIN regions r
ON sp.region_id = r.region_id;


-- Show customer name and order amount for orders where the amount exceeds the average order amount.
SELECT c.name,o.amount AS amt_exceeds_avg_order_amt
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.amount > (SELECT AVG(amount) FROM orders);
                

-- Find the three customers who have spent the most in total across all orders.
SELECT c.customer_id,c.name,SUM(o.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id,c.name
ORDER BY total_spent DESC
LIMIT 3;


-- List all employees whose manager's name is "Alice". (Manager stored as manager_id in employees.)
SELECT e.emp_id,e.name,em.name AS manager_name
FROM employees e
INNER JOIN employees em
ON e.manager_id = em.emp_id
WHERE em.name = 'Alice';


-- For each product, show the product name and total quantity sold.
SELECT p.name,SUM(o.quantity) AS total_quantity_sold
FROM products p
INNER JOIN order_items o
ON p.product_id = o.product_id
GROUP BY p.product_id,p.name;


-- Show invoice number, customer name, product name, and line total (quantity × price) for every invoice line.
SELECT i.inv_id,c.name,p.name,(il.qty * il.price) AS line_total
FROM invoice_lines il
INNER JOIN invoices i
ON il.inv_id = i.inv_id
INNER JOIN customers c
ON i.customer_id = c.customer_id
INNER JOIN products p
ON il.product_id = p.product_id;








