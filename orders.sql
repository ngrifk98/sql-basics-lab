-- 1. Create a table called orders with the specified columns
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(100),
    product_price NUMERIC(10, 2),
    quantity INTEGER
);

-- 2. Add 5 orders to the orders table for different people
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
    (1, 'Product A', 10.99, 3),
    (1, 'Product B', 7.49, 2),
    (2, 'Product C', 14.99, 1),
    (3, 'Product D', 5.99, 5),
    (2, 'Product E', 12.50, 4);

-- 3. Select all the records from the orders table
SELECT * FROM orders;

-- 4. Calculate the total number of products ordered
SELECT SUM(quantity) AS total_products_ordered FROM orders;

-- 5. Calculate the total order price
SELECT SUM(product_price * quantity) AS total_order_price FROM orders;

-- 6. Calculate the total order price by a single person_id
SELECT person_id, SUM(product_price * quantity) AS total_order_price
FROM orders
GROUP BY person_id;
