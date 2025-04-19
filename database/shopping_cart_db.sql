-- 1. Tạo database
CREATE DATABASE shopping_cart_db;
USE shopping_cart_db;

-- 2. Bảng users
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    role VARCHAR(20)
);

-- 3. Bảng products
CREATE TABLE products (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DOUBLE NOT NULL,
    image_name VARCHAR(255)
);

-- 4. Bảng carts
CREATE TABLE carts (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNIQUE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 5. Bảng cart_items
CREATE TABLE cart_items (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cart_id BIGINT,
    product_id BIGINT,
    quantity INT DEFAULT 1,
    price DOUBLE,
    FOREIGN KEY (cart_id) REFERENCES carts(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- 6. Bảng category
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    image_name VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE
);

-- 7. Thêm dữ liệu vào các bảng
INSERT INTO users (id, username, password, email, role) VALUES
(1, 'user1', 'pass1123', 'luis50@hotmail.com', 'ADMIN'),
(2, 'user2', 'pass2123', 'gary76@brown-guzman.com', 'USER'),
(3, 'user3', 'pass3123', 'hogancrystal@wilson.com', 'USER'),
(4, 'user4', 'pass4123', 'lanechristopher@ramirez.info', 'ADMIN'),
(5, 'user5', 'pass5123', 'bsmith@clark.info', 'USER'),
(6, 'user6', 'pass6123', 'mitchellcassandra@gibbs-torres.biz', 'ADMIN'),
(7, 'user7', 'pass7123', 'joshuahenderson@yahoo.com', 'ADMIN'),
(8, 'user8', 'pass8123', 'batesmathew@hotmail.com', 'ADMIN'),
(9, 'user9', 'pass9123', 'elizabethmoon@yahoo.com', 'ADMIN'),
(10, 'user10', 'pass10123', 'kstevens@hernandez.biz', 'ADMIN'),
(11, 'user11', 'pass11123', 'jasmine67@hotmail.com', 'USER'),
(12, 'user12', 'pass12123', 'xwilliams@moore.com', 'ADMIN'),
(13, 'user13', 'pass13123', 'johngomez@hotmail.com', 'USER'),
(14, 'user14', 'pass14123', 'bneal@hotmail.com', 'ADMIN'),
(15, 'user15', 'pass15123', 'charles79@yahoo.com', 'USER'),
(16, 'user16', 'pass16123', 'christopher88@ware-williams.com', 'ADMIN'),
(17, 'user17', 'pass17123', 'jesseharris@mcguire.biz', 'ADMIN'),
(18, 'user18', 'pass18123', 'laurareed@gmail.com', 'USER'),
(19, 'user19', 'pass19123', 'andersonkevin@smith.com', 'ADMIN'),
(20, 'user20', 'pass20123', 'kfarmer@yahoo.com', 'USER');

INSERT INTO products (id, name, description, price, image_name) VALUES
(1, 'Product 1', 'Painting hundred first house. Win let base tend.', 582.69, 'product1.jpg'),
(2, 'Product 2', 'Congress without many study. Teach into must although. Wide customer too argue senior see however.', 215.17, 'product2.jpg'),
(3, 'Product 3', 'Really bill radio. By why case north inside walk number man. Themselves decade direction example.', 508.6, 'product3.jpg'),
(4, 'Product 4', 'Ability simple area office off air.', 905.9, 'product4.jpg'),
(5, 'Product 5', 'Pressure fast design capital two happen.', 974.21, 'product5.jpg'),
(6, 'Product 6', 'Wait better evening movie again perhaps. Pattern traditional both generation generation huge.', 341.32, 'product6.jpg'),
(7, 'Product 7', 'Simply agreement still stay human.', 99.6, 'product7.jpg'),
(8, 'Product 8', 'Lot mission business today million yes people.', 209.46, 'product8.jpg'),
(9, 'Product 9', 'Authority many important help. Road article rest yard but reflect place such.', 378.72, 'product9.jpg'),
(10, 'Product 10', 'Question TV such performance pass list. Identify security area too.', 890.33, 'product10.jpg'),
(11, 'Product 11', 'Bar late never decision street degree.', 242.69, 'product11.jpg'),
(12, 'Product 12', 'Develop down look how score. Light dark respond positive alone.', 70.98, 'product12.jpg'),
(13, 'Product 13', 'Result direction budget machine. Lot husband some increase.', 599.78, 'product13.jpg'),
(14, 'Product 14', 'Debate better nor claim return what director. Marriage front image. Author student send item nice.', 882.03, 'product14.jpg'),
(15, 'Product 15', 'Per really expert least professor modern. Skin particular night indeed teacher work knowledge.', 95.18, 'product15.jpg'),
(16, 'Product 16', 'Baby any program miss trial impact interest. Another it remain member develop level.', 806.05, 'product16.jpg'),
(17, 'Product 17', 'Get six fill green worker today result. Develop add common family southern family.', 70.89, 'product17.jpg'),
(18, 'Product 18', 'Popular degree foreign third enjoy believe eat defense. Suddenly usually test heart.', 75.06, 'product18.jpg'),
(19, 'Product 19', 'City onto full also third simply tend nearly. Population issue nature but.', 796.41, 'product19.jpg'),
(20, 'Product 20', 'Charge consumer much then. Investment gas none few bar beyond. Who management need he.', 618.17, 'product20.jpg');

INSERT INTO carts (id, user_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

INSERT INTO cart_items (id, cart_id, product_id, quantity, price) VALUES
(1, 1, 13, 2, 1199.56),
(2, 1, 16, 3, 2418.15),
(3, 2, 6, 4, 1365.28),
(4, 2, 11, 1, 242.69),
(5, 3, 15, 2, 190.36),
(6, 3, 17, 1, 70.89),
(7, 4, 10, 4, 3561.32),
(8, 4, 8, 2, 418.92),
(9, 5, 6, 5, 1706.6),
(10, 6, 18, 4, 300.24),
(11, 6, 17, 4, 283.56),
(12, 7, 13, 4, 2399.12),
(13, 7, 3, 4, 2034.4),
(14, 8, 17, 1, 70.89),
(15, 8, 18, 1, 75.06),
(16, 8, 1, 2, 1165.38),
(17, 9, 19, 1, 796.41),
(18, 10, 10, 3, 2670.99),
(19, 10, 15, 3, 285.54),
(20, 10, 17, 2, 141.78),
(21, 11, 4, 3, 2717.7),
(22, 11, 11, 2, 485.38),
(23, 11, 14, 5, 4410.15),
(24, 12, 17, 2, 141.78),
(25, 12, 1, 4, 2330.76),
(26, 12, 9, 2, 757.44),
(27, 13, 14, 5, 4410.15),
(28, 14, 8, 2, 418.92),
(29, 14, 14, 1, 882.03),
(30, 14, 14, 2, 1764.06),
(31, 15, 7, 3, 298.8),
(32, 16, 11, 3, 728.07),
(33, 16, 8, 1, 209.46),
(34, 16, 19, 1, 796.41),
(35, 17, 6, 2, 682.64),
(36, 17, 20, 5, 3090.85),
(37, 17, 3, 1, 508.6),
(38, 18, 9, 1, 378.72),
(39, 18, 8, 3, 628.38),
(40, 18, 13, 4, 2399.12),
(41, 19, 2, 1, 215.17),
(42, 19, 16, 3, 2418.15),
(43, 19, 2, 2, 430.34),
(44, 20, 1, 5, 2913.45);

INSERT INTO category (name, image_name, is_active) VALUES
('Laptop', 'laptop.png', TRUE),
('Smartphone', 'smartphone.png', TRUE),
('Tablet', 'tablet.png', TRUE),
('Accessories', 'accessories.jpg', TRUE),
('Gaming', 'gaming.png', FALSE);
