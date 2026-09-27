# QA SQL Practice

## Objective
Practice SQL queries used by QA engineers for database validation.

## Database
MySQL

## Tables
- users
- products
- orders

## SQL Concepts Practiced
- SELECT
- WHERE
- ORDER BY
- DISTINCT
- COUNT
- AVG
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN

## QA Use Cases
- Validate user records
- Validate product data
- Verify order creation
- Verify relationships between users and orders
- Find missing records
- Compare application data with database data

## QA Validation Examples

### Validation 1 — Active Users

Query:
SELECT * FROM users WHERE status = 'Active';

QA Validation:
Verify that only active users are returned.

Expected Result:
All returned users should have status = Active.

Actual Result:
All the students returned have active status

Status:
PASS

### Validation 2 — Users with no orders

Query:
SELECT * FROM users LEFT JOIN orders ON users.user_id = orders.user_id WHERE orders.order_id IS NULL;

QA Validation:
Verify that users without any orders are returned

Expected Result:
All returned users should not have any orders.

Actual Result:
Amit Shah and Kunal Shah were returned. Both users have no orders.

Status:
PASS

### Validation 3 — Product price above 500

Query:
SELECT * FROM products WHERE price>500;

QA Validation:
Verify that only products whose price is greater than 500 are returned.

Expected Result:
Only products whose price greater than 500 should be returned

Actual Result:
Products whose price is greater than 500 are returned

Status:
PASS

### Validation 4 — Products from highest to lowest price

Query:
SELECT * FROM products ORDER BY price DESC;

QA Validation:
Verify that products are sorted from highest to lowest by price.

Expected Result:
Products should be sorted from highest to lowest by price.

Actual Result:
Products are sorted from highest to lowest by price.

Status:
PASS

### Validation 5 — Categories containing more than 2 products

Query:
SELECT category,COUNT(*) AS product_count FROM products GROUP BY category HAVING COUNT(*) > 2;

QA Validation:
Verify that categories containing more than 2 products are returned.

Expected Result:
Categories having more than 2 products should be returned.

Actual Result:
Electronics category returned with 4 products.

Status:
PASS

## Practice
15 SQL queries were created and tested using MySQL Workbench.