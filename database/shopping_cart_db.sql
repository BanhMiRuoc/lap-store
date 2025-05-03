CREATE DATABASE shopping_cart_db;
USE shopping_cart_db;

CREATE TABLE user_dtls (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    mobile_number VARCHAR(20),
    email VARCHAR(255),
    address TEXT,
    city VARCHAR(100),
    pincode VARCHAR(20),
    password VARCHAR(255),
    profile_image VARCHAR(255),
    role VARCHAR(50),
    isEnable BOOLEAN,
    account_non_locked BOOLEAN default true,
    failed_attempts INT,
    lock_time DATETIME,
    reset_token VARCHAR(255)
);

CREATE TABLE Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    image_name VARCHAR(255),
    is_active BOOLEAN
);

CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(500),
    description VARCHAR(5000),
    category VARCHAR(255),
    price DOUBLE,
    stock INT,
    image VARCHAR(255),
    discount INT,
    discount_price DOUBLE,
    is_active BOOLEAN
);

CREATE TABLE Cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

CREATE TABLE order_address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    mobile_no VARCHAR(20),
    address TEXT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(20)
);

CREATE TABLE product_order (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(100),
    order_date DATE,
    product_id INT,
    price DOUBLE,
    quantity INT,
    user_id INT,
    status VARCHAR(100),
    payment_type VARCHAR(100),
    order_address_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (user_id) REFERENCES UserDtls(id),
    FOREIGN KEY (order_address_id) REFERENCES OrderAddress(id)
);

