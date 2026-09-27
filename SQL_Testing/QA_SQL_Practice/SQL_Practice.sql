CREATE DATABASE qa_practice;
USE qa_practice;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    status VARCHAR(20)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    status VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO users (user_id, name, email, status) VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', 'Active'),
(2, 'Priya Patel', 'priya@gmail.com', 'Active'),
(3, 'Amit Shah', 'amit@gmail.com', 'Inactive'),
(4, 'Neha Mehta', 'neha@gmail.com', 'Active'),
(5, 'Rohan Desai', 'rohan@gmail.com', 'Active'),
(6, 'Kunal Shah', 'kunal@gmail.com', 'Inactive'),
(7, 'Anjali Patel', 'anjali@gmail.com', 'Active'),
(8, 'Vivek Joshi', 'vivek@gmail.com', 'Active');


INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 65000.00),
(102, 'Wireless Mouse', 'Electronics', 800.00),
(103, 'Keyboard', 'Electronics', 1500.00),
(104, 'Monitor', 'Electronics', 12000.00),
(105, 'Office Chair', 'Furniture', 8500.00),
(106, 'Desk', 'Furniture', 7000.00),
(107, 'Notebook', 'Stationery', 250.00),
(108, 'Pen Set', 'Stationery', 150.00);

INSERT INTO orders (order_id, user_id, product_id, quantity, status) VALUES
(1001, 1, 101, 1, 'Completed'),
(1002, 1, 102, 2, 'Completed'),
(1003, 2, 103, 1, 'Pending'),
(1004, 2, 107, 5, 'Completed'),
(1005, 4, 104, 1, 'Completed'),
(1006, 5, 105, 1, 'Cancelled'),
(1007, 5, 106, 2, 'Completed'),
(1008, 7, 102, 3, 'Pending'),
(1009, 7, 108, 4, 'Completed'),
(1010, 8, 103, 2, 'Completed');

/*1.Select all users*/
SELECT * FROM users;

/*2.Select active users*/
SELECT * FROM users WHERE status="active";

/*3.Products above 500 price*/
SELECT * FROM products WHERE price<500;

/*4.Products price between 300 and 1000*/
SELECT * FROM products WHERE price BETWEEN 300 AND 1000;

/*5. Products from highest to lowest price*/
SELECT * FROM products ORDER BY price DESC;

/*6. Count total users*/
SELECT COUNT(*) FROM users;

/*7. Count users by status*/
SELECT status,COUNT(*) FROM users GROUP BY status;

/*8. Average product price*/
SELECT AVG(price) FROM products;

/*9. Count products in each category*/
SELECT category,COUNT(*) FROM products GROUP BY category;

/*10. Categories containing more than 2 products*/
SELECT category,COUNT(*) AS product_count FROM products GROUP BY category HAVING COUNT(*) > 2;

/*11. Join users with their orders*/
SELECT * FROM users INNER JOIN orders ON users.user_id = orders.user_id;

/*12. Find users who have placed orders*/
SELECT DISTINCT users.user_id, users.name FROM users INNER JOIN orders ON users.user_id = orders.user_id;

/*13. Find users who not have placed orders*/
SELECT * FROM users LEFT JOIN orders ON users.user_id = orders.user_id WHERE orders.order_id IS NULL;

/*14. Join orders with product details*/
SELECT * FROM orders INNER JOIN products ON orders.product_id = products.product_id;

/*15. Find orders where quantity>1*/
SELECT DISTINCT orders.product_id,products.product_name,orders.quantity FROM orders INNER JOIN products ON orders.product_id = products.product_id WHERE orders.quantity>1;

