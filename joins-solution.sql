-- 1. Get all customers and their addresses.
SELECT * FROM customers AS c
JOIN addresses AS a
ON c.id = a.customer_id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT * FROM orders AS o
JOIN line_items AS li
ON o.id = li.order_id;

-- 3. Which warehouses have cheetos?
SELECT * FROM warehouse AS w
JOIN warehouse_product AS wp
ON w.id = wp.warehouse_id
WHERE wp.product_id = 5 AND wp.on_hand > 0;

-- 4. Which warehouses have diet pepsi?
SELECT * FROM warehouse AS w
JOIN warehouse_product AS wp
ON w.id = wp.warehouse_id
WHERE wp.product_id = 6 AND wp.on_hand > 0;

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

-- 6. How many customers do we have?
SELECT SUM(first_name) FROM customers;

-- 7. How many products do we carry?
SELECT SUM(description) FROM products;

-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) FROM warehouse_product
WHERE product_id = 6;