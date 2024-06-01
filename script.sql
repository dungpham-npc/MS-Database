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
CREATE TABLE order_status (
    id INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(50) UNIQUE NOT NULL
);

-- Create the address table
CREATE TABLE address (
    id INT AUTO_INCREMENT PRIMARY KEY,
    unit_number VARCHAR(50) NOT NULL,
    street_number VARCHAR(50) NOT NULL,
    address_line VARCHAR(255) NOT NULL,
    district VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL
);

-- Create the User table
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    role_id INT NOT NULL,
    email_address VARCHAR(255) UNIQUE NOT NULL,
    phone_Number VARCHAR(15) UNIQUE,
    password VARCHAR(255),
    username NVARCHAR(100),
    visibility_status BOOLEAN,
    FOREIGN KEY (role_id) REFERENCES role(role_id)
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
    date_created DATETIME NOT NULL,
    user_comment TEXT,
	visibility_status BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

-- Create the milk_product table
CREATE TABLE milk_product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    post_id INT,
    product_name VARCHAR(255) UNIQUE NOT NULL,
    product_description TEXT NOT NULL,
    product_image VARCHAR(255) NOT NULL,
    quantity_in_stock INT NOT NULL CHECK (quantity_in_stock >= 0),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    status boolean,
    FOREIGN KEY (category_id) REFERENCES milk_product_category(id),
    FOREIGN KEY (post_id) REFERENCES post(id)
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
CREATE TABLE customer_payment_method (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    payment_type_id INT NOT NULL,
    account_number VARCHAR(50) UNIQUE NOT NULL,
    is_default BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (payment_type_id) REFERENCES payment_type(id)
);

-- Create the order table
CREATE TABLE `order` (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    customer_payment_method_id INT NOT NULL,
    shipping_address INT NOT NULL,
    order_status INT NOT NULL,
    voucher_id INT,
    cart_id INT,
    shipping_fee DECIMAL(10, 2) NOT NULL CHECK (shipping_fee >= 0),
    total_price DECIMAL(10, 2) NOT NULL CHECK (total_price >= 0),
    shipping_code VARCHAR(50),
    receiver_name VARCHAR(255) NOT NULL,
    receiver_phone VARCHAR(15) NOT NULL,
    order_date DATETIME NOT NULL,
    failure_reason ENUM('Out of Stock', 'Payment Failed', 'Cancelled'),
    failure_reason_note TEXT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (customer_payment_method_id) REFERENCES customer_payment_method(id),
    FOREIGN KEY (shipping_address) REFERENCES address(id),
    FOREIGN KEY (order_status) REFERENCES order_status(id),
    FOREIGN KEY (voucher_id) REFERENCES voucher(voucherid),
    FOREIGN KEY (cart_id) REFERENCES shopping_cart(id)
);

-- Create the order_item table
CREATE TABLE order_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    milk_product_id INT NOT NULL,
    voucher_id INT,
    order_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    FOREIGN KEY (milk_product_id) REFERENCES milk_product(product_id),
    FOREIGN KEY (voucher_id) REFERENCES voucher(voucherid),
    FOREIGN KEY (order_id) REFERENCES `order`(id)
);

-- Create the shopping_cart_item table
CREATE TABLE shopping_cart_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cart_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    FOREIGN KEY (cart_id) REFERENCES shopping_cart(id),
    FOREIGN KEY (product_id) REFERENCES milk_product(product_id)
);

-- Create the user_feedback table
CREATE TABLE user_feedback (
    id_of_review INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    ordered_product_id INT NOT NULL,
    feedback_description TEXT NOT NULL,
    feedback_time DATETIME NOT NULL,
    feedback_rating INT NOT NULL CHECK (feedback_rating BETWEEN 1 AND 5),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (ordered_product_id) REFERENCES order_item(id)
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

-- Create the transaction_log table
CREATE TABLE transaction_log (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_type_id INT NOT NULL,
    date DATETIME NOT NULL,
    content TEXT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL CHECK (amount >= 0),
    FOREIGN KEY (order_id) REFERENCES `order`(id),
    FOREIGN KEY (payment_type_id) REFERENCES payment_type(id)
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

INSERT INTO role(role_name) VALUES('CUSTOMER');
INSERT INTO role(role_name) VALUES('SELLER');
INSERT INTO role(role_name) VALUES('MANAGER');
INSERT INTO role(role_name) VALUES('POST_STAFF');
INSERT INTO role(role_name) VALUES('PRODUCT_STAFF');
INSERT INTO role(role_name) VALUES('ADMIN');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (1, 'customer', 'a@example.com', '123-456-7890', '123');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (2, 'seller', 'b@example.com', '987-654-3210', '123');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (3, 'manager', 'c@example.com', '567-890-1234', '123');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (4, 'post_staff', 'd@example.com', '234-567-8901', '123');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (5, 'production_staff', 'e@example.com', '890-123-4567', '123');

INSERT INTO User (role_id, username, email_address, phone_number, password)
VALUES (6, 'admin', 'f@example.com', '456-789-0123', '123');