INSERT INTO UserDtls (name, mobile_number, email, address, city, pincode, password, profile_image, role, is_enable, account_non_locked, failed_attempts, lock_time, reset_token) VALUES
('Admin', '0900000001', 'biyeo126@gmail.com', '123 Street 1', 'City1', '700001', '$2a$12$oAWEkaiyBLa.l2Fof9vJve/26NNBG2DaS6Dh45asD2CpKZxhla0F.', 'profile1.jpg', 'ADMIN', TRUE, TRUE, 0, NULL, NULL),
('User', '0900000002', 'user@example.com', '123 Street 2', 'City2', '700002', 'pass2', 'profile1.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL);

INSERT INTO Category (name, image_name, is_active) VALUES
('Laptop', 'acer_nitro.jpg', TRUE),
('Headphone', 'bose.jpg', TRUE),
('Smartphone', 'cutwif.jpg', TRUE),
('Mousegaming', 'eromonic.jpg', TRUE),
('Monitorgaming', 'philips_m.jpg', TRUE),
('Faxingmachine', 'brother.jpg', TRUE);

INSERT INTO Product (title, description, category, price, stock, image, discount, discount_price, is_active) VALUES
('Bose Headphone', 'Bose Headphone - violet gaming headphone', 'Headphone', 146000, 17, 'bose.jpg', 10, 131400, TRUE),
('Acer Nitro Gaming Laptop', 'Acer Nitro Gaming Laptop - High performance', 'Laptop', 36000000, 38, 'acer_nitro.jpg', 12, 31680000, TRUE),
('Asus Gaming Laptop', 'Asus Gaming Laptop - High performance', 'Laptop', 30000000, 17, 'asus.jpg', 20, 24000000, TRUE),
('Asus Vivobook Laptop', 'Asus Vivobook Laptop - High performance', 'Laptop', 35000000, 15, 'asus_vivobook.jpg', 6, 32900000, TRUE),
('HP Laptop', 'HP Laptop - High performance', 'Laptop', 20000000, 20, 'hp.jpg', 23, 15400000, TRUE),
('Nothing Laptop', 'Nothing Laptop - High performance', 'Laptop', 15000000, 50, 'laptop.jpg', 23, 11550000, TRUE),
('Lenovo Laptop', 'Lenovo Laptop - High performance', 'Laptop', 21000000, 12,'lenovo.jpg', 10, 18900000, TRUE),
('Lenovo Loq Gaming Laptop', 'Lenovo Loq Gaming Laptop - High performance', 'Laptop', 32000000, 5, 'lenovo-loq.jpg', 11, 28480000, TRUE),
('Cutwif Phone', 'Cutwif Phone - New Brand Phone', 'Smartphone', 9000000, 16, 'cutwif.jpg', 26, 6660000, TRUE),
('Iphone 16', 'Iphone 16 - High performance', 'Smartphone', 45000000, 43, 'iphone_16.jpg', 21, 35550000, TRUE),
('Philips Phone', 'Philips Phone - New Brand Phone', 'Smartphone', 7000000, 28, 'philips.jpg', 15, 5250000, TRUE),
('Apple Phone', 'Apple Phone - New Brand Phone', 'Smartphone', 8500000, 26, 'apple.jpg', 11, 6715000, TRUE),
('Apple GSM Phone', 'Apple GSM Phone - New Brand Phone', 'Smartphone', 12500000, 42, 'apple_gsm.jpg', 19, 8875000, TRUE),
('T Phone', 'T Phone - New Brand Phone', 'Smartphone', 6500000, 87, 't_phone.jpg', 9, 5915000, TRUE),
('Beats Headphone', 'Beats Headphone - white gaming headphone', 'Headphone', 700000, 37, 'beats.jpg', 16, 588000, TRUE),
('JPL Headphone', 'JPL Headphone - black gaming headphone', 'Headphone', 800000, 6, 'jpl.jpg', 26, 592000, TRUE),
('BH14 Headphone', 'BH14 Headphone - blue gaming headphone', 'Headphone', 500000, 13, 'bh14.jpg', 11, 445000, TRUE),
('Rockerz Headphone', 'Rockerz Headphone - red gaming headphone', 'Headphone', 8500000, 95, 'rockerz.jpg', 27, 620500, TRUE),
('Hammer Headphone', 'Hammer Headphone - gold gaming headphone', 'Headphone', 1000000, 25, 'hammer.jpg', 18, 820000, TRUE),
('Leaf Headphone', 'Leaf Headphone - white gaming headphone', 'Headphone', 850000, 33, 'leaf.jpg', 11, 756500, TRUE),
('Eromonic Mouse', 'Eromonic Mouse - black gaming mouse', 'Mousegaming', 500000, 20, 'eromonic.jpg', 10, 450000, TRUE),
('Logitech Mouse', 'Logitech Mouse - white gaming mouse', 'Mousegaming', 600000, 15, 'g502.jpg', 12, 528000, TRUE),
('Razer Mouse', 'Razer Mouse - red gaming mouse', 'Mousegaming', 700000, 10, 't_wolf.jpg', 15, 595000, TRUE),
('Philips Monitor', 'Philips Monitor - black gaming monitor', 'Mousegaming', 8000000, 5, 'g102.jpg', 20, 6400000, TRUE),
('Samsung Monitor', 'Samsung Monitor - white gaming monitor', 'Mousegaming', 9000000, 8, 'havit.jpg', 18, 7380000, TRUE),
('Philips Monitor', 'Philips Monitor - black gaming monitor', 'Mousegaming', 8000000, 5, 'hypergear.jpg', 20, 6400000, TRUE),
('Samsung Monitor', 'Samsung Monitor - white gaming monitor', 'Mousegaming', 9000000, 8, 'plusefire.jpg', 18, 7380000, TRUE),
('LG Monitor', 'LG Monitor - red gaming monitor', 'Monitorgaming', 10000000, 12, 'lg.jpg', 15, 8500000, TRUE),
('Dell Monitor', 'Dell Monitor - blue gaming monitor', 'Monitorgaming', 11000000, 10, 'dell.jpg', 22, 8580000, TRUE),
('Acer Monitor', 'Acer Monitor - green gaming monitor', 'Monitorgaming', 12000000, 7, 'asus.jpg', 25, 9000000, TRUE),
('Asus Monitor', 'Acer Monitor - black gaming monitor', 'Monitorgaming', 13000000, 5, 'philips_m.jpg', 20, 10400000, TRUE),
('Dell Monitor', 'Dell Monitor - blue gaming monitor', 'Monitorgaming', 11000000, 10, 'koorui.jpg', 22, 8580000, TRUE),
('Asus M Monitor', 'Acer Monitor - green gaming monitor', 'Monitorgaming', 12000000, 7, 'asus_m.jpg', 25, 9000000, TRUE),
('Xiaomi Monitor', 'Acer Monitor - black gaming monitor', 'Monitorgaming', 13000000, 5, 'xiaomi.jpg', 20, 10400000, TRUE),
('Samsung Monitor', 'Acer Monitor - black gaming monitor', 'Monitorgaming', 13000000, 5, 'samsung.jpg', 20, 10400000, TRUE),
('Brother Printer', 'Brother Printer - black printer', 'FaxingMachine', 1500000, 20, 'brother.jpg', 10, 1350000, TRUE),
('Canon Printer', 'Canon Printer - white printer', 'FaxingMachine', 2000000, 15, 'samsung_f.jpg', 12, 1760000, TRUE),
('HP Printer', 'HP Printer - red printer', 'FaxingMachine', 2500000, 10, 'brother_c.jpg', 18, 2050000, TRUE),
('Epson Printer', 'Epson Printer - blue printer', 'FaxingMachine', 3000000, 5, 'hp_f.jpg', 20, 2400000, TRUE);
