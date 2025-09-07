-- Get employee details and their office code using INNER JOIN

SELECT employees.firstName, employees.lastName, employees.email, employees.officeCode
FROM employees
INNER JOIN offices ON employees.officeCode = offices.officeCode;

-- Get product details and include matching product line info (show all products, even if productLine is missing)

SELECT products.productName, products.productVendor, products.productLine
FROM products
LEFT JOIN productlines ON products.productLine = productlines.productLine;

-- Retrieve dates, status, and customer info for the first 10 orders (including orders without matching customers)

SELECT orders.orderDate, orders.shippedDate, orders.status, orders.customerNumber
FROM customers
RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber
LIMIT 10;