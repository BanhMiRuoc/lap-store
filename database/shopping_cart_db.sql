-- 1. Tạo database
CREATE DATABASE shopping_cart_db;
USE shopping_cart_db;

-- 2. Bảng users
CREATE TABLE users (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    role VARCHAR(20)
);

-- 3. Bảng products
CREATE TABLE products (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DOUBLE NOT NULL,
    image_name VARCHAR(255)
);

-- 4. Bảng carts
CREATE TABLE carts (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    user_id BIGINT UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 5. Bảng cart_items
CREATE TABLE cart_items (
    id BIGINT IDENTITY(1,1) PRIMARY KEY,
    cart_id BIGINT,
    product_id BIGINT,
    quantity INT DEFAULT 1,
    price DOUBLE,
    FOREIGN KEY (cart_id) REFERENCES carts(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Thêm người dùng
INSERT INTO users (username, password, email, role) VALUES
('admin', 'admin', 'admin@example.com', 'ADMIN'),
('user', 'password', 'user@example.com', 'USER');

-- Thêm sản phẩm mẫu
INSERT INTO products (name, description, price, image_name) VALUES
('Laptop', 'High-performance laptop', 1500.00, 'laptop.jpg'),
('Smartphone', 'Latest smartphone with OLED display', 999.99, 'phone.jpg');
