USE ecommerce_db;

-- Insert customers
INSERT INTO customers (full_name, email, phone, address) VALUES
('Aarav Mehta', 'aarav@example.com', '9876543210', 'Mumbai, India'),
('Sanya Kapoor', 'sanya@example.com', '9988776655', 'Pune, India'),
('Rohan Sharma', 'rohan@example.com', '9123456780', 'Delhi, India');

-- Insert categories
INSERT INTO categories (name, description) VALUES
('Electronics', 'Electronic gadgets and devices'),
('Fashion', 'Clothing and accessories'),
('Books', 'Printed and digital books');

-- Insert products
INSERT INTO products (name, category_id, price, stock, description) VALUES
('Smartphone X', 1, 24999.00, 50, 'Latest smartphone with AMOLED display'),
('Laptop Pro 15', 1, 65999.00, 20, 'High-performance laptop'),
('Wireless Earbuds', 1, 1999.00, 100, 'Bluetooth wireless earbuds'),
('Men T-Shirt', 2, 499.00, 200, 'Cotton T-shirt'),
('Women Dress', 2, 1199.00, 150, 'Stylish summer dress'),
('Fiction Novel', 3, 299.00, 80, 'Bestselling fiction novel');

-- Insert orders
INSERT INTO orders (customer_id, total_amount, status) VALUES
(1, 26998.00, 'Completed'),
(2, 1698.00, 'Pending'),
(3, 65999.00, 'Shipped');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 24999.00),
(1, 3, 1, 1999.00),
(2, 4, 2, 499.00),
(3, 2, 1, 65999.00);

-- Insert payments
INSERT INTO payments (order_id, payment_method, payment_status, amount) VALUES
(1, 'UPI', 'Paid', 26998.00),
(2, 'COD', 'Pending', 1698.00),
(3, 'Credit Card', 'Paid', 65999.00);
