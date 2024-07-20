DROP DATABASE IF EXISTS milkstore;

-- Create the database
CREATE DATABASE milkstore;

-- Use the database
USE milkstore;

-- Create the role table
CREATE TABLE role (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

-- Create the payment_type table
CREATE TABLE payment_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    value VARCHAR(50) UNIQUE NOT NULL
);

-- Create the order_status table
-- CREATE TABLE order_status (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     status VARCHAR(50) UNIQUE NOT NULL
-- );

-- Create the address table
-- CREATE TABLE address (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     unit_number VARCHAR(50) NOT NULL,
--     street_number VARCHAR(50) NOT NULL,
--     address_line VARCHAR(255) NOT NULL,
--     district VARCHAR(100) NOT NULL,
--     postal_code VARCHAR(20) NOT NULL
-- );

-- Create the User table
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    role_id INT NOT NULL,
    email_address VARCHAR(255) UNIQUE NOT NULL,
    phone_Number VARCHAR(15) UNIQUE,
    password VARCHAR(255),
    username NVARCHAR(100),
    visibility_status BOOLEAN,
	prohibit_status BOOLEAN,
	otp_code VARCHAR(255),
    otp_created_at DATETIME,
	otp_expired_at DATETIME,
    FOREIGN KEY (role_id) REFERENCES role(role_id)
);

CREATE TABLE user_address (
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    address_alias NVARCHAR(50),
    address_line NVARCHAR(500) NOT NULL,
    district NVARCHAR(50) NOT NULL,
    is_default BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);         

CREATE TABLE temporary_user (
    id INT AUTO_INCREMENT PRIMARY KEY,
	email_address VARCHAR(50),
    otp_code VARCHAR(255),
    otp_created_at DATETIME,
	otp_expired_at DATETIME
);

-- Create the milk_product_category table
CREATE TABLE milk_product_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) UNIQUE NOT NULL
);

-- Create the post table
CREATE TABLE post (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    date_created DATETIME,
    user_comment TEXT,
	visibility_status BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);



-- Create the shopping_cart table
CREATE TABLE shopping_cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNIQUE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Create the voucher table
CREATE TABLE voucher (
    voucherid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    code VARCHAR(50) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    discount_amount DECIMAL(10, 2) NOT NULL CHECK (discount_amount >= 0),
    valid_from DATE NOT NULL,
    valid_to DATE NOT NULL,
    min_purchase_amount DECIMAL(10, 2) NOT NULL CHECK (min_purchase_amount >= 0),
    max_discounted_amount DECIMAL(10, 2) NOT NULL CHECK (max_discounted_amount >= 0),
    voucher_status ENUM('Active', 'Expired', 'Used') NOT NULL,
    usaged_quantity INT DEFAULT 0 CHECK (usaged_quantity >= 0),
    quantity INT NOT NULL CHECK (quantity >= 0)
);

-- Create the customer_payment_method table
-- CREATE TABLE customer_payment_method (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     user_id INT NOT NULL,
--     payment_type_id INT NOT NULL,
--     account_number VARCHAR(50) UNIQUE NOT NULL,
--     is_default BOOLEAN DEFAULT FALSE,
--     FOREIGN KEY (user_id) REFERENCES User(user_id),
--     FOREIGN KEY (payment_type_id) REFERENCES payment_type(id)
-- );

-- Create the order table
-- Bảng order
CREATE TABLE `order` (
    id nvarchar(255) PRIMARY KEY,
    user_id INT NOT NULL,
    shipping_address NVARCHAR(255) NOT NULL,
    order_status INT NOT NULL,
    voucher_id INT,
    cart_id INT,
    image text,
    shipping_fee DECIMAL(10, 2) CHECK (shipping_fee >= 0),
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price >= 0),
    shipping_code VARCHAR(50),
    receiver_name VARCHAR(255),
    receiver_phone VARCHAR(15),
    order_date DATETIME NOT NULL,
    failure_reason ENUM('CANNOT_DELIVER'),
    failure_reason_note TEXT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (voucher_id) REFERENCES voucher(voucherid),
    FOREIGN KEY (cart_id) REFERENCES shopping_cart(id)
);





