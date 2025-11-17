USE airbnb;

-- =======================
-- USERS
-- =======================
INSERT INTO user (first_name, last_name, email, password_hash, phone_number, role)
VALUES
('John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '+233201234567', 'guest'),
('Mary', 'Smith', 'mary.smith@example.com', 'hashedpassword2', '+233205678901', 'host'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashedpassword3', '+233209876543', 'guest'),
('Peter', 'Brown', 'peter.brown@example.com', 'hashedpassword4', '+233207654321', 'host');

-- =======================
-- PROPERTIES
-- =======================
INSERT INTO property (host_id, name, description, location, price_per_night)
VALUES
((SELECT user_id FROM user WHERE email='mary.smith@example.com'), 
 'Cozy Beach House', 'A beautiful house near the beach with 3 bedrooms.', 'Prampram, Ghana', 120.00),

((SELECT user_id FROM user WHERE email='peter.brown@example.com'), 
 'Modern Apartment', 'A modern apartment in the city center with 2 bedrooms.', 'Accra, Ghana', 80.00);

-- =======================
-- BOOKINGS
-- =======================
INSERT INTO booking (property_id, user_id, start_date, end_date, total_price, status)
VALUES
((SELECT property_id FROM property WHERE name='Cozy Beach House'), 
 (SELECT user_id FROM user WHERE email='john.doe@example.com'), 
 '2025-12-20', '2025-12-25', 600.00, 'confirmed'),

((SELECT property_id FROM property WHERE name='Modern Apartment'), 
 (SELECT user_id FROM user WHERE email='alice.johnson@example.com'), 
 '2025-12-24', '2025-12-26', 160.00, 'pending');

-- =======================
-- PAYMENTS
-- =======================
INSERT INTO payment (booking_id, amount, payment_method)
VALUES
((SELECT booking_id FROM booking WHERE user_id=(SELECT user_id FROM user WHERE email='john.doe@example.com') 
     AND property_id=(SELECT property_id FROM property WHERE name='Cozy Beach House')), 
 600.00, 'credit_card');

-- =======================
-- REVIEWS
-- =======================
INSERT INTO review (property_id, user_id, rating, comment)
VALUES
((SELECT property_id FROM property WHERE name='Cozy Beach House'), 
 (SELECT user_id FROM user WHERE email='john.doe@example.com'), 
 5, 'Amazing stay! The house was clean and the view was incredible.'),

((SELECT property_id FROM property WHERE name='Modern Apartment'), 
 (SELECT user_id FROM user WHERE email='alice.johnson@example.com'), 
 4, 'Comfortable apartment, but a bit noisy at night.');

-- =======================
-- MESSAGES
-- =======================
INSERT INTO message (sender_id, recipient_id, message_body)
VALUES
((SELECT user_id FROM user WHERE email='john.doe@example.com'), 
 (SELECT user_id FROM user WHERE email='mary.smith@example.com'), 
 'Hello! I would like to confirm my booking.'),

((SELECT user_id FROM user WHERE email='mary.smith@example.com'), 
 (SELECT user_id FROM user WHERE email='john.doe@example.com'), 
 'Hi John! Your booking is confirmed.');
