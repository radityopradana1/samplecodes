select * from users;

select * from sessions;

select * from products where category = 'Audio';

select * from products;

select * from products where product_id = 1; 

select * from cart;

select * from cart where user_id = 1;

select * from orders;

INSERT INTO users (user_id, username, email, password, first_name, last_name, created_at)
VALUES 
(3, 'jdoe', 'jdoe@example.com', 'hashedpassword123', 'John', 'Doe', '2024-11-06 10:30:00');

CREATE TABLE sessions (
    session_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    session_token VARCHAR(255) UNIQUE NOT NULL,
    login_time TIMESTAMP NOT NULL DEFAULT NOW(),
    logout_time TIMESTAMP,
    ip_address VARCHAR(45)
);


INSERT INTO sessions (user_id, session_token, login_time, ip_address)
VALUES 
(3, 'unique-session-token-124', NOW(), '192.168.1.1');

UPDATE sessions
SET logout_time = NOW()
WHERE session_token = 'unique-session-token-123';

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INTEGER NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);


INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Smartphone', 699.99, 50, 'A high-end smartphone with excellent features');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Laptop', 1199.99, 30, 'A powerful laptop for productivity and gaming');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Headphones', 199.99, 100, 'Noise-canceling headphones with high-quality sound');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Smartwatch', 299.99, 70, 'A smartwatch with fitness tracking and notifications');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Tablet', 499.99, 40, 'A lightweight tablet with a high-resolution display');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Gaming Console', 399.99, 25, 'Next-gen gaming console with immersive graphics');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Wireless Earbuds', 149.99, 120, 'Compact wireless earbuds with excellent sound quality');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('Bluetooth Speaker', 89.99, 60, 'Portable Bluetooth speaker with powerful bass');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('4K Monitor', 329.99, 35, 'Ultra HD monitor for work and entertainment');

INSERT INTO products (product_name, price, quantity, description)
VALUES 
('External Hard Drive', 79.99, 80, '1TB external hard drive for extra storage');


ALTER TABLE products
ADD COLUMN category VARCHAR(50);


UPDATE products
SET category = 'Electronics'
WHERE product_id = 1;

UPDATE products
SET category = 'Computers'
WHERE product_id = 2;

UPDATE products
SET category = 'Accessories'
WHERE product_id = 3;

UPDATE products
SET category = 'Wearables'
WHERE product_id = 4;

UPDATE products
SET category = 'Tablets'
WHERE product_id = 5;

UPDATE products
SET category = 'Gaming'
WHERE product_id = 6;

UPDATE products
SET category = 'Audio'
WHERE product_id = 7;

UPDATE products
SET category = 'Audio'
WHERE product_id = 8;

UPDATE products
SET category = 'Monitors'
WHERE product_id = 9;

UPDATE products
SET category = 'Storage'
WHERE product_id = 10;

CREATE TABLE cart (
    cart_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL DEFAULT 1,
    added_at TIMESTAMP NOT NULL DEFAULT NOW()
);



INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 5, 2);

INSERT INTO cart (user_id, product_id, quantity)
VALUES (1, 1, 1);

INSERT INTO cart (user_id, product_id, quantity)
VALUES (3, 6, 4);


CREATE TABLE order_items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    product_id INTEGER NOT NULL REFERENCES products(product_id),
    quantity INTEGER NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    payment_date TIMESTAMP NOT NULL DEFAULT NOW(),
    payment_method VARCHAR(50) NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL
);


CREATE TABLE shipping (
    shipping_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL REFERENCES orders(order_id),
    shipping_date TIMESTAMP NOT NULL,
    shipping_status VARCHAR(50) NOT NULL,
    tracking_number VARCHAR(100),
    shipping_method VARCHAR(50) NOT NULL
);

INSERT INTO orders (user_id, total_amount)
VALUES (1, 899.98);


INSERT INTO payments (order_id, payment_method, payment_status, amount)
VALUES (1, 'Credit Card', 'Completed', 899.98);


INSERT INTO shipping (order_id, shipping_date, shipping_status, tracking_number, shipping_method)
VALUES (1, NOW(), 'Shipped', 'TRACK123456', 'Standard');

DELETE FROM cart WHERE user_id = 1;

