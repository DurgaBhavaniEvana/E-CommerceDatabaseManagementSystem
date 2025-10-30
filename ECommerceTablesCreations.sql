CREATE TABLE customers (
    customer_id int PRIMARY KEY,
    customer_name VARCHAR(35),
    state VARCHAR(25)
);

CREATE TABLE products (
    product_id int PRIMARY KEY,
    product_name VARCHAR(45),
    price numeric(10,3),
    cogs numeric(10,3),
    category VARCHAR(25),
    brand VARCHAR(25)
);

CREATE TABLE sales (
    order_id int PRIMARY KEY,
    order_date DATE,
    customer_id INT REFERENCES customers(customer_id),
    order_status VARCHAR(25),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    price_per_unit numeric(10,2)
);

-- Shippings Table
CREATE TABLE shippings (
    shipping_id int PRIMARY KEY,
    order_id INT REFERENCES sales(order_id),
    shipping_date DATE,
    return_date DATE,
    shipping_providers VARCHAR(55),
    delivery_status VARCHAR(55)
);

-- Payments Table
CREATE TABLE payments (
    payment_id int PRIMARY KEY,
    order_id INT REFERENCES sales(order_id),
    payment_date DATE,
    payment_status VARCHAR(55)
);

select * from shippings;