CREATE DATABASE shopping_cart_db;
USE shopping_cart_db;

CREATE TABLE UserDtls (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    mobileNumber VARCHAR(20),
    email VARCHAR(255),
    address TEXT,
    city VARCHAR(100),
    pincode VARCHAR(20),
    password VARCHAR(255),
    profileImage VARCHAR(255),
    role VARCHAR(50),
    isEnable BOOLEAN,
    accountNonLocked BOOLEAN,
    failedAttempts INT,
    lockTime DATETIME,
    resetToken VARCHAR(255)
);

CREATE TABLE Category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    imageName VARCHAR(255),
    isActive BOOLEAN
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
    discountPrice DOUBLE,
    isActive BOOLEAN
);

CREATE TABLE Cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

CREATE TABLE OrderAddress (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    email VARCHAR(255),
    mobileNo VARCHAR(20),
    address TEXT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(20)
);

CREATE TABLE ProductOrder (
    id INT AUTO_INCREMENT PRIMARY KEY,
    orderId VARCHAR(100),
    orderDate DATE,
    product_id INT,
    price DOUBLE,
    quantity INT,
    user_id INT,
    status VARCHAR(100),
    paymentType VARCHAR(100),
    orderAddress_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (user_id) REFERENCES UserDtls(id),
    FOREIGN KEY (orderAddress_id) REFERENCES OrderAddress(id)
);

