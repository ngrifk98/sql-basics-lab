-- 1. Count how many orders were made from the USA.
SELECT COUNT(*) AS total_orders_from_usa
FROM invoice
WHERE billing_country = 'USA';

-- 2. Find the largest order total amount.
SELECT MAX(total) AS largest_order_total_amount
FROM invoice;

-- 3. Find the smallest order total amount.
SELECT MIN(total) AS smallest_order_total_amount
FROM invoice;

-- 4. Find all orders bigger than $5.
SELECT *
FROM invoice
WHERE total > 5.0;

-- 5. Count how many orders were smaller than $5.
SELECT COUNT(*) AS total_orders_smaller_than_5
FROM invoice
WHERE total < 5.0;

-- 6. Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) AS total_orders_in_ca_tx_az
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7. Get the average total of the orders.
SELECT AVG(total) AS average_total_orders
FROM invoice;

-- 8. Get the total sum of the orders.
SELECT SUM(total) AS total_sum_orders
FROM invoice;

-- 9. Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- 10. Delete the invoice with an invoice_id of 1.
DELETE FROM invoice
WHERE invoice_id = 1;