-- Create the user_feedback table
CREATE TABLE user_feedback (
    id_of_review INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    order_id nvarchar(255) NOT NULL,
    feedback_description TEXT,
    feedback_time DATETIME NOT NULL,
    feedback_status boolean,
    feedback_rating INT NOT NULL CHECK (feedback_rating BETWEEN 1 AND 5),
    FOREIGN KEY (order_id) REFERENCES `order`(id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- drop table milk_product;
-- Create the milk_product table
CREATE TABLE milk_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    post_id INT,
    product_name VARCHAR(255) NOT NULL,
    product_description TEXT NOT NULL,
    product_image VARCHAR(255) NOT NULL,
    quantity_in_stock INT NOT NULL CHECK (quantity_in_stock >= 0),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    manu_date DATE NOT NULL,
    expi_date DATE NOT NULL,
    delete_status boolean,
    visibility_status BOOLEAN,
    feedback_id int,
    FOREIGN KEY (category_id) REFERENCES milk_product_category(id),
    FOREIGN KEY (post_id) REFERENCES post(id)
);


-- Bảng order_item
CREATE TABLE order_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id NVARCHAR(255) NOT NULL,
    product_id INT NOT NULL,
    product_name NVARCHAR(255) NOT NULL,  -- Thêm cột productName
    quantity INT NOT NULL CHECK (quantity > 0),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    FOREIGN KEY (order_id) REFERENCES `order`(id),
    FOREIGN KEY (product_id) REFERENCES milk_product(product_id)
);


-- Create the shopping_cart_item table
CREATE TABLE shopping_cart_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
     cart_id INT,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (cart_id) REFERENCES shopping_cart(id),
    FOREIGN KEY (product_id) REFERENCES milk_product(product_id)
);