INSERT INTO UserDtls (name, mobileNumber, email, address, city, pincode, password, profileImage, role, isEnable, accountNonLocked, failedAttempts, lockTime, resetToken) VALUES
('User1', '0900000001', 'user1@example.com', '123 Street 1', 'City1', '700001', 'pass1', 'profile1.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User2', '0900000002', 'user2@example.com', '123 Street 2', 'City2', '700002', 'pass2', 'profile2.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User3', '0900000003', 'user3@example.com', '123 Street 3', 'City3', '700003', 'pass3', 'profile3.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User4', '0900000004', 'user4@example.com', '123 Street 4', 'City4', '700004', 'pass4', 'profile4.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User5', '0900000005', 'user5@example.com', '123 Street 5', 'City5', '700005', 'pass5', 'profile5.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User6', '0900000006', 'user6@example.com', '123 Street 6', 'City6', '700006', 'pass6', 'profile6.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User7', '0900000007', 'user7@example.com', '123 Street 7', 'City7', '700007', 'pass7', 'profile7.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User8', '0900000008', 'user8@example.com', '123 Street 8', 'City8', '700008', 'pass8', 'profile8.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User9', '0900000009', 'user9@example.com', '123 Street 9', 'City9', '700009', 'pass9', 'profile9.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User10', '0900000010', 'user10@example.com', '123 Street 10', 'City10', '7000010', 'pass10', 'profile10.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User11', '0900000011', 'user11@example.com', '123 Street 11', 'City11', '7000011', 'pass11', 'profile11.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User12', '0900000012', 'user12@example.com', '123 Street 12', 'City12', '7000012', 'pass12', 'profile12.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User13', '0900000013', 'user13@example.com', '123 Street 13', 'City13', '7000013', 'pass13', 'profile13.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User14', '0900000014', 'user14@example.com', '123 Street 14', 'City14', '7000014', 'pass14', 'profile14.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User15', '0900000015', 'user15@example.com', '123 Street 15', 'City15', '7000015', 'pass15', 'profile15.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User16', '0900000016', 'user16@example.com', '123 Street 16', 'City16', '7000016', 'pass16', 'profile16.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User17', '0900000017', 'user17@example.com', '123 Street 17', 'City17', '7000017', 'pass17', 'profile17.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User18', '0900000018', 'user18@example.com', '123 Street 18', 'City18', '7000018', 'pass18', 'profile18.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User19', '0900000019', 'user19@example.com', '123 Street 19', 'City19', '7000019', 'pass19', 'profile19.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL),
('User20', '0900000020', 'user20@example.com', '123 Street 20', 'City20', '7000020', 'pass20', 'profile20.jpg', 'USER', TRUE, TRUE, 0, NULL, NULL);

INSERT INTO Category (name, imageName, isActive) VALUES
('Category1', 'cat1.jpg', TRUE),
('Category2', 'cat2.jpg', TRUE),
('Category3', 'cat3.jpg', TRUE),
('Category4', 'cat4.jpg', TRUE),
('Category5', 'cat5.jpg', TRUE),
('Category6', 'cat6.jpg', TRUE),
('Category7', 'cat7.jpg', TRUE),
('Category8', 'cat8.jpg', TRUE),
('Category9', 'cat9.jpg', TRUE),
('Category10', 'cat10.jpg', TRUE),
('Category11', 'cat11.jpg', TRUE),
('Category12', 'cat12.jpg', TRUE),
('Category13', 'cat13.jpg', TRUE),
('Category14', 'cat14.jpg', TRUE),
('Category15', 'cat15.jpg', TRUE),
('Category16', 'cat16.jpg', TRUE),
('Category17', 'cat17.jpg', TRUE),
('Category18', 'cat18.jpg', TRUE),
('Category19', 'cat19.jpg', TRUE),
('Category20', 'cat20.jpg', TRUE);

INSERT INTO Product (title, description, category, price, stock, image, discount, discountPrice, isActive) VALUES
('Product1', 'Description for Product 1', 'Category2', 146.16, 17, 'product1.jpg', 10, 131.54, TRUE),
('Product2', 'Description for Product 2', 'Category3', 1236.73, 38, 'product2.jpg', 12, 1088.33, TRUE),
('Product3', 'Description for Product 3', 'Category4', 1221.07, 17, 'product3.jpg', 20, 976.85, TRUE),
('Product4', 'Description for Product 4', 'Category5', 1913.07, 88, 'product4.jpg', 6, 1798.28, TRUE),
('Product5', 'Description for Product 5', 'Category1', 1646.98, 15, 'product5.jpg', 23, 1268.18, TRUE),
('Product6', 'Description for Product 6', 'Category2', 115.01, 63, 'product6.jpg', 23, 88.56, TRUE),
('Product7', 'Description for Product 7', 'Category3', 1518.14, 52, 'product7.jpg', 10, 1366.33, TRUE),
('Product8', 'Description for Product 8', 'Category4', 1696.43, 69, 'product8.jpg', 11, 1509.83, TRUE),
('Product9', 'Description for Product 9', 'Category5', 859.90, 16, 'product9.jpg', 26, 636.33, TRUE),
('Product10', 'Description for Product 10', 'Category1', 796.11, 43, 'product10.jpg', 21, 628.92, TRUE),
('Product11', 'Description for Product 11', 'Category2', 1192.19, 28, 'product11.jpg', 15, 1013.37, TRUE),
('Product12', 'Description for Product 12', 'Category3', 1363.73, 26, 'product12.jpg', 11, 1213.72, TRUE),
('Product13', 'Description for Product 13', 'Category4', 881.03, 42, 'product13.jpg', 19, 713.63, TRUE),
('Product14', 'Description for Product 14', 'Category5', 190.33, 87, 'product14.jpg', 9, 173.20, TRUE),
('Product15', 'Description for Product 15', 'Category1', 1311.67, 37, 'product15.jpg', 16, 1101.81, TRUE),
('Product16', 'Description for Product 16', 'Category2', 1921.32, 6, 'product16.jpg', 26, 1421.77, TRUE),
('Product17', 'Description for Product 17', 'Category3', 1632.36, 13, 'product17.jpg', 11, 1452.80, TRUE),
('Product18', 'Description for Product 18', 'Category4', 1284.25, 95, 'product18.jpg', 27, 937.50, TRUE),
('Product19', 'Description for Product 19', 'Category5', 1576.16, 25, 'product19.jpg', 18, 1292.45, TRUE),
('Product20', 'Description for Product 20', 'Category1', 1416.83, 33, 'product20.jpg', 11, 1260.98, TRUE);

INSERT INTO Cart (product_id, quantity) VALUES
(6, 4),
(18, 2),
(6, 2),
(13, 5),
(16, 1),
(7, 1),
(2, 2),
(20, 3),
(11, 5),
(7, 1),
(6, 3),
(18, 1),
(5, 1),
(20, 4),
(9, 3),
(12, 1),
(11, 5),
(13, 2),
(2, 2),
(7, 5);

INSERT INTO OrderAddress (firstName, lastName, email, mobileNo, address, city, state, pincode) VALUES
('First1', 'Last1', 'order1@mail.com', '0911000001', '456 Road 1', 'City1', 'State1', '70001'),
('First2', 'Last2', 'order2@mail.com', '0911000002', '456 Road 2', 'City2', 'State2', '70002'),
('First3', 'Last3', 'order3@mail.com', '0911000003', '456 Road 3', 'City3', 'State3', '70003'),
('First4', 'Last4', 'order4@mail.com', '0911000004', '456 Road 4', 'City4', 'State4', '70004'),
('First5', 'Last5', 'order5@mail.com', '0911000005', '456 Road 5', 'City5', 'State5', '70005'),
('First6', 'Last6', 'order6@mail.com', '0911000006', '456 Road 6', 'City6', 'State6', '70006'),
('First7', 'Last7', 'order7@mail.com', '0911000007', '456 Road 7', 'City7', 'State7', '70007'),
('First8', 'Last8', 'order8@mail.com', '0911000008', '456 Road 8', 'City8', 'State8', '70008'),
('First9', 'Last9', 'order9@mail.com', '0911000009', '456 Road 9', 'City9', 'State9', '70009'),
('First10', 'Last10', 'order10@mail.com', '0911000010', '456 Road 10', 'City10', 'State10', '700010'),
('First11', 'Last11', 'order11@mail.com', '0911000011', '456 Road 11', 'City11', 'State11', '700011'),
('First12', 'Last12', 'order12@mail.com', '0911000012', '456 Road 12', 'City12', 'State12', '700012'),
('First13', 'Last13', 'order13@mail.com', '0911000013', '456 Road 13', 'City13', 'State13', '700013'),
('First14', 'Last14', 'order14@mail.com', '0911000014', '456 Road 14', 'City14', 'State14', '700014'),
('First15', 'Last15', 'order15@mail.com', '0911000015', '456 Road 15', 'City15', 'State15', '700015'),
('First16', 'Last16', 'order16@mail.com', '0911000016', '456 Road 16', 'City16', 'State16', '700016'),
('First17', 'Last17', 'order17@mail.com', '0911000017', '456 Road 17', 'City17', 'State17', '700017'),
('First18', 'Last18', 'order18@mail.com', '0911000018', '456 Road 18', 'City18', 'State18', '700018'),
('First19', 'Last19', 'order19@mail.com', '0911000019', '456 Road 19', 'City19', 'State19', '700019'),
('First20', 'Last20', 'order20@mail.com', '0911000020', '456 Road 20', 'City20', 'State20', '700020');

INSERT INTO ProductOrder (orderId, orderDate, product_id, price, quantity, user_id, status, paymentType, orderAddress_id) VALUES
('ORD0001', '2025-02-15', 4, 1034.05, 4, 5, 'Processing', 'Cash', 1),
('ORD0002', '2025-03-23', 3, 721.96, 2, 2, 'Processing', 'Cash', 2),
('ORD0003', '2025-03-18', 9, 990.89, 2, 8, 'Processing', 'Cash', 3),
('ORD0004', '2025-02-20', 20, 473.48, 3, 5, 'Processing', 'Cash', 4),
('ORD0005', '2025-01-30', 1, 599.19, 2, 19, 'Processing', 'Cash', 5),
('ORD0006', '2025-04-21', 7, 676.75, 2, 17, 'Processing', 'Cash', 6),
('ORD0007', '2025-03-17', 2, 1362.54, 2, 4, 'Processing', 'Cash', 7),
('ORD0008', '2025-01-23', 5, 1489.49, 4, 2, 'Processing', 'Cash', 8),
('ORD0009', '2025-03-20', 8, 469.46, 5, 15, 'Processing', 'Cash', 9),
('ORD0010', '2025-02-15', 8, 907.43, 3, 19, 'Processing', 'Cash', 10),
('ORD0011', '2025-04-30', 13, 381.62, 2, 17, 'Processing', 'Cash', 11),
('ORD0012', '2025-02-18', 1, 184.41, 2, 12, 'Processing', 'Cash', 12),
('ORD0013', '2025-03-18', 4, 942.07, 2, 18, 'Processing', 'Cash', 13),
('ORD0014', '2025-04-04', 18, 1189.03, 1, 17, 'Processing', 'Cash', 14),
('ORD0015', '2025-02-23', 11, 283.16, 5, 10, 'Processing', 'Cash', 15),
('ORD0016', '2025-03-05', 10, 264.72, 3, 2, 'Processing', 'Cash', 16),
('ORD0017', '2025-02-10', 2, 920.53, 1, 17, 'Processing', 'Cash', 17),
('ORD0018', '2025-02-23', 10, 1071.68, 5, 19, 'Processing', 'Cash', 18),
('ORD0019', '2025-02-16', 8, 718.99, 5, 4, 'Processing', 'Cash', 19),
('ORD0020', '2025-02-18', 16, 954.96, 2, 2, 'Processing', 'Cash', 20);