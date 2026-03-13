Total Revenue
SELECT 
SUM(price) AS total_revenue
FROM order_items;
Top 10 Products
SELECT 
product_id,
COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;
Revenue by Product Category
SELECT 
p.product_category,
SUM(oi.price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category
ORDER BY revenue DESC;
Monthly Sales Trend
SELECT 
DATE_FORMAT(order_purchase_timestamp,'%Y-%m') AS month,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;
Top Cities by Orders
SELECT 
customer_city,
COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY customer_city
ORDER BY total_orders DESC
LIMIT 10;
Advanced SQL (Window Function)
SELECT
product_id,
SUM(price) AS revenue,
RANK() OVER (ORDER BY SUM(price) DESC) AS product_rank
FROM order_items
GROUP BY product_id;