-- Create the post_report table
CREATE TABLE post_report (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    reason ENUM('Spam', 'Abuse', 'Other') NOT NULL,
    note TEXT NOT NULL,
    status ENUM('Pending', 'Reviewed', 'Resolved') NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (post_id) REFERENCES post(id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- drop table transaction_log;
CREATE TABLE transaction_log (
    transaction_id int AUTO_INCREMENT PRIMARY KEY,
--    user_id int NOT NULL,
    -- order_id int not null
    amount DECIMAL(10, 2) NOT NULL,
    bank_code VARCHAR(255) NOT NULL,
    bank_tran_no VARCHAR(255) NOT NULL,
    cart_type VARCHAR(255) NOT NULL,
    order_info VARCHAR(255) NOT NULL,
    response_code VARCHAR(255) NOT NULL,
    pay_date VARCHAR(255) NOT NULL,
    transaction_no VARCHAR(255) NOT NULL,
    transaction_status VARCHAR(255) NOT NULL,
    txn_ref VARCHAR(255) NOT NULL
  --  FOREIGN KEY (user_id) REFERENCES user(user_id)
    -- FOREIGN KEY (order_id) REFERENCES `order`(id)
);

-- Create the user_voucher table
CREATE TABLE user_voucher (
    user_id INT NOT NULL,
    voucher_id INT NOT NULL,
    voucher_date DATE NOT NULL,
    PRIMARY KEY (user_id, voucher_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (voucher_id) REFERENCES voucher(voucherid)
);

-- Create the promotion_campaign table
CREATE TABLE promotion_campaign (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    discount_rate DECIMAL(5, 2) NOT NULL CHECK (discount_rate >= 0 AND discount_rate <= 100),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    from_amount DECIMAL(10, 2) NOT NULL CHECK (from_amount >= 0),
    to_amount DECIMAL(10, 2) NOT NULL CHECK (to_amount >= 0),
    max_discount DECIMAL(10, 2) NOT NULL CHECK (max_discount >= 0)
);

-- Create the promotion_category table
CREATE TABLE promotion_category (
    category_id INT NOT NULL,
    promotion_id INT NOT NULL,
    PRIMARY KEY (category_id, promotion_id),
    FOREIGN KEY (category_id) REFERENCES milk_product_category(id),
    FOREIGN KEY (promotion_id) REFERENCES promotion_campaign(id)
);

-- Create the promotion_products table
CREATE TABLE promotion_products (
    promotion_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY (promotion_id, product_id),
    FOREIGN KEY (promotion_id) REFERENCES promotion_campaign(id),
    FOREIGN KEY (product_id) REFERENCES milk_product(product_id)
);

-- CREATE TABLE payment (
--     id BIGINT AUTO_INCREMENT PRIMARY KEY,
--     amount INT,
--     payment_url VARCHAR(255)
-- );

CREATE TABLE refund_request (
    refundId INT AUTO_INCREMENT PRIMARY KEY,
    request_time datetime not null,
    user_id INT,
    sender_name CHAR(255) CHARACTER SET utf8mb4,
    sender_phone varchar(10),
    sender_address CHAR(255) CHARACTER SET utf8mb4,
    product_name CHAR(255) CHARACTER SET utf8mb4,
    refund_reason CHAR(255) CHARACTER SET utf8mb4,
    customer_note CHAR(255) CHARACTER SET utf8mb4,
    customer_image text,
    staff_reject_reason CHAR(255) CHARACTER SET utf8mb4,
    staff_reject_image text,
    staff_received_image text,
    refund_request_status int not null,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);



INSERT INTO role(role_name) VALUES('CUSTOMER');
INSERT INTO role(role_name) VALUES('SELLER');
INSERT INTO role(role_name) VALUES('MANAGER');
INSERT INTO role(role_name) VALUES('POST_STAFF');
INSERT INTO role(role_name) VALUES('PRODUCT_STAFF');
INSERT INTO role(role_name) VALUES('ADMIN');


SET FOREIGN_KEY_CHECKS = 0;
-- DELETE FROM milkstore.order WHERE id < 100;
-- DELETE FROM post WHERE id < 100;
-- DELETE FROM milk_product WHERE product_id < 100;
-- DELETE FROM milk_product_category WHERE id < 100;
-- DELETE FROM user WHERE user_id < 100;
-- DELETE FROM shopping_cart WHERE id < 100;
-- DELETE FROM shopping_cart_item WHERE id < 100;
-- DELETE FROM order_item WHERE id < 100;


ALTER TABLE user AUTO_INCREMENT = 1;
ALTER TABLE post AUTO_INCREMENT = 1;
ALTER TABLE milk_product AUTO_INCREMENT = 1;
ALTER TABLE milk_product_category AUTO_INCREMENT = 1;
ALTER TABLE milkstore.order AUTO_INCREMENT = 1;
ALTER TABLE shopping_cart AUTO_INCREMENT = 1;
ALTER TABLE shopping_cart_item AUTO_INCREMENT = 1;


-- Users with roles other than 'CUSTOMER'
INSERT INTO User (role_id, email_address, phone_Number, password, username, visibility_status, otp_code, otp_created_at) VALUES
(2, 'seller1@example.com', '1234567891', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'seller1', TRUE, NULL, NULL),
(3, 'manager1@example.com', '1234567892', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'manager1', TRUE, NULL, NULL),
(4, 'poststaff1@example.com', '1234567893', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'poststaff1', TRUE, NULL, NULL),
(5, 'productstaff1@example.com', '1234567894', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'productstaff1', TRUE, NULL, NULL),
(6, 'admin1@example.com', '1234567895', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'admin1', TRUE, NULL, NULL);

-- Users with 'CUSTOMER' role
INSERT INTO User (role_id, email_address, phone_Number, password, username, visibility_status, otp_code, otp_created_at) VALUES
(1, 'customer1@example.com', '1234567896', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'customer1', TRUE, NULL, NULL),
(1, 'customer2@example.com', '1234567897', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'customer2', TRUE, NULL, NULL),
(1, 'customer3@example.com', '1234567898', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'customer3', TRUE, NULL, NULL),
(1, 'customer4@example.com', '1234567899', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'customer4', TRUE, NULL, NULL),
(1, 'customer5@example.com', '1234567890', '$2a$10$HcNdVVDf/UbFUaDxZTj9YeWTQvMleq8wddhh.Y0ZMaaakDwKHmD46', 'customer5', TRUE, NULL, NULL);

INSERT INTO milk_product_category (category_name) VALUES
('Organic Milk'),
('Flavored Milk'),
('Dairy Alternatives');

UPDATE `milkstore`.`user`
SET `prohibit_status` = false
WHERE `user_id` = 7;

UPDATE `milkstore`.`user`
SET
`prohibit_status` = 0
WHERE `user_id` =5;

INSERT INTO post (user_id, title, content, date_created, user_comment, visibility_status) VALUES
(3, 'Benefits of Organic Milk', 'Organic milk is healthier and more nutritious.', '2024-01-15 10:00:00', 'Great information!', TRUE),
(3, 'Flavored Milk for Kids', 'Flavored milk can be a fun way to get kids to drink milk.', '2024-01-18 15:30:00', 'Very helpful.', TRUE),
(3, 'Dairy Alternatives', 'Exploring the best dairy alternatives like almond, soy, and oat milk.', '2024-01-20 12:45:00', 'Good to know!', TRUE),
(3, 'Lactose-Free Milk Options', 'For those who are lactose intolerant, there are many options.', '2024-01-22 09:10:00', 'Thanks for sharing.', TRUE),
(3, 'The Rise of Organic Products', 'Organic products are becoming more popular.', '2024-01-25 14:25:00', 'Interesting read.', TRUE);

ALTER TABLE milkstore.order MODIFY order_status enum('IN_CART','IN_CHECKOUT','PAID','ORDER_TRANSFER','IN_DELIVERY','CANNOT_DELIVER','DELIVERED','COMPLETE_EXCHANGE','CANNOT_CONFRIRM', 'IS_FEEDBACK');

INSERT INTO milk_product (category_id, post_id, product_name, product_description, product_image, quantity_in_stock, price, manu_date, expi_date,delete_status, visibility_status ) VALUES
(1, 1, 'Organic Whole Milk', 'Fresh and healthy organic whole milk.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/8b3c3bcc-22f8-4546-bdcd-9a30f06f6cdd.jpg?alt=media', 100, 3.99, '2024-01-01', '2024-07-01', FALSE, TRUE),
(1, 2, 'Organic Skim Milk', 'Low-fat organic skim milk.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/d652673a-8a61-4d07-82ef-f6155a249efe.webp?alt=media', 150, 3.49, '2024-01-01', '2024-07-01', FALSE, TRUE),
(1, 3, 'Organic 2% Milk', 'Organic milk with 2% fat content.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/353a2dc5-6c34-47d9-93f2-11b88e45000c.jpg?alt=media', 120, 3.79, '2024-01-01', '2024-07-01', FALSE, TRUE),
(2, 4, 'Chocolate Milk', 'Delicious chocolate flavored milk.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/638d6717-c3c3-4810-90da-5baf9703e584.jpg?alt=media', 200, 2.99, '2024-01-01', '2024-06-01', FALSE, TRUE),
(2, 5, 'Strawberry Milk', 'Sweet and tasty strawberry milk.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/5348af57-d662-4c5d-9999-caa4a8044c9e.jpg?alt=media', 180, 2.99, '2024-01-01', '2024-06-01', TRUE, TRUE),
(2, 1, 'Vanilla Milk', 'Smooth vanilla flavored milk.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/9ff0c23d-33af-4e7b-bd43-f19306abcd85.jpg?alt=media', 170, 2.99, '2024-01-01', '2024-06-01', FALSE, TRUE),
(3, 2, 'Almond Milk', 'Healthy almond milk, dairy-free.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/665ffad7-919e-436b-937d-eafd9187e578.jpg?alt=media', 140, 3.99, '2024-01-01', '2024-12-01', FALSE, TRUE),
(3, 3, 'Soy Milk', 'Nutritious soy milk, dairy-free.', 'https://firebasestorage.googleapis.com/v0/b/firebase-service-427505.appspot.com/o/d135706b-8825-4225-b2d9-d9dbf4044741.jpg?alt=media', 130, 3.49, '2024-01-01', '2024-12-01', FALSE, TRUE);
-- (3, 4, 'Coconut Milk', 'Refreshing coconut milk, dairy-free.', 'coconut_milk.jpg', 110, 3.89, '2024-01-01', '2024-12-01', TRUE),
-- (1, 5, 'Organic Lactose-Free Milk', 'Organic milk without lactose.', 'organic_lactose_free_milk.jpg', 80, 4.49, '2024-01-01', '2024-07-01', TRUE),
-- (2, 1, 'Banana Milk', 'Yummy banana flavored milk.', 'banana_milk.jpg', 160, 2.99, '2024-01-01', '2024-06-01', TRUE),
-- (2, 2, 'Blueberry Milk', 'Tasty blueberry flavored milk.', 'blueberry_milk.jpg', 150, 2.99, '2024-01-01', '2024-06-01', TRUE),
-- (3, 3, 'Oat Milk', 'Creamy oat milk, dairy-free.', 'oat_milk.jpg', 100, 3.99, '2024-01-01', '2024-12-01', TRUE),
-- (1, 4, 'Organic Chocolate Milk', 'Rich organic chocolate milk.', 'organic_chocolate_milk.jpg', 90, 4.49, '2024-01-01', '2024-07-01', TRUE),
-- (1, 5, 'Organic Strawberry Milk', 'Organic milk with strawberry flavor.', 'organic_strawberry_milk.jpg', 85, 4.49, '2024-01-01', '2024-07-01', TRUE),
-- (2, 1, 'Caramel Milk', 'Sweet caramel flavored milk.', 'caramel_milk.jpg', 100, 2.99, '2024-01-01', '2024-06-01', TRUE),
-- (3, 2, 'Rice Milk', 'Smooth rice milk, dairy-free.', 'rice_milk.jpg', 130, 3.99, '2024-01-01', '2024-12-01', TRUE),
-- (1, 3, 'Organic Almond Milk', 'Organic and dairy-free almond milk.', 'organic_almond_milk.jpg', 110, 4.49, '2024-01-01', '2024-07-01', TRUE),
-- (2, 4, 'Mint Milk', 'Cool and refreshing mint milk.', 'mint_milk.jpg', 120, 2.99, '2024-01-01', '2024-06-01', TRUE),
-- (3, 5, 'Hemp Milk', 'Nutritious hemp milk, dairy-free.', 'hemp_milk.jpg', 90, 4.29, '2024-01-01', '2024-12-01', TRUE);


INSERT INTO shopping_cart (user_id) VALUES
(6),
(7),
(8),
(9),
(10);


-- INSERT INTO `order` (user_id, shipping_address, order_status, voucher_id, cart_id, shipping_fee, total_price, shipping_code, receiver_name, receiver_phone, order_date, failure_reason, failure_reason_note) VALUES
-- (6, 1, 1, NULL, 1, 5.00, 45.97, 'SH12345', 'customer1', '1234567890', '2024-01-15 10:00:00', NULL, NULL),
-- (7, 2, 2, NULL, 2, 5.00, 39.97, 'SH12346', 'customer2', '0987654321', '2024-01-16 12:00:00', 'Out of Stock', 'One item out of stock.'),
-- (8, 3, 3, NULL, 3, 5.00, 49.97, 'SH12347', 'customer3', '1122334455', '2024-01-17 15:00:00', 'Payment Failed', 'Payment could not be processed.'),
-- (9, 4, 4, NULL, 4, 5.00, 59.97, 'SH12348', 'customer4', '6677889900', '2024-01-18 17:00:00', 'Cancelled', 'Order was cancelled by user.'),
-- (10, 5, 1, NULL, 5, 5.00, 29.97, 'SH12349', 'customer5', '5544332211', '2024-01-19 11:00:00', NULL, NULL);

-- INSERT INTO `order` (user_id, shipping_address, order_status, voucher_id, cart_id, shipping_fee, total_price, shipping_code, receiver_name, receiver_phone, order_date, failure_reason, failure_reason_note) VALUES
-- INSERT INTO `order` (user_id, shipping_address, order_status, voucher_id, cart_id, shipping_fee, total_price, shipping_code, receiver_name, receiver_phone, order_date, failure_reason, failure_reason_note) VALUES
-- (2, '123 ABC Street, District XYZ, HCM City', 1, NULL, 2, 5.00, 39.97, 'SH12346', 'Customer Two', '0987654321', '2024-01-16 12:00:00', 'Out of Stock', 'One item out of stock.');

-- INSERT INTO order_item (milk_product_id, voucher_id, order_id, quantity, price) VALUES
INSERT INTO order_item (product_id, order_id, product_name, quantity, price) VALUES
(7, 2, 'Almond Milk', 2, 3.99),
(3, 2, 'Organic 2% Milk', 3, 3.79);

-- INSERT INTO `order` (user_id, shipping_address, order_status, voucher_id, cart_id, shipping_fee, total_price, shipping_code, receiver_name, receiver_phone, order_date, failure_reason, failure_reason_note)
-- VALUES
-- (2, '123 ABC Street, District XYZ, HCM City', 1, NULL, 2, 5.00, 39.97, 'SH12346', 'Customer Two', '0987654321', '2024-01-16 12:00:00', 'CANNOT_DELIVERY', 'Delivery location unreachable.'),
-- (3, '456 XYZ Avenue, District ABC, Hanoi', 1, NULL, 3, 4.50, 45.50, 'SH98765', 'Customer Three', '0123456789', '2024-01-17 14:30:00', NULL, NULL);


-- INSERT INTO order_item (milk_product_id, voucher_id, order_id, quantity, price) VALUES
-- (1, NULL, 1, 2, 3.99),
-- (4, NULL, 1, 3, 2.99),
-- (7, NULL, 2, 2, 3.99),
-- (3, NULL, 2, 3, 3.79),
-- (8, NULL, 3, 2, 3.49),
-- (6, NULL, 3, 1, 2.99),
-- (11, NULL, 4, 3, 2.99),
-- (10, NULL, 4, 2, 4.49),
-- (13, NULL, 4, 1, 3.99),
-- (17, NULL, 5, 2, 4.49);

INSERT INTO shopping_cart_item (product_id, cart_id, quantity) VALUES
(1, 1, 2),
(4, 1, 3),
(7, 2, 2),
(3, 2, 3),
(8, 3, 2),
(6, 3, 1),
(11, 4, 3),
(10, 4, 2),
(13, 4, 1),
(17, 5, 2);

SET FOREIGN_KEY_CHECKS = 1;


	