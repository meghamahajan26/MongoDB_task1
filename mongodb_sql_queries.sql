select * from sales

select * from product

select * from customer

--1) inserting new sale record 
	
INSERT INTO sales (order_line, order_id, order_date, ship_date, ship_mode, customer_id, product_id, sales, quantity, discount, profit)
VALUES (1, 'SQ-3345-398477', '2024-09-25', '2024-09-28', 'First Class', 'SY-65442', 'OFF-LA-10000240', 300, 2, 0.1, 60);

--2) inserting new sale record

INSERT INTO sales (order_line, order_id, order_date, ship_date, ship_mode, customer_id, product_id, sales, quantity, discount, profit)
VALUES (1, 101, '2024-09-25', '2024-09-28', 'First Class', 1, 5, 300, 2, 0.1, 60);

--3) update discount for particular order_id

UPDATE sales 
SET discount = 0.15 
WHERE order_id = 'CA-2016-138688';

--4) delete sales record

DELETE FROM sales 
WHERE order_id = 'SQ-3345-398477';

--5) select total sales per customer

SELECT customer_id, SUM(sales) AS total_sales 
FROM sales 
GROUP BY customer_id;

--6) finding all product of particular category

SELECT * FROM product 
WHERE category = 'Furniture';

--7) select top 5 most profitable salres order

SELECT * FROM sales 
ORDER BY profit DESC 
LIMIT 5;

