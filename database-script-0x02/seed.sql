USE airbnb;

-- =======================
-- USERS
-- =======================
INSERT INTO users (first_name, last_name, email, password_hash, phone_number, role)
VALUES
('John', 'Doe', 'john@example.org', 'hash1', '0551234567', 'guest'),
('Ama', 'Serwaa', 'ama@example.org', 'hash2', '0249876543', 'host'),
('Kwame', 'Mensah', 'kwame@example.org', 'hash3', NULL, 'guest'),
('Angela', 'Tagoe', 'angela@example.org', 'hash4', '0204455667', 'host'),
('Michael', 'Brown', 'michael@example.org', 'hash5', '0278889999', 'guest'),
('Sarah', 'Owusu', 'sarah@example.org', 'hash6', '0557654321', 'host'),
('Admin', 'Master', 'admin@example.org', 'hashadmin', NULL, 'admin'),

-- Extra users
('Kojo', 'Andoh', 'kojo@example.org', 'hash7', '0541112222', 'guest'),
('Lisa', 'Boateng', 'lisa@example.org', 'hash8', '0243334444', 'host'),
('Yaw', 'Kofi', 'yaw@example.org', 'hash9', '0265556666', 'guest'),
('Nana', 'Owusu', 'nana@example.org', 'hash10', NULL, 'guest'),
('Ruby', 'Asante', 'ruby@example.org', 'hash11', '0559990000', 'host'),
('Eric', 'Mensah', 'eric@example.org', 'hash12', '0201239876', 'guest'),
('Mavis', 'Brown', 'mavis@example.org', 'hash13', NULL, 'host');

-- =======================
-- PROPERTIES
-- =======================

INSERT INTO property (host_id, name, description, location, pricepernight)
VALUES
(10002, 'Sea View Apartment', 'Beautiful seaside apartment in Accra', 'Accra', 350.00),
(10004, 'Hilltop Lodge', 'Quiet hilltop accommodation', 'Kumasi', 220.00),
(10006, 'Beach House', 'Relaxing beachfront house', 'Prampram', 500.00),
(10002, 'City Studio', 'Modern apartment in the city center', 'Accra', 180.00),
(10004, 'Garden Villa', 'Spacious villa with a garden', 'Cape Coast', 400.00),

-- Extra properties
(10008, 'Lake House', 'Peaceful home beside a lake', 'Volta', 300.00),
(10006, 'Forest Cabin', 'Wooden cabin deep in the forest', 'Aburi', 250.00),
(10012, 'City Penthouse', 'High-rise penthouse with city view', 'Accra', 750.00),
(10004, 'Cultural Home', 'Traditional Ghanaian home', 'Ho', 150.00),
(10010, 'Sunset Villa', 'Best sunset views every evening', 'Takoradi', 420.00),
(10011, 'Harbour Apartment', 'Apartment close to the harbour', 'Tema', 200.00),
(10008, 'Desert Oasis', 'Calm and hot desert-style lodge', 'Wa', 180.00);
-- =======================
-- BOOKINGS
-- =======================
INSERT INTO booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES
(101, 10001, '2025-01-10', '2025-01-12', 700.00, 'confirmed'),
(103, 10001, '2025-02-01', '2025-02-05', 2000.00, 'confirmed'),
(102, 10003, '2025-03-11', '2025-03-12', 220.00, 'pending'),
(104, 10005, '2025-04-01', '2025-04-04', 540.00, 'confirmed'),
(101, 10003, '2025-05-15', '2025-05-17', 700.00, 'canceled'),
(102, 10001, '2025-05-15', '2025-05-17', 600.00, 'canceled'),
(105, 10001, '2025-06-10', '2025-06-12', 800.00, 'confirmed'),

-- Extra bookings
(106, 10001, '2025-07-01', '2025-07-03', 600.00, 'confirmed'),
(107, 10009, '2025-07-10', '2025-07-12', 500.00, 'pending'),
(108, 10003, '2025-08-01', '2025-08-04', 750.00, 'confirmed'),
(109, 10010, '2025-08-12', '2025-08-15', 1260.00, 'confirmed'),
(110, 10012, '2025-09-01', '2025-09-05', 3000.00, 'pending'),
(106, 10014, '2025-09-10', '2025-09-12', 600.00, 'canceled'),
(111, 10001, '2025-09-20', '2025-09-22', 400.00, 'confirmed');

-- =======================
-- PAYMENTS
-- =======================
INSERT INTO payment (booking_id, amount, payment_method)
VALUES
(11, 700.00, 'credit_card'),
(12, 2000.00, 'paypal'),
(14, 540.00, 'stripe'),
(16, 800.00, 'credit_card'),

-- Extra payments
(17, 600.00, 'paypal'),
(19, 750.00, 'credit_card'),
(20, 1260.00, 'stripe'),
(22, 400.00, 'stripe'),
(18, 500.00, 'paypal');

-- =======================
-- REVIEWS
-- =======================
INSERT INTO review (property_id, user_id, rating, comment)
VALUES
(101, 10001, 5, 'Amazing view! Highly recommended.'),
(102, 10003, 4, 'Very calm and quiet place.'),
(103, 10001, 5, 'Perfect vacation house!'),
(104, 10005, 3, 'Good location but a bit noisy.'),
(101, 10003, 4, 'Nice apartment, would book again.'),

-- Extra reviews
(106, 10001, 5, 'Absolutely wonderful place!'),
(107, 10009, 4, 'Nice experience, very clean.'),
(108, 10003, 3, 'Good but overpriced.'),
(109, 10010, 5, 'Amazing villa, great service!'),
(110, 10012, 4, 'Penthouse was luxurious.'),
(111, 10001, 2, 'Not what I expected.'),
(107, 10005, 5, 'Loved it! Will return.');

-- =======================
-- MESSAGES
-- =======================
INSERT INTO message (sender_id, recipient_id, message_body)
VALUES
(10001, 10002, 'Hello, is the Sea View Apartment available?'),
(10002, 10001, 'Yes, it is available.'),
(10003, 10004, 'Is there parking at Hilltop Lodge?'),
(10004, 10003, 'Yes, free parking is available.'),
(10005, 10006, 'I want to book the Beach House.'),

-- Extra messages
(10009, 10004, 'Hello, how far is the Cultural Home from the main road?'),
(10004, 10009, 'It is a 5-minute walk from the main road.'),
(10001, 10012, 'Is the Penthouse available in September?'),
(10012, 10001, 'Yes, it is available.'),
(10003, 10008, 'Is there WiFi at the Lake House?'),
(10008, 10003, 'Yes, WiFi is available.'),
(10010, 10011, 'Is the Harbour Apartment furnished?');
