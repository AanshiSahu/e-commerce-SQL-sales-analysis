CREATE TABLE customers (
    customer_id VARCHAR(50),
    customer_city VARCHAR(50),
    customer_state VARCHAR(50)
);

CREATE TABLE orders (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_purchase_timestamp DATETIME,
    order_status VARCHAR(50)
);

CREATE TABLE order_items (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE products (
    product_id VARCHAR(50),
    product_category VARCHAR(100)
);
