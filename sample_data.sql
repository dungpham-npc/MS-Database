SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM milkstore.order WHERE id < 100;
DELETE FROM post WHERE id < 100;
DELETE FROM milk_product WHERE product_id < 100;
DELETE FROM milk_product_category WHERE id < 100;
DELETE FROM user WHERE user_id < 100;
DELETE FROM shopping_cart WHERE id < 100;
DELETE FROM shopping_cart_item WHERE id < 100;
DELETE FROM order_item WHERE id < 100;


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

INSERT INTO post (user_id, title, content, date_created, user_comment, visibility_status) VALUES
(3, 'Benefits of Organic Milk', 'Organic milk is healthier and more nutritious.', '2024-01-15 10:00:00', 'Great information!', TRUE),
(3, 'Flavored Milk for Kids', 'Flavored milk can be a fun way to get kids to drink milk.', '2024-01-18 15:30:00', 'Very helpful.', TRUE),
(3, 'Dairy Alternatives', 'Exploring the best dairy alternatives like almond, soy, and oat milk.', '2024-01-20 12:45:00', 'Good to know!', TRUE),
(3, 'Lactose-Free Milk Options', 'For those who are lactose intolerant, there are many options.', '2024-01-22 09:10:00', 'Thanks for sharing.', TRUE),
(3, 'The Rise of Organic Products', 'Organic products are becoming more popular.', '2024-01-25 14:25:00', 'Interesting read.', TRUE);


INSERT INTO milk_product (category_id, post_id, product_name, product_description, product_image, quantity_in_stock, price, manu_date, expi_date, status) VALUES
(1, 1, 'Organic Whole Milk', 'Fresh and healthy organic whole milk.', 'organic_whole_milk.jpg', 100, 3.99, '2024-01-01', '2024-07-01', TRUE),
(1, 2, 'Organic Skim Milk', 'Low-fat organic skim milk.', 'organic_skim_milk.jpg', 150, 3.49, '2024-01-01', '2024-07-01', TRUE),
(1, 3, 'Organic 2% Milk', 'Organic milk with 2% fat content.', 'organic_2_percent_milk.jpg', 120, 3.79, '2024-01-01', '2024-07-01', TRUE),
(2, 4, 'Chocolate Milk', 'Delicious chocolate flavored milk.', 'chocolate_milk.jpg', 200, 2.99, '2024-01-01', '2024-06-01', TRUE),
(2, 5, 'Strawberry Milk', 'Sweet and tasty strawberry milk.', 'strawberry_milk.jpg', 180, 2.99, '2024-01-01', '2024-06-01', TRUE),
(2, 1, 'Vanilla Milk', 'Smooth vanilla flavored milk.', 'vanilla_milk.jpg', 170, 2.99, '2024-01-01', '2024-06-01', TRUE),
(3, 2, 'Almond Milk', 'Healthy almond milk, dairy-free.', 'almond_milk.jpg', 140, 3.99, '2024-01-01', '2024-12-01', TRUE),
(3, 3, 'Soy Milk', 'Nutritious soy milk, dairy-free.', 'soy_milk.jpg', 130, 3.49, '2024-01-01', '2024-12-01', TRUE),
(3, 4, 'Coconut Milk', 'Refreshing coconut milk, dairy-free.', 'coconut_milk.jpg', 110, 3.89, '2024-01-01', '2024-12-01', TRUE),
(1, 5, 'Organic Lactose-Free Milk', 'Organic milk without lactose.', 'organic_lactose_free_milk.jpg', 80, 4.49, '2024-01-01', '2024-07-01', TRUE),
(2, 1, 'Banana Milk', 'Yummy banana flavored milk.', 'banana_milk.jpg', 160, 2.99, '2024-01-01', '2024-06-01', TRUE),
(2, 2, 'Blueberry Milk', 'Tasty blueberry flavored milk.', 'blueberry_milk.jpg', 150, 2.99, '2024-01-01', '2024-06-01', TRUE),
(3, 3, 'Oat Milk', 'Creamy oat milk, dairy-free.', 'oat_milk.jpg', 100, 3.99, '2024-01-01', '2024-12-01', TRUE),
(1, 4, 'Organic Chocolate Milk', 'Rich organic chocolate milk.', 'organic_chocolate_milk.jpg', 90, 4.49, '2024-01-01', '2024-07-01', TRUE),
(1, 5, 'Organic Strawberry Milk', 'Organic milk with strawberry flavor.', 'organic_strawberry_milk.jpg', 85, 4.49, '2024-01-01', '2024-07-01', TRUE),
(2, 1, 'Caramel Milk', 'Sweet caramel flavored milk.', 'caramel_milk.jpg', 100, 2.99, '2024-01-01', '2024-06-01', TRUE),
(3, 2, 'Rice Milk', 'Smooth rice milk, dairy-free.', 'rice_milk.jpg', 130, 3.99, '2024-01-01', '2024-12-01', TRUE),
(1, 3, 'Organic Almond Milk', 'Organic and dairy-free almond milk.', 'organic_almond_milk.jpg', 110, 4.49, '2024-01-01', '2024-07-01', TRUE),
(2, 4, 'Mint Milk', 'Cool and refreshing mint milk.', 'mint_milk.jpg', 120, 2.99, '2024-01-01', '2024-06-01', TRUE),
(3, 5, 'Hemp Milk', 'Nutritious hemp milk, dairy-free.', 'hemp_milk.jpg', 90, 4.29, '2024-01-01', '2024-12-01', TRUE);


INSERT INTO shopping_cart (user_id) VALUES
(6),
(7),
(8),
(9),
(10);


INSERT INTO `order` (user_id, customer_payment_method_id, shipping_address, order_status, voucher_id, cart_id, shipping_fee, total_price, shipping_code, receiver_name, receiver_phone, order_date, failure_reason, failure_reason_note) VALUES
(6, 1, 1, 1, NULL, 1, 5.00, 45.97, 'SH12345', 'customer1', '1234567890', '2024-01-15 10:00:00', NULL, NULL),
(7, 2, 2, 2, NULL, 2, 5.00, 39.97, 'SH12346', 'customer2', '0987654321', '2024-01-16 12:00:00', 'Out of Stock', 'One item out of stock.'),
(8, 3, 3, 3, NULL, 3, 5.00, 49.97, 'SH12347', 'customer3', '1122334455', '2024-01-17 15:00:00', 'Payment Failed', 'Payment could not be processed.'),
(9, 4, 4, 4, NULL, 4, 5.00, 59.97, 'SH12348', 'customer4', '6677889900', '2024-01-18 17:00:00', 'Cancelled', 'Order was cancelled by user.'),
(10, 5, 5, 1, NULL, 5, 5.00, 29.97, 'SH12349', 'customer5', '5544332211', '2024-01-19 11:00:00', NULL, NULL);


INSERT INTO order_item (milk_product_id, voucher_id, order_id, quantity, price) VALUES
(1, NULL, 1, 2, 3.99),
(4, NULL, 1, 3, 2.99),
(7, NULL, 2, 2, 3.99),
(3, NULL, 2, 3, 3.79),
(8, NULL, 3, 2, 3.49),
(6, NULL, 3, 1, 2.99),
(11, NULL, 4, 3, 2.99),
(10, NULL, 4, 2, 4.49),
(13, NULL, 4, 1, 3.99),
(17, NULL, 5, 2, 4.49);

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