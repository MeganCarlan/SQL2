/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name */

SELECT * FROM products;

SELECT products.Name, categories.CategoryID FROM products
INNER JOIN categories 
ON products.CategoryID = categories.CategoryID
WHERE products.CategoryID = 1
ORDER BY products.Name;




/* joins: find all product names, product prices, and products ratings that have a rating of 5 */

SELECT * FROM products;
SELECT * FROM employees;

SELECT products.Name, products.Price, reviews.Rating FROM products
INNER JOIN reviews 
ON products.ProductID = reviews.ProductID
WHERE reviews.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */

SELECT CONCAT(e.FirstName, " ", e.LastName) AS Employee, SUM(s.Quantity) AS Total
From employees AS e
INNER JOIN sales AS s
ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC;


/* joins: find the name of the department, and the name of the category for Appliances and Games */

SELECT * FROM departments AS d
INNER JOIN categories AS c
ON d.DepartmentID = c.DepartmentID
WHERE c.Name = "Appliances" OR c.Name = "Games";


/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT p.Name, SUM(s.Quantity * s.PricePerUnit) AS Total FROM products AS p
 INNER JOIN sales AS s
 ON p.ProductID = s.ProductID
 WHERE p.ProductID = 97
 GROUP BY p.ProductID;
 
 
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

SELECT p.Name, r.Reviewer, r.Rating, r.Comment FROM products AS p
INNER JOIN reviews AS r
ON p.ProductID = r.ProductID
WHERE p.Name = "Visio TV"
LIMIT 1;


-- ------------------------------------------ Extra - May be difficult

/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */